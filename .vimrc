"""""""""GENERAL SETTINGS"""""""""
"Syntax highlighing on
syntax on
"This will load the specific filetype's indent file
filetype plugin indent on
"Font and font size
set linespace=2
"Colorscheme
colorscheme wombat256mod
"Word wrapping
set wrap linebreak nolist
"Backspace to work like normal
set backspace=2
"Relative linenumbering
set relativenumber
set nu
"Current path working path
set path=$PWD/**
"Clipboard to work cross documents
set clipboard=unnamed
"Errorbells, both sound and visual
set noerrorbells visualbell t_vb=
"Tab intendation
set shiftwidth=4
set softtabstop=4
set expandtab
"Folding
set foldmethod=manual

"""""""""PLUGIN SETTINGS"""""""""
"""Vundle settings"""

"Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'lervag/vimtex'
Plugin 'snipMate'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Lokaltog/powerline'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'majutsushi/tagbar'

call vundle#end()
set nocompatible 

"""Syntastic settings"""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"Enable stdc++11
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = ' -std=c++11'

"""Vimtex settings"""
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_CompileRule_pdf='pdflatex --interaction=nonstopmode $*'

"""snipMate"""
let g:snippets_dir='~/.vim/bundle/snipMate/snippets/'

"""Powerline setup"""
set laststatus=2 "Always show the statusline
set enc=utf-8 "Nessesary for Unicode glyphs
let g:airline_theme='wombat'
let g:airline_powerline_fonts = 0

"""Tagbar"""
nnoremap <F8> :TagbarToggle<CR>
let g:tagbar_width = 35

"""""""""LANGUAGE SPECIFIC"""""""""

"""Pyton"""
"Run script with <F5> in new window
nnoremap <silent> <F5> :!clear;python %<CR>

"""""""""AUTO COMMANDS"""""""""
if has('autocmd')
    """""GENERAL"""""
    "Disabling error bells
    autocmd GUIEnter * set visualbell t_vb=
    "Automatic views
    autocmd BufWinLeave *.* mkview
    autocmd BufWinEnter *.* silent loadview
    
    """""LaTeX""""" 
    "Setting text width for latex
    autocmd BufRead,BufNewFile *.tex setlocal textwidth=90
    "Setting spelling to Eng US
    autocmd BufRead,BufNewFile *.tex setlocal spell spelllang=en_us
    "Setting filetpe to LaTeX
    autocmd BufRead,BufNewFile *.tex setlocal ft=tex

    """""NERDTree"""""
    autocmd VimEnter * NERDTree | wincmd p
    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | wincmd p | endif
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
endif
