" Auto-install Vim-Plug plugin manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Set leader
let mapleader = "-"

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

" Custom-commands
autocmd FileType vimwiki map md :VimwikiMakeDiaryNote<CR>

" Plugins
call plug#begin('~/.vim/plugged')

" Personal wiki for note-taking ...
Plug 'vimwiki/vimwiki'
Plug 'Raimondi/delimitMate'

call plug#end()
