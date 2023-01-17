function ConvertTo-Punycode {
	param (
		[string]$String
	)
	$idn = [System.Globalization.IdnMapping]::new()
	return $idn.GetAscii($String)
}

function ConvertFrom-Punycode {
	param (
		[string]$String
	)
	$idn = [System.Globalization.IdnMapping]::new()
	return $idn.GetUnicode($String)
}

Export-ModuleMember -Function @('ConvertTo-Punycode', 'ConvertFrom-Punycode')
