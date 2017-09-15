#install sogoupinyin

echo "y" | sudo pacman -Syy fcitx fcitx-qt4 fcitx-qt5 fcitx-gtk2 fcitx-gtk3 fcitx-configtool opencc lsb-release

cat <<EOF > ~/.xprofile
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
EOF

git clone https://aur.archlinux.org/fcitx-sogoupinyin.git
cd fcitx-sogoupinyin
makepkg
pacman -U fcitx-sogoupinyin-2.1.0.0086-1-x86_64.pkg.tar.xz

