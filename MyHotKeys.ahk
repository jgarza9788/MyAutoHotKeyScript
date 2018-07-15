#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; for more info ... https://autohotkey.com/docs/AutoHotkey.htm

; modifier keys
; # - Windows
; ! - Alt
; ^ - Control
; + - Shift
; & - An ampersand may be used between any two keys or mouse buttons to combine them into a custom hotkey.


; ***Windows/App Controls***

; Quit an Program
#Q::
    Send !{F4}
    ;ExitApp
return

;TaskView
F4::
    Send #{Tab} ;show taskview
return

;disbale LockKeys
; Set Lock keys permanently
SetNumlockState, AlwaysOn
SetCapsLockState, AlwaysOff
SetScrollLockState, AlwaysOff
return

; Turn Caps Lock into a Shift key
Capslock::
    +
return

; Windows Key launches search (WOX)
LWin::
    !Space
return

; WINDOWS KEY + H TOGGLES HIDDEN FILES 
#IfWinActive ahk_class ExploreWClass
#h::
#IfWinActive ahk_class CabinetWClass
#h:: 
    Send !{V}{H}{H}
return
#IfWinActive


; WINDOWS KEY + N TOGGLES Navigation
#IfWinActive ahk_class ExploreWClass
#n::
#IfWinActive ahk_class CabinetWClass
#n:: 
    Send !{V}{N}{Enter}
return
#IfWinActive

; Paste in CMD
#IfWinActive ahk_class ConsoleWindowClass
^V::
    SendInput {Raw}%clipboard%
return
#IfWinActive

; **************************


; ******Media Controls******


; ;next song
; F9::	
;     Send {Media_Next}
; return

; ;previous song
; F7::
;     Send {Media_Prev}
; return

; ;play/pause
; F8::
;     Send {Media_Play_Pause}
; return

; ;Volume
; F12::
;     Send {Volume_Up 1}  ; Raise the master volume by 1 interval (typically 5%).
; return

; F11::
;     Send {Volume_Down 1}  ; Lower the master volume by 3 intervals.
; return 

; F10::
;     Send {Volume_Mute}  ; Mute/unmute the master volume.
; return 

; **************************




