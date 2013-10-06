" Obvious options
syntax on
filetype plugin on
filetype indent on
colorscheme desert
"Disable folding in Markdown
let g:vim_markdown_folding_disabled=1

set autoindent
set smartindent 
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set ignorecase          " Do case insensitive matching
set smartcase           " Do smart case matching
set incsearch           " Incremental search
set rnu                 " Relative line numbers
set splitright          " Split right
set splitbelow          " Split below

"Line breaks
set lbr
set tw=80
set wrap

"Keymappings
nmap <C-n> <C-W>j
nmap <C-e> <C-W>k
nmap <C-h> <C-W>h
nmap <C-i> <C-W>l
nmap <C-k> <C-d>
nmap = <Leader>c 
nmap + <Leader>cA
nmap <C-/> u
nmap <C-?> <C-r>
imap <C-Tab> <Esc> 

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
inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap [ []<Esc>i
inoremap () ()
inoremap {} {}
inoremap [] []
inoremap (( (<Esc>a
inoremap {{ {<Esc>a
inoremap [[ [<Esc>a
inoremap ??? <?php?><Esc>hi<Return><Return><Esc>kA
"Tilde key for guake
inoremap <A-'> `
"inoremap <C-j> <Esc>/[)}"'\]>]<CR>a

"Surround the text
vnoremap _( <Esc>`>a)<Esc>`<i(<Esc>
vnoremap _{ <Esc>`>a}<Esc>`<i{<Esc>
vnoremap _[ <Esc>`>a]<Esc>`<i[<Esc>
vnoremap _< <Esc>`>a><Esc>`<i<<Esc>
vnoremap _" <Esc>`>a"<Esc>`<i"<Esc>
vnoremap _' <Esc>`>a'<Esc>`<i'<Esc>
vnoremap _""" <Esc>`>a"""<Esc>`<i"""<Esc>
vnoremap _''' <Esc>`>a'''<Esc>`<i'''<Esc>
