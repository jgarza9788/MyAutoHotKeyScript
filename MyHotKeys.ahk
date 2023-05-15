
#SingleInstance force 
; #Warn  ; Enable warnings to assist with detecting common errors.
;SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
;SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; for more info ... https://autohotkey.com/docs/AutoHotkey.htm

; modifier keys
; # - Windows
; ! - Alt
; ^ - Control
; + - Shift
; & - An ampersand may be used between any two keys or mouse buttons to combine them into a custom hotkey.

;https://www.autohotkey.com/docs/commands/_InstallKeybdHook.htm
;#InstallKeybdHook


;; in OneCommander Ctrl+R is rename
If WinExist("ahk_EXE OneCommander.exe") 
{
    ^R:: Send "{F2}"
    return
}


; Quit an Program
#Q:: Send "!{F4}"

;disbale LockKeys
;Set Lock keys permanently
SetNumlockState "AlwaysOn"
SetCapsLockState "AlwaysOff"
SetScrollLockState "AlwaysOff"

;Turn Caps Lock into a Shift key
Capslock::+

; Paste in CMD
HotIfWinActive "ahk_class ConsoleWindowClass"
Hotkey "^V",SendInput "{Raw}%clipboard%"

; **************************

; ******personal info******

;@@ => my gmail    
:*:@@::  send "jgarza9788@gmail.com"

;@# => my number
:*:@#::  send "8182510647"





