# .ExternalHelp psPAS-help.xml
function Remove-PASUser {
	[CmdletBinding(SupportsShouldProcess)]
	param(

		[parameter(
			Mandatory = $true,
			ValueFromPipelinebyPropertyName = $true
		)]
		[int]$id
	)

	begin {
		Assert-VersionRequirement -RequiredVersion 11.1
	}#begin

	process {

		$URI = "$($psPASSession.BaseURI)/api/Users/$id"
		$User = $id

		if ($PSCmdlet.ShouldProcess($User, 'Delete User')) {

			#send request to web service
			Invoke-PASRestMethod -Uri $URI -Method DELETE

		}

	}#process

	end { }#end

}