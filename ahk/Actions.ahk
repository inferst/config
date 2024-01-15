#Requires AutoHotkey v2.0

DoAction(action)
{
	body := '{"action": {"name": "' action '"}}'

	oHttp := ComObject("WinHttp.Winhttprequest.5.1")
	oHttp.open("POST","http://127.0.0.1:7474/DoAction")
	oHttp.send(body)
}

Numpad0::DoAction("Switch to Pause Scene")
Numpad1::DoAction("Switch to Desktop Scene")
Numpad2::DoAction("Switch to Chat Scene")
Numpad3::DoAction("Switch to Camera Scene")
Numpad9::DoAction("Switch to End Scene")

NumpadDot::DoAction("Toggle Desktop Blur")

NumpadAdd::DoAction("Browser Volume Up")
NumpadSub::DoAction("Browser Volume Down")