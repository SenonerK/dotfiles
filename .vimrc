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

syntax on
colo slate

" Remap vsplit shortcuts
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'Raimondi/delimitMate'

call plug#end()
