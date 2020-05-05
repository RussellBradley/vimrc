" Sumo's vimrc 
" Sumo <info@sumothousand.com>
" Fork me on GITHUB https://github.com/sumothousand/vimrc

" install vundle
" git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

set clipboard=unnamed "yank copies to clipboard"
set nocompatible              " be iMproved, required set backspace=2 " make backspace work like most other apps
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" typescript-vim
" Typescript syntax files for Vim
" https://github.com/leafgarland/typescript-vim
Plugin 'leafgarland/typescript-vim'

" tsuquyomi
" A Vim plugin for TypeScript
" https://github.com/Quramy/tsuquyomi
Plugin 'Quramy/tsuquyomi'

" git-gutter
" A Vim plugin which shows a git diff in the gutter (sign column) and
" stages/undoes hunks.
" https://github.com/airblade/vim-gitgutter
Plugin 'airblade/vim-gitgutter'

" vim-json
" A better JSON for Vim: distinct highlighting of keywords vs values,
" JSON-specific (non-JS) warnings, quote concealing. Pathogen-friendly.
" https://github.com/elzr/vim-json
Plugin 'elzr/vim-json'

" vim-jdaddy
" jdaddy.vim: JSON manipulation and pretty printing
" https://github.com/tpope/vim-jdaddy
Plugin 'tpope/vim-jdaddy'

" vim-javascript-syntax
" Enhanced javascript syntax file for Vim
" https://github.com/jelera/vim-javascript-syntax
Plugin 'jelera/vim-javascript-syntax'

" vim-javascript
" Vastly improved Javascript indentation and syntax support in Vim.
" https://github.com/pangloss/vim-javascript
Plugin 'pangloss/vim-javascript'

" vim-indent-guides
" A Vim plugin for visually displaying indent levels in code
" https://github.com/nathanaelkane/vim-indent-guides
Plugin 'nathanaelkane/vim-indent-guides'

" delimitMate
" Vim plugin, provides insert mode auto-completion for quotes, parens,
" brackets, etc.
" https://github.com/Raimondi/delimitMate
Plugin 'Raimondi/delimitMate'

" syntastic
" Syntax checking hacks for vim
" https://github.com/scrooloose/syntastic
Plugin 'scrooloose/syntastic'

" " Valloric/YouCompleteMe
" " A code-completion engine for Vim
" " https://github.com/Valloric/YouCompleteMe
" Plugin 'Valloric/YouCompleteMe'

" tern_for_vim
" Tern plugin for Vim
" https://github.com/ternjs/tern_for_vim
Plugin 'ternjs/tern_for_vim'

" tComment
" uncomment lines with 'gcc'
" https://github.com/vim-scripts/tComment
Plugin 'tcomment'

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" NERDTree
Plugin 'scrooloose/nerdtree'

" SuperTab
Plugin 'ervandew/supertab'

" vim-autoformat
" https://github.com/Chiel92/vim-autoformat
Plugin 'Chiel92/vim-autoformat'

" surround.vim
" https://github.com/tpope/vim-surround
Plugin 'tpope/vim-surround'

" vim-go
" https://github.com/fatih/vim-go
" go syntax + auto complete
Plugin 'fatih/vim-go'

" fugitive.vim
" http://vimawesome.com/plugin/fugitive-vim
" a Git wrapper so awesome, it should be illegal
Plugin 'tpope/vim-fugitive'

" node vim tools
" https://github.com/moll/vim-node
Plugin 'moll/vim-node'
Plugin 'guileen/vim-node-dict'

" vim-easymotion
Plugin 'Lokaltog/vim-easymotion'

" ctrlp.vim
" Fuzzy file, buffer, mru, tag, etc finder.
" http://ctrlpvim.github.com/ctrlp.vim
Plugin 'ctrlpvim/ctrlp.vim'

" vim-markdown-preview
" A light Vim plugin for previewing markdown files in a browser - without
" having to leave Vim.
" https://github.com/JamshedVesuna/vim-markdown-preview
Plugin 'JamshedVesuna/vim-markdown-preview'

" Colors
"
" vim-colorschemes
" https://github.com/flazz/vim-colorschemes
 Plugin 'flazz/vim-colorschemes'

" Colorschemes plugins
Plugin 'atelierbram/vim-colors_atelier-schemes'
Plugin 'stulzer/heroku-colorscheme'
Plugin 'mtglsk/mushroom'
" Plugin 'sumothousand/vim-colorscheme-nba'
Plugin 'AlessandroYorba/Alduin'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" On Start
" enable syntax
:syntax on

" recursivly load all files into buffers
" http://stackoverflow.com/questions/12094708/include-a-directory-recursively-for-vim-autocompletion
:set complete=k**/*

" set numbers
:set nu

" highlighted search
:set hlsearch

" enable backspace in insert mode
:set bs=2

" NERDTree
autocmd vimenter * NERDTree

" setting vim whitespace prefernce by filetype (js)
autocmd Filetype json,sh,javascript,ruby,sh,yaml setlocal ts=2 sts=2 sw=2
autocmd FileType python setlocal tabstop=4 expandtab shiftwidth=4 softtabstop=4

" more color shit
colorscheme warriors-away
" favorites
" railscasts
" mushroom
" heroku-terminal
" neonwave
" penci
" mac_classic
" jellybeans

" fugitive bindings git bindings
nnoremap <space>ga :Git add %:p<CR><CR>
nnoremap <space>gs :Gstatus<CR>
nnoremap <space>gc :Gcommit -v -q<CR>
nnoremap <space>gt :Gcommit -v -q %:p<CR>
nnoremap <space>gd :Gdiff<CR>
nnoremap <space>ge :Gedit<CR>
nnoremap <space>gr :Gread<CR>
nnoremap <space>gw :Gwrite<CR><CR>
nnoremap <space>gl :silent! Glog<CR>:bot copen<CR>
nnoremap <space>gp :Ggrep<Space>
nnoremap <space>gm :Gmove<Space>
nnoremap <space>gb :Git branch<Space>
nnoremap <space>go :Git checkout<Space>
nnoremap <space>gps :Dispatch! git push<CR>
nnoremap <space>gpl :Dispatch! git pull<CR>

