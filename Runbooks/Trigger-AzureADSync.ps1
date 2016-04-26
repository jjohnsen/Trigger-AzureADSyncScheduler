
$AADSServerName = Get-AutomationVariable -Name 'AADSServerName'

$credential = Get-AutomationPSCredential -Name 'AAHybridWorkerSvcAccount'

$session = New-PSSession -ComputerName $AADSServerName -Credential $credential

Import-Module ADSync -PSSession $session

Start-ADSyncSyncCycle -PolicyType delta