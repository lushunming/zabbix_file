Set objFS = CreateObject("Scripting.FileSystemObject")
Set objArgs = WScript.Arguments
str1 = getCommandOutput("E:\vortex\redis\redis-latest(3.0.501)\redis-cli.exe -h 127.0.0.1 -p "+objArgs(0)+" -a 123456 info")
Arg = objArgs(1)

str2 = Split(str1,vbCrLf)
For i = LBound(str2) to UBound(str2)

str3 = Split(str2(i),":")



If Trim(str3(0)) = Arg   Then 
WScript.Echo TRIM(str3(1))
Exit For
End If
next

Function getCommandOutput(theCommand)
Dim objShell, objCmdExec
Set objShell = CreateObject("WScript.Shell")
Set objCmdExec = objshell.exec(thecommand)
getCommandOutput = objCmdExec.StdOut.ReadAll
end Function
