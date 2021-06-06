#!/bin/bash

echo "[✓] FastAUR is running!"
echo "[...] Ensuring all necessary packages are installed"
sudo pacman --noconfirm -q --needed -Syu git base-devel > /dev/null 2> /dev/null
echo "[✓] FastAUR has ensured all necessary packages are installed."
sleep 1
echo "[...] Cloning YAY"
git clone https://aur.archlinux.org/yay.git > /dev/null 2> /dev/null
echo "[✓] FastAUR has cloned the YAY repo"
cd yay
echo "[...] Running MAKEPKG"
makepkg -f -si -c --noconfirm > /dev/null 2> /dev/null
echo "[✓] FastAUR has now installed YAY"
echo "[...] Cleaning up"
cd ..
echo "[✓] FastAUR has finished cleanup"
echo "Thanks for using FastAUR!"
