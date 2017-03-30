Set objFS = CreateObject("Scripting.FileSystemObject")
Set objArgs = WScript.Arguments
str1 = getCommandOutput("E:\Program Files\MySQL\MySQL Server 5.5\bin\mysqladmin.exe -uroot -pvortex --port=3306 extended-status")
Arg = objArgs(0)
str2 = Split(str1,"|")
For i = LBound(str2) to UBound(str2)
If Trim(str2(i)) = Arg Then 
WScript.Echo TRIM(str2(i+1))
Exit For
End If
next

Function getCommandOutput(theCommand)
Dim objShell, objCmdExec
Set objShell = CreateObject("WScript.Shell")
Set objCmdExec = objshell.exec(thecommand)
getCommandOutput = objCmdExec.StdOut.ReadAll
end Function
