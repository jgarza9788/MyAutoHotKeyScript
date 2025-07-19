
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

;;https://www.autohotkey.com/docs/commands/_InstallKeybdHook.htm
;InstallKeybdHook "Install"


;;; in explorer map space to Ctrl+Space
;If WinExist("ahk_EXE explorer.exe")
;{
;    Space::Send "^{Space}"
;}
;else
;{
;    Space :: Send "{Space}"
;}

;; in OneCommander Ctrl+R is rename
;If WinExist("ahk_EXE OneCommander.exe") 
;{
;    ^R:: Send "{F2}"
;}

#IfWinActive ahk_exe OneCommander.exe
^R::Send {F2}
#IfWinActive

;show and hide the taskbar 

;old ones...
;F6:: Run ".\WTB_hide.cmd"
;F7:: Run ".\WTB_show.cmd"

!PgUp::
Run, % A_ScriptDir . "\WTB_show.cmd", , Hide
return

!PgDn::
Run, % A_ScriptDir . "\WTB_hide.cmd", , Hide
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; ***Windows/App Controls***

; display control 
; alt + numpad1 == one display (clone)
; alt + numpad2 == two display (extend)

;old ones...
;!Numpad1::  Run ".\display_clone.cmd"
;!Numpad2::  Run ".\display_extend.cmd"

!Numpad1::   
Run, % A_ScriptDir . "\display_clone.cmd", , Hide
return

!Numpad2::   
Run, % A_ScriptDir . "\display_extend.cmd", , Hide
return


; Quit an Program
#Q:: Send "!{F4}"

;; remap windows key to search 
;; - don't override ... messes up middle mouse buttons
; LWin:: Send "!{space}"      

;disbale LockKeys
;Set Lock keys permanently
;SetNumlockState "AlwaysOn"
SetCapsLockState, AlwaysOff
SetScrollLockState, AlwaysOff

;Turn Caps Lock into a Shift key
Capslock::+


;; Everything!
#s::Run, "C:\Program Files\Everything\Everything.exe"

; **************************

;; helldivers2 Hotkeys
;; this is not working 
;;If WinExist("ahk_EXE helldivers2.exe") 
;;{
;;    ; reinforcements
;;    Numpad0:: Send("^wsdaw^")
;;
;;    ; resupply
;;    Numpad1:: Send("^sswd^")
;;
;;    ; MG Sentry
;;    Numpad2:: Send("^swddw^")
;;
;;    ; Gatting Sentry
;;    Numpad3:: Send("^swda^")
;; 
;;}



; ******personal info******

;@@ => my gmail    
:*:@@::jgarza9788@gmail.com

;@# => my number
:*:@#::8182510647





