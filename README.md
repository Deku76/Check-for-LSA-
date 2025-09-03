# Check-for-LSA-
# Description for LSA Protection (RunAsPPL) Check Script (LSA.ps1):
This script checks whether LSA Protection (RunAsPPL) is enabled on a Windows system by reading the RunAsPPL registry value under the key HKLM:\SYSTEM\CurrentControlSet\Control\Lsa.

If the value is not set or the registry key doesn't exist, the script reports that RunAsPPL is not enabled.

If the value is 1, it indicates that RunAsPPL is enabled.

If the value is 2, it means RunAsPPL is enabled with auditing.

For any other values, the script reports the unexpected value to help identify non-standard configurations.

This is a security hardening check because enabling RunAsPPL protects the LSASS process from credential dumping attacks.

# Description for LAPS Check Script (lapscheck.ps1):
This script verifies whether LAPS (Local Administrator Password Solution) is configured on a Windows system by checking the AdmPwdEnabled registry value under the key HKLM:\SOFTWARE\Policies\Microsoft Services\AdmPwd.

The script reports LAPS is not configured if the value is absent or null.

Reports LAPS is enabled if the value is set to 1.

Reports LAPS is disabled for any other values.

This check helps determine if the system has secure management of local admin passwords via LAPS, which reduces risks from reused or static local admin passwords.

