call plug#begin('~/.local/shared/nvim/plugged')
    Plug 'dracula/vim'
    Plug 'scrooloose/nerdtree'
    Plug 'ryanoasis/vim-devicons'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""

let g:dracula_colorterm = 0

let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''

let g:prettier#autoformat_require_pragma = 0
let g:prettier#autoformat_config_present = 1
let g:prettier#autoformat_config_files = ['.prettierrc.yaml', '.prettierrc']
let g:prettier#quickfix_enabled = 0
let g:prettier#quickfix_enabled = 0
autocmd TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-tsserver', 'coc-highlight']

" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""

syntax enable
colorscheme dracula

" use space instead
set tabstop=2     " Size of a hard tabstop (ts).
set shiftwidth=2  " Size of an indentation (sw).
set expandtab     " Always uses spaces instead of tab characters (et).
set softtabstop=0 " Number of spaces a <Tab> counts for. When 0, featuer is off (sts).
set autoindent    " Copy indent from current line when starting a new line.
set smarttab      " Inserts blanks on a <Tab> key (as per sw, ts and sts).


" open new split panes to right and below
set splitright
set splitbelow

" show tab buffer
set showtabline=2

" ignore Case Matter
set ignorecase

" nowrap
" set nowrap


" filetype
filetype on
filetype indent on
filetype plugin on


" open terminal(zsh) on ctrl+n && start terminal in insert mode && turn terminal to normal mode with escape
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
function! OpenZsh()
    split term://zsh
    resize 10
endfunction
nnoremap <c-n> :call OpenZsh()<CR>
tnoremap <Esc> <C-\><C-n>
