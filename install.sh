#!/bin/zsh

# tmux
cp tmux.conf ~/.tmux.conf
if which wsl.exe >/dev/null; then
  sed -i 's/pbcopy/clip.exe/g' ~/.tmux.conf
fi

# neovim
mkdir -p ~/.config/nvim
cp init.vim ~/.config/nvim/
nvim +PlugInstall +qall

# zsh

if [ ! -d ~/.oh-my-zsh ]; then
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi
cp auto_env.sh ~/.oh-my-zsh
cp zshrc ~/.zshrc
