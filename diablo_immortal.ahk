#Persistent
#SingleInstance force

SetTitleMatchMode, 2  ; So partial match works
gameWindowTitle := "Diablo Immortal"

SetTimer, Press1234, 1000
SetTimer, PressQ, 5000

isRunning := false

F8:: ; Toggle script on/off
isRunning := !isRunning
if (isRunning) {
    ControlSend,, {Space down}, %gameWindowTitle%
    ToolTip, Script Active
} else {
    ControlSend,, {Space up}, %gameWindowTitle%
    ToolTip, Script Paused
}
SetTimer, RemoveToolTip, -1000
return

Press1234:
if (isRunning) {
    ControlSend,, 1, %gameWindowTitle%
    Sleep, 50
    ControlSend,, 2, %gameWindowTitle%
    Sleep, 50
    ControlSend,, 3, %gameWindowTitle%
    Sleep, 50
    ControlSend,, 4, %gameWindowTitle%
}
return

PressQ:
if (isRunning) {
    ControlSend,, q, %gameWindowTitle%
}
return

RemoveToolTip:
ToolTip
return
