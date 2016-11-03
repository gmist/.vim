#!/usr/bin/env bash

delete_vim_files(){
  echo "Removing '$HOME/.vimrc' file and '$HOME/.vim' directory"
  rm -rf ~/.vim ~/.vimrc
}

create_vim_files(){
  echo "Creating '$HOME/.vimrc' file and '$HOME/.vim' directory"
  touch ~/.vimrc
  echo "source ~/.vim/init.vim" >> ~/.vimrc
  mkdir ~/.vim
}


echo "==== Prepare to install .vim ===="


echo "Check git..."
which git > /dev/null
if [ "$?" != "0" ]; then
  echo "Oops... git was not found, install it before"
  exit 1
else
  echo "Ok"
fi


echo "Check vim..."
which vim > /dev/null
if [ "$?" != "0" ]; then
  echo "Oops... vim was not found, install it before"
  exit 1
else
  echo "Ok"
fi


echo "Check curl..."
which curl > /dev/null
if [ "$?" != "0" ]; then
  echo "Oops... curl was not found, install it before"
  exit 1
else
  echo "Ok"
fi


if [ ! -f ~/.vimrc ] && [ ! -d ~/.vim ]; then
  create_vim_files
else
  echo
  read -p "Replace your '$HOME/.vimrc' and '$HOME/.vim' directory? (y/n): " RESP
  if [ "$RESP" = "y" ]; then
    delete_vim_files
    create_vim_files
  else
    echo "Ok, let's finish some other time"
    exit 1
  fi
fi

if [ ! -d ~/.config/nvim ]; then
  if [ ! -d ~/.config ]; then
    mkdir ~/.config
  fi
  ln -s ~/.vim ~/.config/nvim
fi

git clone https://github.com/gmist/.vim.git ~/.vim

echo
read -p "Install spell checker dictionaries? (y/n): " RESP
if [ "$RESP" = "y" ]; then
  if [ ! -d ~/.vim/spell ]; then
      mkdir -p ~/.vim/spell
  fi
  curl ftp://ftp.vim.org/pub/vim/runtime/spell/en.utf-8.spl > ~/.vim/spell/en.utf-8.spl
  curl ftp://ftp.vim.org/pub/vim/runtime/spell/en.utf-8.sug > ~/.vim/spell/en.utf-8.sug
  curl ftp://ftp.vim.org/pub/vim/runtime/spell/en.ascii.spl > ~/.vim/spell/en.ascii.spl
  curl ftp://ftp.vim.org/pub/vim/runtime/spell/en.ascii.sug > ~/.vim/spell/en.ascii.sug
  curl ftp://ftp.vim.org/pub/vim/runtime/spell/en.latin1.spl > ~/.vim/spell/en.latin1.spl
  curl ftp://ftp.vim.org/pub/vim/runtime/spell/es.latin1.sug > ~/.vim/spell/en.latin1.sug

  curl ftp://ftp.vim.org/pub/vim/runtime/spell/ru.cp1251.spl > ~/.vim/spell/ru.cp1251.spl
  curl ftp://ftp.vim.org/pub/vim/runtime/spell/ru.cp1251.sug > ~/.vim/spell/ru.cp1251.sug
  curl ftp://ftp.vim.org/pub/vim/runtime/spell/ru.koi8-r.spl > ~/.vim/spell/ru.koi8-r.spl
  curl ftp://ftp.vim.org/pub/vim/runtime/spell/ru.koi8-r.sug > ~/.vim/spell/ru.koi8-r.sug
  curl ftp://ftp.vim.org/pub/vim/runtime/spell/ru.utf-8.spl > ~/.vim/spell/ru.utf-8.spl
  curl ftp://ftp.vim.org/pub/vim/runtime/spell/ru.utf-8.sug > ~/.vim/spell/ru.utf-8.sug
fi

vim
