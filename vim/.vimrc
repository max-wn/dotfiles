" MY VIMRC FILE

" ============================= GENERAL
" {{{
"set nocompatible    " use it if you do not have .vimrc
let mapleader = " "  " by default it is \
" }}}

" ============================= VIMTEX
" modern Vim and Neovim filetype and syntax plugin for LaTeX files. {{{
" This is necessary for VimTeX to load properly. The 'indent' is optional.
" Note that most plugin managers will do this automatically.
filetype plugin indent on
" This enables Vim's and neovim's syntax-related features. Without this, some
" VimTeX features will not work (see ':help vimtex-requirements' for more
" info).
syntax enable
" Viewer options: One may configure the viewer either by specifying a built-in
" viewer method:
"let g:vimtex_view_method = 'zathura'
" Or with a generic interface (evince):
let g:vimtex_view_general_viewer = 'evince'
" VimTeX uses latexmk as the default compiler backend. If you use it, which is
" strongly recommended, you probably don't need to configure anything. If you
" want another compiler backend, you can change it as follows. The list of
" supported backends and further explanation is provided in the documentation,
" see ':help vimtex-compiler'.
"let g:vimtex_compiler_method = 'latexrun'
" Most VimTeX mappings rely on localleader and this can be changed with the
" following line. The default is usually fine and is the symbol \.
let maplocalleader = ","
" }}}

" ============================= VIMWIKI
" Personal Wiki for Vim (Markdown Supported) {{{
" enable internal plugins for different filetypes
filetype plugin on
" enable markdown in vimwiki
let g:vimwiki_list = [{'path': '~/vimwiki/',
            \ 'syntax': 'markdown', 'ext': '.md'}]
"let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}  " ?
" disable treatind every file with .md file-extension as a wiki
" Alternative you can set vimwiki to use markdown syntax but a different
" file-extension, like the default .wiki.
let g:vimwiki_global_ext = 0
" Makes vimwiki markdown links as [text](text.md) instead of [text]text()
let g:vimwiki_markdown_link_ext = 1
" Toggle checkbox of a list item on/off (remap to <Ctrl-t>.
nmap <C-t> <Plug>VimwikiToggleListItem
" }}}

" ============================= PLUGINS
" I use VimPlug (https://github.com/junegunn/vim-plug) {{{
" to install it execute in terminal:
"  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
call plug#begin('~/.vim/plugged')

Plug 'mbbill/undotree'
Plug 'gruvbox-community/gruvbox'
Plug 'tpope/vim-commentary'
Plug 'vimwiki/vimwiki'
Plug 'lervag/vimtex'

call plug#end()
" }}}

" ============================= GRUVBOX COLOR SCHEME
" {{{
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
set background=dark
"set termguicolors  " When on, uses |highlight-guifg| and |highlight-guibg| attributes in the terminal (thus using 24-bit color).
" }}}

" ============================= AUTOCMD
" Put these in an autocmd group, so that we can delete them easily {{{
augroup vimrcEx
au!
" run xrdb whenever Xdefaults or Xresources are updated
    autocmd BufWritePost *Xresources,*Xdefaults !xrdb %

" reload the settings file without restarting Vim
    autocmd BufWritePost .vimrc source $MYVIMRC
    "autocmd BufWritePost muttrc source ~/.mutt/muttrc

" for all text files set 'textwidth' to 78 characters
    autocmd FileType text setlocal textwidth=78

" limit the width of e-mail text to 78 characters
    au BufRead /tmp/mutt-* set tw=78

" set exact commentary symbol for tpope/vimcommentary addon
" first recognise the file type by command ':set filetype?' (for example
" 'config')
" then set apropriate sign (for example '#') by command:
    autocmd FileType config setlocal commentstring=#\ %s

" Automatically deletes all trailing whitespace on Save
    autocmd BufWritePre * %s/\s\+$//e

augroup END
" }}}

" ============================= BASIS SETTINGS
" {{{
    set number relativenumber  " show line numbers
    set tw=78                  " width of inserted document
    set ruler                  " show number of cursor position (line, symbol)
    set shiftwidth=4           " replace tab to 4 spaces
    set expandtab              " epands tabs to space
    set smarttab               " replace tab to spaces
    set tabstop=4              " replace tab to 4 spaces
    set softtabstop=4          " number of spaces that a <Tab> counts for while editing
    set smartindent            " smart indent when wright a code
    set nowrap                 " when on (set wrap), lines longer than the width of the window will wrap and displaying continues on the next line
    set noswapfile
    set nobackup
    set undodir=~/.vim/undodir
    set undofile
    set incsearch              " while typing a search command, show where the pattern
    set nohlsearch             " no highlights all search patterns
    set hidden                 " buffer becomes hidden when it is abandoned.
    set showcmd                " display an incomplete command in the lower right corner
	set clipboard^=unnamed,unnamedplus  " sets default clipboard to the system clipboard
    "set backspace=indent,eol,start  " make backspace works like in most other programs
    set path+=**               " search down into subfolders with tab-completion
    set wildmenu               " display all matching files when we tab complete
    set scrolloff=8            " keeps 8 chsrs below and above cursor while scrolling
    set completeopt=menuone,noinsert,noselect  " completion options
    set signcolumn=yes
    set cmdheight=2            " Give more space for displaying messages.
    set updatetime=50          " Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable delays and poor user experience.
    set shortmess+=c           " Do not pass messages to '\|ins-completion-menu\|'
    set colorcolumn=80
    highlight ColorColumn ctermbg=0 guibg=lightgrey
" }}}

" ============================= MAPPING
" {{{
" Maping keys disable arrow keys in normal mode
    map <Down>  <NOP>
    map <Up>    <NOP>
    map <Left>  <NOP>
    map <Right> <NOP>

" Maping split navigation
    map <C-h> <C-w>h
    map <C-j> <C-w>j
    map <C-k> <C-w>k
    map <C-l> <C-w>l

" type jj instead of Esc to return in normal mode
    inore jj    <Esc>
" }}}

" ============================= ALACRITTY VIM SYNTAX HIGHLITING FIX
" {{{
"let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"let &t_8b = "\<Esc>[48:2;%lu;%lu;%lum"
" }}}

" =============================================================================
