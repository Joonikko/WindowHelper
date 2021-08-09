Gui, Show, w550 h200, WindowHelper
Gui, Color, white
Gui, Add, Checkbox, y20 x475 gSubmitValues vIsEnabled Checked, Enabled
Gui, Font, s10, Courier New
Gui, Add, Text,xm y10, Hotkeys
Gui, Add, Text,xm y+0.5, Alt + c              Center window
Gui, Add, Text,xm y+0.5, Alt + s              Save window size
Gui, Add, Text,xm y+0.5, Alt + a              Restore window size
Gui, Add, Text,xm y+0.5, Alt + 1              Move window to saved cursor position
Gui, Add, Text,xm y+0.5, Alt + 2              Stagger window
Gui, Add, Text,xm y+0.5, Alt + 3              Save current cursor position
Gui, Add, Text,xm y+0.5, Alt + tilde          Set next window in application to active
Gui, Add, Text,xm y+0.5, Alt + shift + tilde  Set previous window in application to active
Gui, Add, Text,xm y+0.5, Alt + right click    Alt-drag window resize
Gui, Add, Text,xm y+0.5, Alt + left click     Alt-drag window move
Gui, Submit, NoHide

SubmitValues:
    Gui, Submit, NoHide
return