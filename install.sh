cp tmux.conf ~/.tmux.conf
mkdir -p ~/.config/nvim
cp init.vim ~/.config/nvim/
nvim +PlugInstall +qall
