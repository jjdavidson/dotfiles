" Basic settings
set nocompatible

" Editor Settings
set shiftwidth=4
set tabstop=4
set expandtab
set nobackup
set scrolloff=10
set incsearch
set ignorecase
set smartcase
set showmode
set showmatch
set history=100

" Wildmenu Settings
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Remappings
let mapleader=","
inoremap jj <esc>
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>

" Navigation
noremap H ^
noremap J }
noremap K {
noremap L $

" Buffer
nnoremap Y y$
vnoremap <leader>y "+y
nnoremap <leader>p "+p

" Plugins
call plug#begin()
Plug 'lervag/vimtex'
    filetype plugin indent on
    syntax enable
    set encoding=utf-8
    let g:vimtex_view_method='zathura'
Plug 'SirVer/ultisnips'
    let g:UltiSnipsExpandTrigger = "<tab>"
    let g:UltiSnipsJumpForwardTrigger = "<tab>"
    let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
Plug 'honza/vim-snippets'
call plug#end()

" Status Line
set noshowmode
let g:currentmode={
    \ 'n' : 'NORMAL',
    \ 'v' : 'VISUAL',
    \ 'V' : 'V Line',
    \ "\<C-V>" : 'V Block',
    \ 'i' : 'INSERT',
    \ 'R' : 'REPLACE',
    \ 'Rv' : ' V Replace',
    \ 'c' : 'COMMAND',
    \}
set statusline=
set statusline=%Y\ 
set statusline+=%F%m%r%h%w 
set statusline+=%=
set statusline+=%l/%L(%p%%)\ 
set statusline+=[%{toupper(g:currentmode[mode()])}]
set laststatus=2
