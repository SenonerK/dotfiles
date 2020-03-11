" Auto-install Vim-Plug plugin manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set autoindent
set smartindent
" 1Tab = 4Spaces
set tabstop=4
" Show line numbers
set number

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'Raimondi/delimitMate'

call plug#end()
