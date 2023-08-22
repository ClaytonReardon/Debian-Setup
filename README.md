# Debian-Setup
A bash post-install script to configure Debian how I like it. Meant to be used from a TTY install with no Desktop Enviroment, but should work either way.

It sets up an i3 window manager enviroment with polybar, and [Ly](https://github.com/fairyglade/ly) as the display manager.

The script will give the options to install and enable the [Ly] (https://github.com/fairyglade/ly) display manager (default), GDM3 (what GNOME uses), SDDM (what KDE uses), or LightDM (what basically everything else uses.) Do note that GDM3 and SDDM have quite a few depenecies. LightDM is much 'lighter'. The Ly option will build Ly from source and then enable it.

It will then give the option to install some Nerd Fonts, you can choose either all of them, some of them, or the minimal amount required. Do note that the "all" option will take quite some time to download, and it installs around 2GB worth of fonts.

It will also give the option to install [Sublime Text](https://www.sublimetext.com), [Brave Browser](https://brave.com), [Obsidian](https://obsidian.md), [VSCodium](https://vscodium.com), [VSCode](https://code.visualstudio.com), [Shell Color Scripts](https://gitlab.com/dwt1/shell-color-scripts), [Zsh-Syntax-Highlighting](https://github.com/zsh-users/zsh-syntax-highlighting), and [Zsh-Autosuggestions](https://github.com/zsh-users/zsh-autosuggestions). 

It will then configure all these programs, import my .zshrc, and set the default user shell to Zsh.

I mainly made this script to have a good time practicing some bash scripting.
