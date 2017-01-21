" My .vimrc file
" Copyright (c) 2014 Peter Harpending. <pharpend2@gmail.com>
"
" Packages: 
"   haskellmode-vim     https://github.com/lukerandall/haskellmode-vim.git
"   nerdcommenter       git@github.com:scrooloose/nerdcommenter.git
"   powerline           https://github.com/Lokaltog/powerline.git
"   vim-fugitive        git://github.com/tpope/vim-fugitive.git
"   vim-markdown        https://github.com/plasticboy/vim-markdown.git
"   vim-scala           https://github.com/derekwyatt/vim-scala 

" Obvious options
syntax on
filetype plugin on
filetype indent on

colorscheme desert

set autoindent
set smartindent 
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set smartcase           " Do smart case matching
set incsearch           " Incremental search
set rnu                 " Relative line numbers
set splitright          " Split right
set splitbelow          " Split below

let g:vim_markdown_folding_disabled=1
let NERDSpaceDelims=1
" let NERD_haskell_alt_style=1
let NERD_java_alt_style=1
let g:haddock_browser='firefox'

"Line breaks
set lbr
set tw=70
set wrap

" Pathogen
execute pathogen#infect()

"Paren and bracket matching
"See http://vim.wikia.com/wiki/Making_Parenthesis_And_Brackets_Handling_Easier
" inoremap ( ()<Esc>i
" inoremap { {}<Esc>i
" inoremap [ []<Esc>i
" inoremap () ()
" inoremap {} {}
" inoremap [] []
" inoremap (( (<Esc>a
" inoremap {{ {<Esc>a
" inoremap [[ [<Esc>a
inoremap ??? <?php?><Esc>hi<Return><Return><Esc>kA

" Insert mode map
" imap <A-'> `

"Surround the text
vnoremap _( <Esc>`>a)<Esc>`<i(<Esc>
vnoremap _{ <Esc>`>a}<Esc>`<i{<Esc>
vnoremap _[ <Esc>`>a]<Esc>`<i[<Esc>
vnoremap _< <Esc>`>a><Esc>`<i<<Esc>
vnoremap _" <Esc>`>a"<Esc>`<i"<Esc>
vnoremap _' <Esc>`>a'<Esc>`<i'<Esc>
vnoremap _""" <Esc>`>a"""<Esc>`<i"""<Esc>
vnoremap _''' <Esc>`>a'''<Esc>`<i'''<Esc>
