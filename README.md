# LutrisView

**A simple bigpicture like mode for lutris.**

Browse lutris games in full screen using either controller, keyboard or mouse.
Use your computer like a video game console!

## Screenshots

![lutrisview-by-last-played](https://github.com/user-attachments/assets/70b2363a-61c4-42f6-8e31-3a89580cdee6)
![lutrisview-by-name](https://github.com/user-attachments/assets/fef32b92-a800-4b37-b87f-4023c8f4d705)
![lutrisview-by-playtime](https://github.com/user-attachments/assets/4b0807d6-9517-4a7e-87d8-4d03105c1cb7)

https://github.com/user-attachments/assets/ece60e75-2ef5-430c-b3cc-86ce01fed689

## Keybindings

### Controllers

- A: launch selected game
- Long B: exit lutrisview
- X/LB: circle panes backward
- Y/RB: circle panes forward
- Joystick Left: circle game list backward
- Joystick Right: circle game list backward

### Keyboard

- Enter: launch selected game
- Long Escape: exit lutrisview
- Up: Circle panes backward
- Down: Circle panes forward
- Left: circle game list backward
- Right: circle game list backward

### Mouse

- Click on selected game image: launch selected game
- Right click: circle panes forward
- Scroll up: circle game list forward
- Scroll down: circle game list backward


## Install

Everything here supposes 3 preconditions
1. Lutris already installed with games already installed inside of it.
2. Lutris can be called from command line, check with `lutris --help`

### The easy command line way 
- On fedora: `sudo dnf install python3-pygame curl`
- On debian and derived (ubuntu, mint): `sudo apt install python3-pygame curl`
- Other install pygame with full sdl2 support this should be sufficient

Then download and install:
```bash
mkdir -p "$HOME/.local/share/icons/hicolor/scalable/apps/" && curl -o "$HOME/.local/share/icons/hicolor/scalable/apps/lutrisview.svg" https://raw.githubusercontent.com/redmie/lutrisview/main/lutrisview.svg && mkdir -p "$HOME/.local/bin" && curl -o "$HOME/.local/bin/lutrisview" https://raw.githubusercontent.com/redmie/lutrisview/main/lutrisview && chmod 755 "$HOME/.local/bin/lutrisview" && mkdir -p "$HOME/.local/share/applications" && curl -o "$HOME/.local/share/applications/lutrisview.desktop" https://raw.githubusercontent.com/redmie/lutrisview/main/lutrisview.desktop
```

A new application named LutrisView should now be available in your application launcher.

You can run these commands again to update.

Make this application run on session open and combine this with autologin for a console like experience.

### The git way

0. Ensure you have pygame installed
1. Clone the repository
2. Run `install.sh`
3. Enjoy!

## Improve it

PRs are welcome!

Prototyped on latest fedora (40 at this time).
Lutrisview uses lutris cli interface to fetch game list and launch them.

- Install dependencies: `dnf install python3-pygame pygame-devel black`

Use an editor that is `.editorconfig` aware.

Run `black` on python file before commit.

### Help needed

- Exit/restart/sleep menu
- One click installer
- Handle alternative lutris cache locations for coverart
- More translations
- Provide rpm and deb packages
- Lutris flatpak compatibility

## License

Licensed under either of <a href="LICENSE-APACHE">Apache License, Version
2.0</a> or <a href="LICENSE-MIT">MIT license</a> at your option.

Unless you explicitly state otherwise, any contribution intentionally submitted
for inclusion in this code base, as defined in the Apache-2.0 license, shall
be dual licensed as above, without any additional terms or conditions.
