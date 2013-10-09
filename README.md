# OSIV - On Screen Image Viewer
This script will allow you to easily show images over full screen programs like games,
while keeping the ability to play.

## Features

- **Click through** will allow you to play without risk to get out focus from your game window
- **Resize image** will allow you to easily resize window to resize the image too
- **Borderless** double clicking on the image will activate borderless click-through mode

## Usage

Simply drag an image over the exe file (or a shortcut).  
You can just resize the image to the size you want, double click on it to go into *borderless mode*
which will allow you to play while clicking through the window (so no focus issues).

To exit *borderless mode* select OSIV on your taskbar (just click it with left mouse button or alt-tab to it)
and press ESC.

You can change the opacity of the window used in *borderless mode* in the settings.ini file

### Full screen game support

Full screen game is not supported, you have to use Windowed mode or Windowed Borderless mode which is
usually available in all moderns games. Otherwise, you can try
[winexp](http://www.nirsoft.net/utils/winexp.html "winexp") which allows you to make any windowed program,
also borderless and same screen size (which emulates full screen).

Notice that usually Windowed Borderless mode behaves like Full Screen mode, so this shouldn't be an issue
in any case.

### Third party software?

This software shouldn't be considered third party software because it doesn't interact with any other
software in the operative system. It doesn't perform macros, analyze memory or anything similar.  
It should be considered as any other background software you have (yea, much like the browser), it's just
showing the window on top of your game (which is a window, it's not drawing anything **inside** the game
itself).

## Download

You can just download the compiled version contained in the
[osiv.zip](https://github.com/Fire-Dragon-DoL/osiv/blob/master/osiv.zip?raw=true "OSIV redistributable") file

## Demo

You can see how the script works here, without borderless:
![OSIV without borderless mode](https://github.com/Fire-Dragon-DoL/osiv/blob/master/osiv_no_borderless.jpg?raw=true "OSIV without borderless mode")

Here you can find the borderless mode on:
![OSIV borderless mode](https://github.com/Fire-Dragon-DoL/osiv/blob/master/osiv_borderless.jpg?raw=true "OSIV borderless mode")

## TODO

- Save window position on a per-image basis
- Multiple file opening (dragging multiple images should open multiple instances of the script)
- Adding a menu to change opacity settings (on a per-image basis with a default one), while keeping
the "portability" of the script, so no requirement to install (and possibly do not store anything in
user folder)

## License

- MIT License, see the LICENSE file
