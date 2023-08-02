#!/bin/bash

green="\e[1;32m"
gray="\e[1;90m"
red="\e[1;31m"
nocolor="\e[0m"

username=`whoami`
home=/home/$username
installdir=`pwd`

# Prompt user for display manager choice
echo -e "\n${green}Which display manager would you like to use?\e[0m"
echo "a. Ly (Default)"
echo "b. GDM3 (Gnome)"
echo "c. SDDM (KDE)"
echo "d. LightDM (XFCE & others)"

# Set default value
default_dm_choice="a"

# Read user input with timeout of 10 seconds
read -p "Enter the number of your choice (A/b/c/d): " dm_choice
# If user pressed enter with no selection, use the default answer
if [ -z "$dm_choice" ]; then
    dm_choice="$default_dm_choice"
fi

# Prompt user for nerd fonts installation
echo -e "${green}\nWould you like to install Nerd Fonts?\e[0m"
echo "a. All Nerd Fonts (This will take a while, it's around 2GB)"
echo "b. Some Nerd Fonts (Default)"
echo "c. Minimal Nerd Fonts (minimal amount for script to work)"
default_nerd_fonts_choice="b"
read -p "Enter the number of your choice (a/B/c): " nerd_fonts_choice
if [ -z "$nerd_fonts_choice" ]; then
    nerd_fonts_choice="$default_nerd_fonts_choice"
fi

# Prompt user for application installation choices
echo -e "${green}\nWould you like to install the following applications?\e[0m"

read -p "Install Sublime Text? (Y/n): " sublime_choice
default_sublime_choice="y"
if [ -z "$sublime_choice" ]; then
    sublime_choice="$default_sublime_choice"
fi

read -p "Install Brave Browser? (Y/n): " brave_choice
default_brave_choice="y"
if [ -z "$brave_choice" ]; then
    brave_choice="$default_brave_choice"
fi

read -p "Install Obsidian? (Y/n): " obsidian_choice
default_obsidian_choice="y"
if [ -z "$obsidian_choice" ]; then
    obsidian_choice="$default_obsidian_choice"
fi

read -p "Install VSCodium? (Y/n): " vscodium_choice
default_vscodium_choice="y"
if [ -z "$vscode_choice" ]; then
    vscodium_choice="$default_vscodium_choice"
fi

read -p "Install VSCode? (Y/n): " vscode_choice
default_vscode_choice="y"
if [ -z "$vscode_choice" ]; then
    vscode_choice="$default_vscode_choice"
fi

read -p "Install Zsh syntax highlighting and auto suggestions? (Y/n)" zsh_plugins_choice
default_zsh_plugins_choice="y"
if [ -z "$zsh_plugins_choice" ]; then
    zsh_plugins_choice="$default_zsh_plugins_choice"
fi

read -p "Install shell-color-scripts? (Graphic at new terminal) (Y/n): " shell_color_scripts_choice
default_shell_color_scripts_choice="y"
if [ -z "$shell_color_scripts_choice" ]; then
    shell_color_scripts_choice="$default_shell_color_scripts_choice"
fi

echo -e "${green}
███████╗██╗   ██╗███████╗████████╗███████╗███╗   ███╗    ██╗   ██╗██████╗ ██████╗  █████╗ ████████╗███████╗███████╗
██╔════╝╚██╗ ██╔╝██╔════╝╚══██╔══╝██╔════╝████╗ ████║    ██║   ██║██╔══██╗██╔══██╗██╔══██╗╚══██╔══╝██╔════╝██╔════╝
███████╗ ╚████╔╝ ███████╗   ██║   █████╗  ██╔████╔██║    ██║   ██║██████╔╝██║  ██║███████║   ██║   █████╗  ███████╗
╚════██║  ╚██╔╝  ╚════██║   ██║   ██╔══╝  ██║╚██╔╝██║    ██║   ██║██╔═══╝ ██║  ██║██╔══██║   ██║   ██╔══╝  ╚════██║
███████║   ██║   ███████║   ██║   ███████╗██║ ╚═╝ ██║    ╚██████╔╝██║     ██████╔╝██║  ██║   ██║   ███████╗███████║
╚══════╝   ╚═╝   ╚══════╝   ╚═╝   ╚══════╝╚═╝     ╚═╝     ╚═════╝ ╚═╝     ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚══════╝╚══════╝                                                                                                                  
${nocolor}"
# Update system and install nala
sudo apt update && sudo apt upgrade -y && sudo apt install nala -y

