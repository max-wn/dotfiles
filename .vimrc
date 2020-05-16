" #################### my vimrc file ####################
" Maintainer: WILLENBROCK	
" Last change:
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc

" When started as "evim", evim.vim will already have done these settings, bail
" out.
if v:progname =~? "evim"
  finish
endif

" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file (restore to previous version)
  if has('persistent_undo')
    set undofile	" keep an undo file (undo changes after closing)
  endif
endif

if &t_Co > 2 || has("gui_running")
  " Switch on highlighting the last used search pattern.
  set hlsearch
endif

" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " limit the width of e-mail text to 78 characters
  au BufRead /tmp/mutt-* set tw=78

augroup END

" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
" The ! means the package won't be loaded right away but when plugins are
" loaded during initialization.
if has('syntax') && has('eval')
  packadd! matchit
endif

" Showing line numbers and lengs:
    set number relativenumber  " show line numbers
    set tw=78                  " width of document (used by gd)
    set ruler                  " show number of cursor position (line, symbol)
    set expandtab              " epands tabs to space
    set smarttab
    set shiftwidth=4           " replace tab to 4 spaces
    set tabstop=4              " replace tab to 4 spaces
    set showcmd                " Display an incomplete command in the lower right corner
    
left of the ruler.    
" Maping keys
    map <Down> <NOP>           " disable Down arrow key in normal mode
    map <Up> <NOP>
    map <Left> <NOP>
    map <Right> <NOP>
    inore jj <Esc>             " type jj instead of Esc to return in normal mode

" Syntax
    syntax on

" #################### EOF ####################
