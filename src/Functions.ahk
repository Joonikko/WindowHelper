resizeWindow(x,y) {
	WinMove,A,,,,x,y
}

centerWindow() {
	WinExist("A")
	WinGetPos, X, Y, sizeX, sizeY
	WinMove, Floor((A_ScreenWidth/2)-(sizeX/2)), Floor((A_ScreenHeight/2)-(sizeY/2))
}

saveWindowSize() {
	global windowW
	global windowH
	WinExist("A")
	WinGetPos,,, windowW, windowH
}

resizeWindowToSavedSize() {
	global windowW
	global windowH
	resizeWindow(windowW, windowH)
}

saveCursorPosition() {
	global mouseX
	global mouseY
	MouseGetPos, mouseX, mouseY
}

moveWindowToSavedCursorPosition() {
	global mouseX
	global mouseY
	WinExist("A")
	WinMove, mouseX, mouseY
}

staggerWindow() {
	WinExist("A")
	WinGetPos, X, Y, sizeX, sizeY
	WinMove, X+25, Y+30
}

SetCurrentProgram() {
	global
	local ActiveProgram
	local A
	WinGet ActiveProgram, ProcessName, A
	if (ActiveProgram <> CurrentProgram) {
		if (ActiveProgram = "Explorer.EXE")
		{
			WinGet, ProgramArray, list, ahk_class CabinetWClass
		}
		else
		{
			WinGet, ProgramArray, list, ahk_exe %ActiveProgram%
		}
		CurrentProgram := ActiveProgram
		ProgramCursor := 1
	}
}

ResetCurrentProgram() {
	global
	if (!GetKeyState("Alt", "P")) {
		SetTimer, ResetCurrentProgram, Off
		CurrentProgram := ""
	}
}

SwitchToProgramWindow() {
	global
	local CursorID := ProgramArray%ProgramCursor%
	WinActivate, ahk_id %CursorID%
	SetTimer, ResetCurrentProgram, 100
}

NextProgramWindow() {
	global
	if (ProgramArray > 1) {
		ProgramCursor := ProgramCursor + 1
		if (ProgramCursor > ProgramArray) {
			ProgramCursor := 1
		}
		SwitchToProgramWindow()
	}
}

PrevProgramWindow() {
	global
	if (ProgramArray > 1) {
		ProgramCursor := ProgramCursor - 1
		if (ProgramCursor < 1) {
			ProgramCursor := ProgramArray
		}
		SwitchToProgramWindow()
	}
}