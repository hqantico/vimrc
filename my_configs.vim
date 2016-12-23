" Basic formatting settings
set listchars=tab:»·,trail:·
set list
" Turn on line numbering
set number
syntax on
colorscheme monokai

" Enable folding
set foldmethod=indent
set foldlevel=99

" Adds proper PEP-8 settings for Python files
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

" Set correct path for exuberant ctags
let g:Tlist_Ctags_Cmd='/usr/bin/ctags'

" Add F5 binding for deleting trailing whitespace
:nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

" Adding bindings for horizontal scrolling
map <C-L> 20zl " Scroll 20 characters to the right
map <C-H> 20zh " Scroll 20 characters to the left
