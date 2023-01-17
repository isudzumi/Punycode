function ConvertTo-Punycode {
	param (
		[string]$String
	)
	$idn = [System.Globalization.IdnMapping]::new()
	$idn.GetAscii($String)
}

Export-ModuleMember -Function ConvertTo-Punycode