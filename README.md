# vimrc

This is my personal ever-changing vimrc. 

**Is this vim?!**

When I hear this phrase I assume that person doesn't know what vim or a vimrc is but just in case... Vim is a highly configurable text editor built to enable efficient text editing. It is an improved version of the vi editor distributed with most UNIX system.

**What is vimrc?**

The vimrc file contains optional runtime configuration settings to initialize Vim when it starts.

**Vim plugins**

- vundle
- tcomment
- nerdtree
- supertab
- vim-autoformat
- surround.vim
- vim-go
- fugitive
- node vim tools
- vim-easymotion
- vim-colorschemes
- vim-json
- vim-jdaddy
- vim-javascript-syntax
- vim-javascript
- vim-indent-guides
- delimitMate
- syntastic
- YouCompleteMe
- tern_for_vim

**colorschemes**

- mushroom
- railscasts
- mushroom
- heroku-terminal
- neonwave
- penci
- mac_classic
- jellybeans
- celtics-away
- lakers-away
- kings-away

**fugitive bindings**

- nnoremap <space>ga :Git add %:p<CR><CR>
- nnoremap <space>gs :Gstatus<CR>
- nnoremap <space>gc :Gcommit -v -q<CR>
- nnoremap <space>gt :Gcommit -v -q %:p<CR>
- nnoremap <space>gd :Gdiff<CR>
- nnoremap <space>ge :Gedit<CR>
- nnoremap <space>gr :Gread<CR>
- nnoremap <space>gw :Gwrite<CR><CR>
- nnoremap <space>gl :silent! Glog<CR>:bot copen<CR>
- nnoremap <space>gp :Ggrep<Space>
- nnoremap <space>gm :Gmove<Space>
- nnoremap <space>gb :Git branch<Space>
- nnoremap <space>go :Git checkout<Space>
- nnoremap <space>gps :Dispatch! git push<CR>
- nnoremap <space>gpl :Dispatch! git pull<CR>
