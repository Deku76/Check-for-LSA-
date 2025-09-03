$LSAKey = "HKLM:\SYSTEM\CurrentControlSet\Control\Lsa"
if (Test-Path $LSAKey) {
    $LSA = Get-ItemProperty -Path $LSAKey -Name RunAsPPL -ErrorAction SilentlyContinue
    if ($LSA.RunAsPPL -eq $null) {
        Write-Host "RunAsPPL is not enabled"
    } elseif ($LSA.RunAsPPL -eq 1) {
        Write-Host "RunAsPPL is enabled"
    } elseif ($LSA.RunAsPPL -eq 2) {
        Write-Host "RunAsPPL is enabled with auditing"
    } else {
        Write-Host "RunAsPPL has unexpected value: $($LSA.RunAsPPL)"
    }
} else {
    Write-Host "LSA registry key does not exist"
}
