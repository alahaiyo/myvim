syntax on
set number
set norelativenumber
set cursorline
set wrap
set wildmenu
set tabstop=4
set shiftwidth=4
set noerrorbells
set novisualbell
"set mouse=a
set hlsearch
exec "nohlsearch"
set incsearch
set smartcase

set laststatus=2 "总是显示状态栏

"再次打开文件，光标自动跳转到上一次光标位置
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

if has("cscope")
    set csprg=/usr/bin/cscope
    set csto=0
    set cst
    set nocsverb
    " add any database in current directory
        if filereadable("cscope.out")
            cs add cscope.out
    " else search cscope.out elsewhere
        else
            let cscope_file=findfile("cscope.out", ".;")
            let cscope_pre=matchstr(cscope_file, ".*/")
            if !empty(cscope_file) && filereadable(cscope_file)
                exe "cs add" cscope_file cscope_pre
            endif
        endif
endif

let mapleader=" "

set nocompatible              " be iMproved, required
filetype on                  " required
filetype indent on
filetype plugin on

let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

