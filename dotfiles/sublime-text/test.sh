#!/bin/bash

# Prompt user for display manager choice
echo -e "\e[1;32mWhich display manager would you like to use?\e[0m"
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
    dmc="$default_dm_choice"
fi

# Prompt user for nerd fonts installation
echo -e "\e[1;32m\nWould you like to install Nerd Fonts?\e[0m"
echo "a. All Nerd Fonts (This will take a while, it's around 2GB)"
echo "b. Some Nerd Fonts (Default)"
echo "c. Minimal Nerd Fonts (minimal amount for script to work)"
default_nerd_fonts_choice="b"
read -p "Enter the number of your choice (a/B/c): " nerd_fonts_choice
if [ -z "$nerd_fonts_choice" ]; then
    nfc="$default_nerd_fonts_choice"
fi

# Prompt user for application installation choices
echo -e "\e[1;32m\nWould you like to install the following applications?\e[0m"
read -p "Install Obsidian? (Y/n): " obsidian_choice
default_obsidian_choice="Y"
if [ -z "$obsidian_choice" ]; then
    oc="$default_obsidian_choice"
fi

read -p "Install VSCode? (Y/n): " vscode_choice
default_vscode_choice="Y"
if [ -z "$vscode_choice" ]; then
    vc="$default_vscode_choice"
fi

read -p "Install Zsh syntax highlighting and auto suggestions? (Y/n)" zsh_plugins_choice
default_zsh_plugins_choice="Y"
if [ -z "$zsh_plugins_choice" ]; then
    zc="$default_zsh_plugins_choice"
fi

read -p "Install shell-color-scripts? (Y/n): " shell_color_scripts_choice
default_shell_color_scripts_choice="Y"
if [ -z "$shell_color_scripts_choice" ]; then
    sc="$default_shell_color_scripts_choice"
fi

echo "$dmc $nfc $oc $vc $zc $sc"
