Set objFS = CreateObject("Scripting.FileSystemObject")
Set objArgs = WScript.Arguments
str1 = getCommandOutput("E:\Program Files\MySQL\MySQL Server 5.5\bin\mysql.exe -V")

WScript.Echo str1

Function getCommandOutput(theCommand)
Dim objShell, objCmdExec
Set objShell = CreateObject("WScript.Shell")
Set objCmdExec = objshell.exec(thecommand)
getCommandOutput = objCmdExec.StdOut.ReadAll
end Function
