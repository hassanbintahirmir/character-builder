$cer = Join-Path $PSScriptRoot "CharacterBuilder.cer"
$cert = New-Object System.Security.Cryptography.X509Certificates.X509Certificate2($cer)

foreach ($storeName in @("TrustedPublisher","Root")) {
    $store = New-Object System.Security.Cryptography.X509Certificates.X509Store($storeName, "LocalMachine")
    $store.Open("ReadWrite")
    $store.Add($cert)
    $store.Close()
}
Write-Host "Done. Now run CharacterBuilder-Setup.exe"