# Install important packages
# build-essential & libpam0g-dev & libx11-xcb-dev are for building Ly
sudo nala install zsh rofi spice-vdagent xorg i3-wm picom nitrogen polybar neovim exa fd-find ripgrep bat firefox-esr terminator lxappearance unzip flameshot command-not-found build-essential curl git arandr htop -y

echo -e "${green}
██████╗ ██╗███████╗██████╗ ██╗      █████╗ ██╗   ██╗    ███╗   ███╗ █████╗ ███╗   ██╗ █████╗  ██████╗ ███████╗██████╗ 
██╔══██╗██║██╔════╝██╔══██╗██║     ██╔══██╗╚██╗ ██╔╝    ████╗ ████║██╔══██╗████╗  ██║██╔══██╗██╔════╝ ██╔════╝██╔══██╗
██║  ██║██║███████╗██████╔╝██║     ███████║ ╚████╔╝     ██╔████╔██║███████║██╔██╗ ██║███████║██║  ███╗█████╗  ██████╔╝
██║  ██║██║╚════██║██╔═══╝ ██║     ██╔══██║  ╚██╔╝      ██║╚██╔╝██║██╔══██║██║╚██╗██║██╔══██║██║   ██║██╔══╝  ██╔══██╗
██████╔╝██║███████║██║     ███████╗██║  ██║   ██║       ██║ ╚═╝ ██║██║  ██║██║ ╚████║██║  ██║╚██████╔╝███████╗██║  ██║
╚═════╝ ╚═╝╚══════╝╚═╝     ╚══════╝╚═╝  ╚═╝   ╚═╝       ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝                                                                                                                     
${nocolor}"

install_ly() {
    sudo nala install libpam0g-dev libx11-xcb-dev -y
    git clone --recurse-submodules https://github.com/fairyglade/ly
    cd ly
    make
    sudo make install installsystemd
    sudo systemctl enable ly.service
    #Disable other likely display managers
    sudo systemctl disable gdm3.service
    sudo systemctl disable lightdm.service
    sudo systemctl disable sddm.service
    # Copy Ly config
    cd $installdir
    sudo cp config.ly /etc/ly/config.ini
    rm -rf ly
}

install_gdm3() {
    sudo nala install gdm3 -y
    sudo systemctl enable gdm3.service
    #Disable other likely display managers
    sudo systemctl disable lightdm.service
    sudo systemctl disnable sddm.service
}

install_sddm() {
    sudo nala install sddm -y
    sudo systemctl enable sddm.service
    #Disable other likely display managers
    sudo systemctl disable gdm3.service
    sudo systemctl disable lightdm.service
}

install_lightdm() {
    sudo nala install lightdm -y
    sudo systemctl enable lightdm.service
    #Disable other likely display managers
    sudo systemctl disnable sddm.service
    sudo systemctl disable gdm3.service
}

case "$dm_choice" in
    a)
    install_ly
    ;;
    b)
    install_gdm3
    ;;
    c)install_sddm
    ;;
    d)
    install_lightdm
    ;;
    *)
    echo "Invalid Display Manager choide."
    exit 1
    ;;
esac

echo -e "${green}
███╗   ██╗███████╗██████╗ ██████╗     ███████╗ ██████╗ ███╗   ██╗████████╗███████╗
████╗  ██║██╔════╝██╔══██╗██╔══██╗    ██╔════╝██╔═══██╗████╗  ██║╚══██╔══╝██╔════╝
██╔██╗ ██║█████╗  ██████╔╝██║  ██║    █████╗  ██║   ██║██╔██╗ ██║   ██║   ███████╗
██║╚██╗██║██╔══╝  ██╔══██╗██║  ██║    ██╔══╝  ██║   ██║██║╚██╗██║   ██║   ╚════██║
██║ ╚████║███████╗██║  ██║██████╔╝    ██║     ╚██████╔╝██║ ╚████║   ██║   ███████║
╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝╚═════╝     ╚═╝      ╚═════╝ ╚═╝  ╚═══╝   ╚═╝   ╚══════╝                                                                                  
${nocolor}"

install_all_nerd_fonts() {
    mkdir $home/.fonts
    git clone https://github.com/ryanoasis/nerd-fonts.git
    cd nerd-fonts
    chmod +x install.sh
    ./install.sh
    cd ..
    rm -rf nerd-fonts
}

