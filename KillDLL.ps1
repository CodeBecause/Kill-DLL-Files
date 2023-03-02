#This PowerShell is going to Force Stop DLLs

#First, specify the name of the DLL that needs to be stoped!
$dllName = "test.dll"

#Second, get the process id of the process that is using the DLL
$processId = Get-Process | Where-Object {$_.Modules.ModuleName -contains $dllName} | Select-Object -ExpandProperty Id 

#Third and final step...Kill it...Kill the process using the DLL
Stop-Process -Id $processId -Force

#That is it...It is not recommended to Force Stop any DLL but if you must this should do the trick!