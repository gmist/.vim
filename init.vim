let first_init_plug=0
let plug_manager_file=expand('~/.vim/autoload/plug.vim')
if !filereadable(plug_manager_file)
  echo "Installing Vim plugin manager"
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  let first_init_plug=1
endif

source ~/.vim/plug.vim
source ~/.vim/base.vim
source ~/.vim/keys.vim
source ~/.vim/indent.vim