install_some_nerd_fonts() {
    mkdir $home/.fonts
    
    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.1/FiraCode.zip
    unzip -o FiraCode.zip -d $home/.fonts
    rm FiraCode.zip

    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.0/ProggyClean.zip
    unzip -o ProggyClean.zip -d $home/.fonts
    rm ProggyClean.zip

    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.0/NerdFontsSymbolsOnly.zip
    unzip -o NerdFontsSymbolsOnly.zip -d $home/.fonts
    rm NerdFontsSymbolsOnly.zip

    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.0/Terminus.zip
    unzip -o Terminus.zip -d $home/.fonts
    rm Terminus.zip


    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.0/Meslo.zip
    unzip -o Meslo.zip -d $home/.fonts
    rm Meslo.zip

    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.0/DroidSansMono.zip
    unzip -o DroidSansMono.zip -d $home/.fonts
    rm DroidSansMono.zip

    fc-cache -fv
}

install_min_nerd_fonts() {
    mkdir $home/.fonts
    
    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.1/FiraCode.zip
    unzip -o FiraCode.zip -d $home/.fonts
    rm FiraCode.zip

    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.0/ProggyClean.zip
    unzip -o ProggyClean.zip -d $home/.fonts
    rm ProggyClean.zip

    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.0/NerdFontsSymbolsOnly.zip
    unzip -o NerdFontsSymbolsOnly.zip -d $home/.fonts
    rm NerdFontsSymbolsOnly.zip

    fc-cache -fv
}

case "$nerd_fonts_choice" in 
    a)
        install_all_nerd_fonts
        ;;
    b)
        install_some_nerd_fonts
        ;;
    c)
        install_min_nerd_fonts
        ;;
    *)
        echo "Invalid Nerd Fonts choice. Please select a valid answer (a/b/c)"
        exit 1
        ;;
esac

echo -e "${green}
███████╗██╗   ██╗██████╗ ██╗     ██╗███╗   ███╗███████╗    ████████╗███████╗██╗  ██╗████████╗
██╔════╝██║   ██║██╔══██╗██║     ██║████╗ ████║██╔════╝    ╚══██╔══╝██╔════╝╚██╗██╔╝╚══██╔══╝
███████╗██║   ██║██████╔╝██║     ██║██╔████╔██║█████╗         ██║   █████╗   ╚███╔╝    ██║   
╚════██║██║   ██║██╔══██╗██║     ██║██║╚██╔╝██║██╔══╝         ██║   ██╔══╝   ██╔██╗    ██║   
███████║╚██████╔╝██████╔╝███████╗██║██║ ╚═╝ ██║███████╗       ██║   ███████╗██╔╝ ██╗   ██║   
╚══════╝ ╚═════╝ ╚═════╝ ╚══════╝╚═╝╚═╝     ╚═╝╚══════╝       ╚═╝   ╚══════╝╚═╝  ╚═╝   ╚═╝                                                                                             
${nocolor}"

install_sublime() {
    wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg > /dev/null
    echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
    sudo nala update && sudo nala install sublime-text -y
}

move_on() {
    echo ""
}

case "$sublime_choice" in 
    y)
        install_sublime
        ;;
    n)
        move_on
        ;;
    *)
        echo "Invalid Sublime Text choice. Please select a valid answer (y/n)"
        exit 1
        ;;
esac

echo -e "${green}
██████╗ ██████╗  █████╗ ██╗   ██╗███████╗    ██████╗ ██████╗  ██████╗ ██╗    ██╗███████╗███████╗██████╗ 
██╔══██╗██╔══██╗██╔══██╗██║   ██║██╔════╝    ██╔══██╗██╔══██╗██╔═══██╗██║    ██║██╔════╝██╔════╝██╔══██╗
██████╔╝██████╔╝███████║██║   ██║█████╗      ██████╔╝██████╔╝██║   ██║██║ █╗ ██║███████╗█████╗  ██████╔╝
██╔══██╗██╔══██╗██╔══██║╚██╗ ██╔╝██╔══╝      ██╔══██╗██╔══██╗██║   ██║██║███╗██║╚════██║██╔══╝  ██╔══██╗
██████╔╝██║  ██║██║  ██║ ╚████╔╝ ███████╗    ██████╔╝██║  ██║╚██████╔╝╚███╔███╔╝███████║███████╗██║  ██║
╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝  ╚═══╝  ╚══════╝    ╚═════╝ ╚═╝  ╚═╝ ╚═════╝  ╚══╝╚══╝ ╚══════╝╚══════╝╚═╝  ╚═╝                                                                                                        
${nocolor}"

