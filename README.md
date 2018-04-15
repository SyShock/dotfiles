# Manjaro Setup

### Uses:
- i3-gaps (window manager)
- polybar (top status bar)
- dunst (notifications)
- urxvt (terminal emulator)
- nvim (text editor)
- fish (terminal shell)
- feh (background manager)
- pywal (python script to generate colorschemes based on image)
- oomox (GTK custom theming)
- xrandr (configuration utility for monitors; used by the script to get monitor resolution)
- powerline (python lib for powerline characters)

### Also:
- python nvim addon
- node nvim package

(these are required for nvim, best to check-in with`:checkhealth` for more info on nvim dependencies)

##### These are the things I can think of as dependencies. There may be more that I have not listed.

---

To install the dotfiles just backup your original config files and run `cd dotfiles && ./install`

Note that the current theme uses:
- ultra flat icons orange
- hacked-aio

To keep the dotfiles minimal, these files are kept separately.
You can get them from [here](https://drive.google.com/open?id=16kIgC7qdQILu6Lw5n0Buyg2p8CGUQ9CX) and unarchive them in `~/.icons`


![Example Layout](https://i.imgur.com/jt39ePw.png)
