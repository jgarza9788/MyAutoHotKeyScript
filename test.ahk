;; in OneCommander Ctrl+R is rename
If WinExist("ahk_exe OneCommander.exe") 
{
    ^R::Send "{F2}"
}