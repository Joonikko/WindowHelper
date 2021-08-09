#SingleInstance force
#NoEnv

SendMode Input
SetWinDelay,2
CoordMode,Mouse
OnExit, GuiClose

mouseX = 0
mouseY = 0
windowW = 500
windowH = 500

#include src\Gui.ahk
#include src\Functions.ahk

#If IsEnabled
    #include src\Hotkeys.ahk
return

GuiClose:
    ExitApp
return