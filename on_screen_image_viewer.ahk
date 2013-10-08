#SingleInstance off

UI:
	global Title             := "OSIV - On Screen Image Viewer"
	global MainPictureWidth   = 0
	global MainPictureHeight  = 0
	global MainPictureFile    = 0
	global Opacity            = 0
	
	; Load opacity from settings
	IniRead, Opacity, %A_ScriptDir%\settings.ini, Window, Opacity, 150
	
	; Convert to correct path naming the file passed to command line
	GivenPath = %1%
    Loop %GivenPath%, 1
        LongPath = %A_LoopFileLongPath%
	MainPictureFile := LongPath
	
	; Configure window
	Gui, -AlwaysOnTop +Resize -MaximizeBox +MinimizeBox +Caption +hwndhMain	
	Menu, Tray, Icon, %A_ScriptDir%\osiv.ico,, 1
	Menu, Tray, Tip, %Title%
	
	Gui, Add, Picture, HwndhMainPicture x0 y0 AltSubmit gPictureDoubleClick vMainPicture, %MainPictureFile%
	
	; Build GUI
	Gui, Show, AutoSize Center, %Title%
	Gui, Submit, NoHide
	
	; Get MainPicture original size
	ControlGetPos, pictureX, pictureY, pictureWidth, pictureHeight,, ahk_id %hMainPicture%
	MainPictureWidth  := pictureWidth
	MainPictureHeight := pictureHeight
	
	OnMessage(WM_SIZING := 0x0214, "GuiSizing")
	Return

PictureDoubleClick:
	If (A_GuiEvent = "DoubleClick")
		OsivDisplayTop()
	Return
	
GuiEscape:
	OsivDisplayNormal()
	Return
	
GuiSize:
	GuiControl,, MainPicture, *w%A_GuiWidth% *h%A_GuiHeight% %MainPictureFile%
	Return
	
GuiClose:
	ExitApp
	
OsivDisplayTop()
{
	Gui, +AlwaysOnTop -Resize -Caption -MinimizeBox +E0x20
	WinSet, Transparent, %Opacity%, %Title%
}

OsivDisplayNormal()
{
	Gui, -AlwaysOnTop +Resize +Caption -E0x20
	WinSet, Transparent, 255, %Title%
}