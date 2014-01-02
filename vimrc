" My .vimrc file
" Copyright (c) 2014 Peter Harpending. <pharpend2@gmail.com>
"
" Packages: 
"   haskellmode-vim     https://github.com/lukerandall/haskellmode-vim.git
"   nerdcommenter       git@github.com:scrooloose/nerdcommenter.git
"   vim-fugitive        git://github.com/tpope/vim-fugitive.git
"   vim-markdown        https://github.com/plasticboy/vim-markdown.git
"   vim-scala           https://github.com/derekwyatt/vim-scala 

" Obvious options
syntax on
filetype plugin on
filetype indent on

colorscheme delek

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
set tw=80
set wrap

"Keymappings
noremap <C-n> <C-W>j
noremap <C-e> <C-W>k
noremap <C-h> <C-W>h
noremap <C-i> <C-W>l
nmap <C-k> <C-d>
nmap = <Leader>c 
nmap + <Leader>cA
nmap <C-/> u
nmap <C-?> <C-r>

" Motion remappings for Colemak
" Remap j to n, and vice versa
noremap j n
noremap n j
" Remap J to N and vice versa.
noremap J N
noremap N J
" Remap k to e, and vice versa
noremap k e
noremap e k
" Remap K to E, and vice versa
noremap K E
noremap E K
" Remap l to i, and vice versa.
noremap l i
noremap i l
" Remap L to I and vice versa.
noremap L I
noremap I L

"change the font to 10 point Liberation Mono
if has("gui_running")
    if has("gui_gtk2")
        set guifont=Liberation\ Mono\ 10
    elseif has("gui_photon")
        set guifont=Liberation\ Mono:s10
    elseif has("gui_kde")
        set guifont=Liberation\ Mono/10/-1/5/50/0/0/0/1/0
    elseif has("x11")
        set guifont=-*-liberation-mono-medium-r-normal-*-*-180-*-*-m-*-*
    else
        set guifont=Liberation_Mono:h11:cDEFAULT
    endif
endif

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

" GHCi in Haskell
command GhciFile ghci
command GhciRange ghcil
command GhciReload ghcir

" Remap Tab to Escape
vnoremap <Tab> <Esc>gV
onoremap <Tab> <Esc>
inoremap <Tab> <Esc>`^
inoremap <Leader><Tab> <Tab>
" inoremap <C-Tab> <Tab>
" inoremap <M-i> <Tab>
