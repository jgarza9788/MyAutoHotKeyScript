
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
InstallKeybdHook "Install"


;; in OneCommander Ctrl+R is rename
If WinExist("ahk_EXE OneCommander.exe") 
{
    ^R:: Send "{F2}"
}

; ***Windows/App Controls***

; display control 
; alt + numpad1 == one display (clone)
; alt + numpad2 == two display (extend)
!Numpad1::  Run ".\display_clone.cmd"
!Numpad2::  Run ".\display_extend.cmd"
    
; Quit an Program
#Q:: Send "!{F4}"

;; remap windows key to search 
;; - don't override ... messes up middle mouse buttons
; LWin:: Send "!{space}"      

;disbale LockKeys
;Set Lock keys permanently
SetNumlockState "AlwaysOn"
SetCapsLockState "AlwaysOff"
SetScrollLockState "AlwaysOff"

;Turn Caps Lock into a Shift key
Capslock::+



; **************************

; ******personal info******

;@@ => my gmail    
:*:@@::  send "jgarza9788@gmail.com"

;@# => my number
:*:@#::  send "8182510647"





