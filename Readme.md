# WindowHelper

This is a small Autohotkey script to help with window management in Microsoft Windows. The main features include saving window size and being able to apply that size windows, moving windows with hotkeys and helping with stacking & staggering windows by moving them a little bit to towards bottom right.


## Features:

- **Window resizing and moving**
    - Save active window size
    - Apply saved window size
    - Save current mouse location
    - Move window to saved mouse location
    - Move window to back
    - Stagger window
- **Alt-drag**: resize and move windows with alt + L/R mouse buttons
- **WindowSwitcher**
    - Activate next window in current application
    - Activate previous window in current application


## Hotkeys

Hotkeys can be edited easily in src\Hotkeys.ahk

```
Alt + c              Center window
Alt + s              Save window size
Alt + a              Restore window size
Alt + 1              Move window to saved cursor position
Alt + 2              Stagger window
Alt + 3              Save current cursor position
Alt + tilde          Set next window in application to active
Alt + shift + tilde  Set previous window in application to active
Alt + right click    Alt-drag window resize
Alt + left click     Alt-drag window move
```