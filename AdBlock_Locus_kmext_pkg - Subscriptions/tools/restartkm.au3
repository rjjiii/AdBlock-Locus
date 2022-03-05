; AutoIt Version: 3.0
; Language:       English
; Platform:       Win9x/NT
; Author:         yannis kargas
; Script Function:   restarts k-meleon

#NoTrayIcon
#Include <Misc.au3>

If _Singleton("restartkm", 0)=0 Then
	Exit
EndIf

if $cmdline[0]=0 then
exit
endif

; close km(non-force)
if processexists("loader.exe") then
restartloader()
else
restartnormal()
endif

func restartnormal()
processwaitclose("k-meleon.exe", 2)
ProcessClose("k-meleon.exe")
Run($CmdLine[1])
exit
endfunc

func restartloader()
$kmLoader=(stringtrimright(@scriptdir,6) & "\loader.exe")
$prefspath=($CmdLine[2] & "\prefs.js")
$cleanclose=("user_pref" & "(" &"""" & "kmeleon.plugins.sessions.cleanShutdown" & """" & "," & " true" & ");")
ProcessClose("loader.exe")
sleep(40)
ProcessClose("k-meleon.exe")
processwaitclose("k-meleon.exe", 2)
FileWriteLine($prefspath, $cleanclose)
sleep(22)
Run($CmdLine[1])
processwait("k-meleon.exe", 11)
sleep(1444)
Run($kmLoader)
_RefreshSystemTray(1000)
endfunc

Func _RefreshSystemTray($nDelay = 1000)
; Save Opt settings
     Local $oldMatchMode = Opt("WinTitleMatchMode", 4)
     Local $oldChildMode = Opt("WinSearchChildren", 1)
     Local $error = 0
     Do; Pseudo loop
         Local $hWnd = WinGetHandle("classname=TrayNotifyWnd")
         If @error Then
             $error = 1
             ExitLoop
         EndIf
         Local $hControl = ControlGetHandle($hWnd, "", "Button1")
     ; We're on XP and the Hide Inactive Icons button is there, so expand it
         If $hControl <> "" And ControlCommand($hWnd, "", $hControl, "IsVisible") Then
             ControlClick($hWnd, "", $hControl)
             Sleep($nDelay)
         EndIf
         Local $posStart = MouseGetPos()
         Local $posWin = WinGetPos($hWnd)    
         Local $y = $posWin[1]
         While $y < $posWin[3] + $posWin[1]
             Local $x = $posWin[0]
             While $x < $posWin[2] + $posWin[0]
                 DllCall("user32.dll", "int", "SetCursorPos", "int", $x, "int", $y)
                 If @error Then
                     $error = 2
                     ExitLoop 3; Jump out of While/While/Do
                 EndIf
                 $x = $x + 8
             WEnd
             $y = $y + 8
         WEnd
         DllCall("user32.dll", "int", "SetCursorPos", "int", $posStart[0], "int", $posStart[1])
     ; We're on XP so we need to hide the inactive icons again.
         If $hControl <> "" And ControlCommand($hWnd, "", $hControl, "IsVisible") Then
             ControlClick($hWnd, "", $hControl)
         EndIf
     Until 1
; Restore Opt settings
     Opt("WinTitleMatchMode", $oldMatchMode)
     Opt("WinSearchChildren", $oldChildMode)
     SetError($error)
     exit
EndFunc