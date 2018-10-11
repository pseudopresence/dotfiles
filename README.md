# My dotfiles - config notes

## iTerm2

'Chalkboard' theme for ANSI colors.
14pt Fura Code Light Nerd Font Complete.

## Gnome

Install gnome-tweaks to be able to set monospace font systemwide.
11pt Fura Code Light Nerd Font Complete.
Theme: Adwaita-dark

## tmux

TODO

## bspwm

Ah man, okay, so this needs:

sxhkd: for hotkeys
feh: for wallpaper
compton: for compositing
TODO enable fading out of inactive window - and if it works, turn off the fading in urxvt!
kupfer: for launching, has icons which I want, can be themed by gtk?
has some custom property names?

TODO: get a good gtk dark theme - I have an example of a good one, the setup with the red bar
on the left of windows, in a tab on my macbook from a /r/unixporn post in the top of 'workflow'
tagged posts.
TODO: support for suspend (systemctl suspend, and look into 'hybrid suspend')
`systemctl suspend` to sleep
`sudo systemctl hybrid-sleep` to save state to disk (in case of power loss) but then sleep for fast resume
TODO: lockscreen, that shows after resume from suspend
TODO: configure kupfer and bspwm/sxhkd keyboard shortcuts into something sensible
TODO: polybar
TODO: kupfer launches from my bspwmrc but I can't close it with esc? have to quit with mouse?
TODO: weird effect with line gaps or something? Could be compton redraw/sync settings, could be urxvt?
TODO: clickable urls that only appear when holding Ctrl?
TODO: figure out how to copy and paste... copy from terminal to paste into browser not working,
not sure which part, or how many clipboards I have around. IDEA: bind M-c, M-v as copy and
paste in terminal, so it doesn't interfere with Ctrl-C. Need to change M-c binding in sxhkdrc.
TODO: none of the laptop media buttons work; want audio and brightness to work at minimum
NOT WORKING: xbacklight -inc [percentage], xbacklight -dec [percentage]
NOT VIABLE EXCEPT IN A PINCH:  xrandr --output eDP-1 --brightness 0.8
Can look into 'light' app instead, or dive into driver/forum hell to find the problem...
DONE: amixer for audio commands
TODO focus-follows-mouse or focus-on-click...
TODO change trackpoint acceleration

## urxvt

DONE set ANSI Colors as the macOS 'Chalkboard' set:

Regular:
Black   000000
Red     cf8784
Green   82cb85
Yellow  cdcc84
Blue    8688ce
Magenta cf8acd
Cyan    82ccce
White   e0e0e0

Bright:
Black   414141
Red     e2b9b8
Green   b7e0b8
Yellow  e1e0b8
Blue    b8bae2
Magenta e2bae1
Cyan    b7e0e2
White   feffff

TODO set font as FuraCode Nerd Font.

https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/FiraCode

Get Bold, Light, Medium, Regular and Retina, complete/ versions, OTF format, Mono.

## zsh



## oh-my-zsh

Install to ~/.oh-my-zsh
Symlink ~/.oh-my-zsh/custom/ys-fib.zsh-theme to $HOME/.ys-fib.zsh-theme


## vim

TODO how to install/refresh plugins?
TODO how to get the correct font?
