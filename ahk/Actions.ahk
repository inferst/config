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
Numpad2::DoAction("Switch to Camera Scene")
Numpad3::DoAction("Switch to Game Scene")
Numpad9::DoAction("Switch to End Scene")

NumpadDot::DoAction("Toggle Desktop Blur")

NumpadAdd::DoAction("Browser Volume Up")
NumpadSub::DoAction("Browser Volume Down")

NumpadEnter::DoAction("Toggle Camera")

#=::resizeWindow(WinGetID("A")) ; [Win]+[=]

resizeWindow(window) {
    WinGetPos , , &W, &H, window
    width := InputBox("Width: " W "px", "Resize", "w100 h100", W - Mod(W, 4))
    if (width.Result = "OK") {
        height := InputBox("Height: " H "px", "Resize", "w100 h100", H - Mod(H, 4))
        if (height.Result = "OK") {
            WinMove , , width.Value, height.Value, window
        }
    }
    return
}
