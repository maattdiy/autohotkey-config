; ================================================================================
; Media
; ================================================================================

#If MouseIsLeft()
WheelUp::Send {Volume_Up}
WheelDown::Send {Volume_Down}
RButton::Send {Media_Next}
LButton::
	IfWinNotExist ahk_exe Spotify.exe
	{
		Run, %A_AppData%\Spotify\Spotify.exe, , Min
		WinWaitActive, ahk_exe Spotify.exe, , 20
		WinMinimize, ahk_exe Spotify.exe
	}
	Send {Media_Play_Pause}
return
#If