install_brave() {
    sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo nala update && sudo nala install brave-browser -y
}

case "$brave_choice" in 
    y)
        install_brave
        ;;
    n)
        move_on
        ;;
    *)
        echo "Invalid Brave choice. Please select a valid answer (y/n)"
        exit 1
        ;;
esac

echo -e "${green}
██╗   ██╗███████╗ ██████╗ ██████╗ ██████╗ ██╗██╗   ██╗███╗   ███╗
██║   ██║██╔════╝██╔════╝██╔═══██╗██╔══██╗██║██║   ██║████╗ ████║
██║   ██║███████╗██║     ██║   ██║██║  ██║██║██║   ██║██╔████╔██║
╚██╗ ██╔╝╚════██║██║     ██║   ██║██║  ██║██║██║   ██║██║╚██╔╝██║
 ╚████╔╝ ███████║╚██████╗╚██████╔╝██████╔╝██║╚██████╔╝██║ ╚═╝ ██║
  ╚═══╝  ╚══════╝ ╚═════╝ ╚═════╝ ╚═════╝ ╚═╝ ╚═════╝ ╚═╝     ╚═╝                                                                                                               
${nocolor}"

install_vscodium() {
    sudo nala install jq -y && curl https://api.github.com/repos/VSCodium/vscodium/releases/latest | jq -r .zipball_url | xargs wget -O vscodium.zip
    sudo unzip vscodium.zip -do /opt/vscode
    sudo chown $username:$usermod /opt/vscode
    rm vscodium.zip
}

case "$vscode_choice" in
    y)
        install_vscode
        ;;
    n)
        move_on
        ;;
    *)
        echo "Invalid VSCodium choice. Please select a valid answer (y/n)"
        exit 1
        ;;
esac

echo -e "${green}
██╗   ██╗███████╗ ██████╗ ██████╗ ██████╗ ███████╗
██║   ██║██╔════╝██╔════╝██╔═══██╗██╔══██╗██╔════╝
██║   ██║███████╗██║     ██║   ██║██║  ██║█████╗  
╚██╗ ██╔╝╚════██║██║     ██║   ██║██║  ██║██╔══╝  
 ╚████╔╝ ███████║╚██████╗╚██████╔╝██████╔╝███████╗
  ╚═══╝  ╚══════╝ ╚═════╝ ╚═════╝ ╚═════╝ ╚══════╝                                                 
${nocolor}"

install_vscode() {
    wget 'https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64' -O code.deb
    sudo apt install -y ./code.deb
    rm code.deb
}

case "$vscode_choice" in
    y)
        install_vscode
        ;;
    n)
        move_on
        ;;
    *)
        echo "Invalid VSCode choice. Please select a valid answer (y/n)"
        exit 1
        ;;
esac

echo -e "${green}
 ██████╗ ██████╗ ███████╗██╗██████╗ ██╗ █████╗ ███╗   ██╗
██╔═══██╗██╔══██╗██╔════╝██║██╔══██╗██║██╔══██╗████╗  ██║
██║   ██║██████╔╝███████╗██║██║  ██║██║███████║██╔██╗ ██║
██║   ██║██╔══██╗╚════██║██║██║  ██║██║██╔══██║██║╚██╗██║
╚██████╔╝██████╔╝███████║██║██████╔╝██║██║  ██║██║ ╚████║
 ╚═════╝ ╚═════╝ ╚══════╝╚═╝╚═════╝ ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝                                                       
${nocolor}"

install_obsidian() {
    wget 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.3.5/obsidian_1.3.5_amd64.deb' -O obsidian.deb
    sudo apt install -y ./obsidian.deb
    rm obsidian.deb
}
case "$obsidian_choice" in
    y)
        install_obsidian
        ;;
    n)
        move_on
        ;;
    *)
        echo "Invalid Obsidian choice. Please select a valid answer (y/n)"
        exit 1
        ;;
esac

