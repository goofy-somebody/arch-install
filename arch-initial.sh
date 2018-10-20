#Setup mirrorlist
sudo cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.original

sudo reflector --connection-timeout 10 --cache-timeout 30 --save /etc/pacman.d/mirrorlist.sorted --sort rate --threads 8 -c US -f 100 -l 200 -n 25 -p https

sudo cp /etc/pacman.d/mirrorlist.sorted /etc/pacman.d/mirrorlist

#Update the system
sudo pacman -Syyu

sudo shutdown -r now

#Also update anything from AUR
yay -Syu


