syntax enable
set encoding=utf-8
set showcmd
filetype plugin indent on

"" Whitespace
set nowrap
set tabstop=4 shiftwidth=4
set expandtab
set backspace=indent,eol,start
set smartindent

"" Formatting
set tw=80

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set smartcase

"" Miscellaneous
set number
set laststatus=2

let mapleader=","

"" My bindings

"" Insert date
nmap <Leader>dd :r! date<Enter>

"" .vimrc management
nmap <Leader>ovr :e ~/.vimrc<Enter>
nmap <Leader>rlv :so ~/.vimrc<Enter>
augroup AutoReloadVimcRC
    au!
    " automatically reload vimrc when it's saved
    au BufWritePost .vimrc so ~/.vimrc
augroup END

"" Window Navigation

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

"" Pathogen

call pathogen#infect()

"" Plugins
"" CtrlP

map <leader>f :CtrlP<cr>

"" VimWiki

let g:vimwiki_list = [{'syntax': 'markdown', 'ext':'.md'}]
nmap <Leader>td :VimWikiL
nmap <Leader>td :VimWikiToggleListItem
