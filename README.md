# Debian-Setup
A bash post-install script to configure Debian how I like it. Meant to be used from a TTY install with no Desktop Enviroment, but should work either way.

It sets up an i3 window manager enviroment with polybar. The beginning of the script will ask about installation of various software I commonly use.

The script will build, enable, and configure the [Ly]() display manager.

It will then give the option to install some Nerd Fonts, you can choose either all of them, some of them, or the minimal amount required. Do note that the "all" option will take quite some time to download, and it installs around 2GB worth of fonts.

It will also give the option to install [Sublime Text](), [Brave Browser](), [Obsidian](), [VSCodium](), [VSCode]{}, [Shell Color Scripts](), [Zsh-Syntax-Highlighting](), and [Zsh-Autosuggestions](). 

It will then configure all these programs, import my .zshrc, and set the default user shell to Zsh.

I mainly made this script to have a good time practicinng some bash scripting.
