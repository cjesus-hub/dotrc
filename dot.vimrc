
""
""Vimrc file by ******
""Created in macabro on 27-11-2008
""
"" Last edit 12-04-2011, set cursorline
"" Edit 06-06-2010, list/nolist.
"" Edit 05-06-2010, hidden.
""

" Syntax highligting
:syn on

" Map map "CTRL+j" as the "ctrl+]" (for ctags)
:map <C-j> <C-]>

" color scheme type
":colorscheme desert

" disable old vi bugs and limitations
set nocompatible

" pressing enter, line will match the previous ident
set autoindent

" try to guess smartly the beginning of the new line
set smartindent

" four space tab
set tabstop=4

" shows matching ( { [ ] } )
set showmatch

" allows  '<' '>' to ident and unident in visual mode
set shiftwidth=4

" show line and column number in the bottom
"set ruler

" treats  tabs as spaces
set softtabstop=4

" show line number, in the first column
"set number

" expands tabs as spaces. 
" Be carefull of makefiles, 
"set expandtab

" set/unset the show trailing spaces 
"set list
set nolist

" set delete as backspace, more powerfull backspace
set backspace=indent,eol,start

" set automatic case match when adding a new bracket or parentisis closing
set smartcase

" unset error message of unsaved buffer while navigating
set hidden

"show the name of the document"
set laststatus=2

"draw a line where the cursor lays"
"set cursorline

"draw line numbers
set nu!

