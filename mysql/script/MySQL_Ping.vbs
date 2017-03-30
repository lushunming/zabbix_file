Set objFS = CreateObject("Scripting.FileSystemObject")
Set objArgs = WScript.Arguments
str1 = getCommandOutput("E:\Program Files\MySQL\MySQL Server 5.5\bin\mysqladmin.exe -uroot -pvortex --port=3306 ping")

If Instr(str1,"alive") > 0 Then
WScript.Echo 1
Else
WScript.Echo 0
End If

Function getCommandOutput(theCommand)

Dim objShell, objCmdExec
Set objShell = CreateObject("WScript.Shell")
Set objCmdExec = objshell.exec(thecommand)
getCommandOutput = objCmdExec.StdOut.ReadAll

end Function
