# .ExternalHelp psPAS-help.xml
function Get-PASSafeMember {
	[CmdletBinding(DefaultParameterSetName = 'Gen2')]
	param(
		[parameter(
			Mandatory = $true,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'Gen2'
		)]
		[parameter(
			Mandatory = $true,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'Gen2-MemberPermissions'
		)]
		[parameter(
			Mandatory = $true,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'Gen2-MemberFilter'
		)]
		[ValidateNotNullOrEmpty()]
		[string]$SafeName,

		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'Gen2-MemberFilter'
		)]
		[ValidateSet('user', 'group')]
		[string]$memberType,

		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'Gen2-MemberFilter'
		)]
		[boolean]$membershipExpired,

		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'Gen2-MemberFilter'
		)]
		[boolean]$includePredefinedUsers,

		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'Gen2-MemberFilter'
		)]
		[string]$search,

		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'Gen2-MemberFilter'
		)]
		[ValidateSet('asc', 'desc')]
		[string]$sort,

		[Alias('UserName')]
		[parameter(
			Mandatory = $true,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'Gen2-MemberPermissions'
		)]
		[ValidateNotNullOrEmpty()]
		[string]$MemberName,

		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'Gen2-MemberPermissions'
		)]
		[ValidateNotNullOrEmpty()]
		[Boolean]$useCache,

		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $false,
			ParameterSetName = 'Gen2'
		)]
		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $false,
			ParameterSetName = 'Gen2-MemberFilter'
		)]
		[int]$TimeoutSec

	)

	begin {

		Assert-VersionRequirement -RequiredVersion 12.0

		$Request = @{ }
		$Method = 'GET'
		$Limit = 25   #default if you call the API with no value

	}#begin

	process {

		switch ($PSCmdlet.ParameterSetName) {

			( { $PSItem -match '^Gen2' } ) {

				#Create URL for Gen2 API requests
				$URI = "$($psPASSession.BaseURI)/api/Safes/$($SafeName | Get-EscapedString)/Members"

			}

			'Gen2-MemberPermissions' {

				#check required version
				Assert-VersionRequirement -RequiredVersion 12.2

				#Create URL for member specific request
				$URI = "$URI/$($MemberName | Get-EscapedString)/"

				$boundParameters = $PSBoundParameters | Get-PASParameter -ParametersToKeep useCache

				#Create Query String, escaped for inclusion in request URL
				$queryString = $boundParameters | ConvertTo-QueryString

				if ($null -ne $queryString) {

					#Build URL from base URL
					$URI = "$URI`?$queryString"

				}

				break

			}

			'Gen2-MemberFilter' {

				Assert-VersionRequirement -RequiredVersion 12.1

				#Parameter to include as filter value in url
				$Parameters = [Collections.Generic.List[Object]]::New(@('memberType', 'membershipExpired', 'includePredefinedUsers'))

				#Get Parameters to include in request
				$filterParameters = $PSBoundParameters | Get-PASParameter -ParametersToKeep $Parameters
				$Parameters.AddRange(@('SafeName', 'TimeoutSec'))
				$boundParameters = $PSBoundParameters | Get-PASParameter -ParametersToRemove $Parameters
				$FilterString = $filterParameters | ConvertTo-FilterString

				if ($null -ne $FilterString) {

					$boundParameters = $boundParameters + $FilterString

				}

				#Create Query String, escaped for inclusion in request URL
				$queryString = $boundParameters | ConvertTo-QueryString

				if ($null -ne $queryString) {

					#Build URL from base URL
					$URI = "$URI`?$queryString"

				}

				$Request['TimeoutSec'] = $TimeoutSec

				break

			}

		}

		#Build Request Parameters
		$Request['URI'] = $URI
		$Request['Method'] = $Method
		$Request['WebSession'] = $psPASSession.WebSession

		#Send request to webservice
		$result = Invoke-PASRestMethod @Request

		if ($null -ne $result) {

			switch ($PSCmdlet.ParameterSetName) {

				'Gen2-MemberPermissions' {

					$Output = $result

					break

				}

				default {

					$Total = $result.Count

					if ($Total -gt 0) {

						#Set memberlist as output collection
						$Members = [Collections.Generic.List[Object]]::New(($result.value))

						#Split Request URL into baseURI & any query string value
						$URLString = $URI.Split('?')
						$URI = $URLString[0]
						$queryString = $URLString[1]

						for ( $Offset = $Limit ; $Offset -lt $Total ; $Offset += $Limit ) {

							#While more members to return, create nextLink query value
							$nextLink = "limit=$Limit&OffSet=$Offset"

							if ($null -ne $queryString) {

								#If original request contained a queryString, concatenate with nextLink value.
								$nextLink = "$queryString&$nextLink"

							}


							#Request nextLink. Add memberlist to output collection.
							$Null = $Members.AddRange((Invoke-PASRestMethod -Uri "$URI`?$nextLink" -Method GET -TimeoutSec $TimeoutSec).value)

						}

						$Output = $Members

					}

				}

			}

			$Output |
			Select-Object *, @{Name = 'UserName'; 'Expression' = { $PSItem.MemberName } } |
			Add-ObjectDetail -typename psPAS.CyberArk.Vault.Safe.Member.Gen2

		}

	}#process

	end { }#end

}