echo -e "${green}
███████╗██╗  ██╗███████╗██╗     ██╗          ██████╗ ██████╗ ██╗      ██████╗ ██████╗     ███████╗ ██████╗██████╗ ██╗██████╗ ████████╗███████╗
██╔════╝██║  ██║██╔════╝██║     ██║         ██╔════╝██╔═══██╗██║     ██╔═══██╗██╔══██╗    ██╔════╝██╔════╝██╔══██╗██║██╔══██╗╚══██╔══╝██╔════╝
███████╗███████║█████╗  ██║     ██║         ██║     ██║   ██║██║     ██║   ██║██████╔╝    ███████╗██║     ██████╔╝██║██████╔╝   ██║   ███████╗
╚════██║██╔══██║██╔══╝  ██║     ██║         ██║     ██║   ██║██║     ██║   ██║██╔══██╗    ╚════██║██║     ██╔══██╗██║██╔═══╝    ██║   ╚════██║
███████║██║  ██║███████╗███████╗███████╗    ╚██████╗╚██████╔╝███████╗╚██████╔╝██║  ██║    ███████║╚██████╗██║  ██║██║██║        ██║   ███████║
╚══════╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝     ╚═════╝ ╚═════╝ ╚══════╝ ╚═════╝ ╚═╝  ╚═╝    ╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝╚═╝        ╚═╝   ╚══════╝                                                                                                                                             
${nocolor}"

install_shell_color_scripts() {
    git clone https://gitlab.com/dwt1/shell-color-scripts.git
    cd shell-color-scripts
    sudo make install
    sudo rm -rf /opt/shell-color-scripts/colorscripts
    cd $installdir
    sudo cp -r colorscripts /opt/shell-color-scripts/
}
case "$shell_color_scripts_choice" in
    y)
        install_shell_color_scripts
        ;;
    n)
        move_on
        ;;
    *)
        echo "Invalid Color Scripts choice. Please select a valid answer (y/n)"
        exit 1
        ;;
esac

echo -e "${green}
███████╗███████╗██╗  ██╗    ██████╗ ██╗     ██╗   ██╗ ██████╗ ██╗███╗   ██╗███████╗
╚══███╔╝██╔════╝██║  ██║    ██╔══██╗██║     ██║   ██║██╔════╝ ██║████╗  ██║██╔════╝
  ███╔╝ ███████╗███████║    ██████╔╝██║     ██║   ██║██║  ███╗██║██╔██╗ ██║███████╗
 ███╔╝  ╚════██║██╔══██║    ██╔═══╝ ██║     ██║   ██║██║   ██║██║██║╚██╗██║╚════██║
███████╗███████║██║  ██║    ██║     ███████╗╚██████╔╝╚██████╔╝██║██║ ╚████║███████║
╚══════╝╚══════╝╚═╝  ╚═╝    ╚═╝     ╚══════╝ ╚═════╝  ╚═════╝ ╚═╝╚═╝  ╚═══╝╚══════╝                                                                                  
${nocolor}"

install_zsh_plugins() {
    sudo git clone https://github.com/zsh-users/zsh-autosuggestions /usr/share/zsh-autosuggestions
    sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git /usr/share/zsh-syntax-highlighting
}
case "$zsh_plugins_choice" in
    y)
        install_zsh_plugins
        ;;
    n)
        move_on
        ;;
    *)
        echo "Invalid Zsh Plugins choice. Please select a valid answer (y/n)"
        exit 1
        ;;
esac

echo -e "${green}
██████╗  ██████╗ ████████╗███████╗██╗██╗     ███████╗███████╗
██╔══██╗██╔═══██╗╚══██╔══╝██╔════╝██║██║     ██╔════╝██╔════╝
██║  ██║██║   ██║   ██║   █████╗  ██║██║     █████╗  ███████╗
██║  ██║██║   ██║   ██║   ██╔══╝  ██║██║     ██╔══╝  ╚════██║
██████╔╝╚██████╔╝   ██║   ██║     ██║███████╗███████╗███████║
╚═════╝  ╚═════╝    ╚═╝   ╚═╝     ╚═╝╚══════╝╚══════╝╚══════╝                                                            
${nocolor}"

# Put config files into place
mkdir -p $home/Pictures/wallpapers
cp bg.jpg $home/Pictures/wallpapers
echo "dirs=$home/Pictures/wallpapers" >> $installdir/dotfiles/nitrogen/nitrogen.cfg
mkdir $home/.config
cp -r $installdir/dotfiles/* $home/.config/
cp $installdir/zshrc $home/.zshrc
sudo usermod --shell /bin/zsh $username
