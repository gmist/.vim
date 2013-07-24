#! /bin/bash

if [ ! -f ~/.vimrc ]; then
    echo "Create .vimrc"
    touch ~/.vimrc
    echo "source $HOME/.vim/rc.vim" >> ~/.vimrc
else
    echo
    read -p "Replace '~/.vimrc'? (y/n): " RESP
    if [ "$RESP" = "y" ]; then
        echo "source $HOME/.vim/rc.vim" >> ~/.vimrc
    fi
fi


if [ ! -d ~/.vim/bundle/neobundle.vim ]; then
    echo "Installing NeoBundle"
    mkdir -p ~/.vim/bundle
    git clone https://github.com/Shougo/neobundle.vim.git ~/.vim/bundle/neobundle.vim
fi

if [ ! -d ~/.vim/backup ]; then
    echo "Create backup dir"
    mkdir -p ~/.vim/backup
fi

echo
read -p "Install spell check dictionaries? (y/n): " RESP
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

vim -c "NeoBundleInstall"
