If WScript.Arguments.Count >= 1 Then
    Dim ShellApp, Command, CurrentDirectory
    Set ShellApp = CreateObject("Shell.Application")
    
    ' Get the current directory
    CurrentDirectory = CreateObject("WScript.Shell").CurrentDirectory
    
    ' Reconstruct the full command to include all arguments
    Command = ""
    For Each arg In WScript.Arguments
        Command = Command & arg & " "
    Next

    ' Trim the trailing space
    Command = Trim(Command)

    ' Execute the command in an elevated Command Prompt, and change directory to CurrentDirectory
    ShellApp.ShellExecute "cmd.exe", "/K cd /d " & CurrentDirectory & " & " & Command, "", "runas"
End If

