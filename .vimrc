
set laststatus=2
set noshowmode
set t_Co=256
let g:airline#extensions#tabline#enabled = 1
let mapleader=' '
let g:airline_powerline_fonts = 1

syntax on
"colorscheme tomorrow-night

filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim

map <Leader> <Plug>(easymotion-prefix)
noremap ; :
inoremap jk <esc>
inoremap kj <esc>
noremap <leader>ba iPlugin ''<esc>i
inoremap <leader>ba Plugin ''<esc>i
noremap <leader>pi :PluginInstall

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'wincent/Command-T'

call vundle#end()            " required
filetype plugin indent on  

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :w <CR>:e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>:AirlineRefresh<CR>
