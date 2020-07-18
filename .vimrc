"============================================================================
" MY VIMRC FILE
"============================================================================
" Creator             : WILLENBROCK 
" Last change         : 30.05.2020
" To use it, copy it to
"    for Unix and OS/2: ~/.vimrc
" for MS-DOS and Win32: $VIM\_vimrc
"to make vim by defolt in linux execute this command in terminal:
"                       sudo update-alternatives --config editor
"============================================================================

" PLUGINS
call plug#begin('~/.vim/plugged')

Plug 'mbbill/undotree'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-commentary'

call plug#end()

" For gruvbox color scheme
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
set background=dark
set termguicolors

" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
au!
" Run xrdb whenever Xdefaults or Xresources are updated.
autocmd BufWritePost *Xresources,*Xdefaults !xrdb %

" Reload the settings file without restarting Vim.
autocmd BufWritePost .vimrc source $MYVIMRC
" autocmd BufWritePost muttrc source /home/nils/.mutt/muttrc ???

" For all text files set 'textwidth' to 78 characters.
    autocmd FileType text setlocal textwidth=78

" limit the width of e-mail text to 78 characters
    au BufRead /tmp/mutt-* set tw=78

augroup END

" Basis settings 
    syntax on                  " syntax on :)
    set number relativenumber  " show line numbers
    set tw=78                  " width of document (used by gd)
    set ruler                  " show number of cursor position (line, symbol)
    set shiftwidth=4           " replace tab to 4 spaces
    set expandtab              " epands tabs to space
    set smarttab
    set tabstop=4              " replace tab to 4 spaces
    set softtabstop=4
    set expandtab
    set smartindent
    set nu
    set nowrap
    set smartcase
    set noswapfile
    set nobackup
    set undodir=~/.vim/undodir
    set undofile
    set incsearch
    set hidden
    set showcmd                " Display an incomplete command in the lower right corner

" Maping keys disable arrow keys in normal mode
    map <Down>  <NOP>         
    map <Up>    <NOP>
    map <Left>  <NOP>
    map <Right> <NOP>

" type jj instead of Esc to return in normal mode
    inore jj    <Esc>          

" Give more space for displaying messages.
    set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
    set updatetime=50

" Don't pass messages to |ins-completion-menu|.
    set shortmess+=c

    set colorcolumn=80
    highlight ColorColumn ctermbg=0 guibg=lightgrey

" #################### EOF ####################
