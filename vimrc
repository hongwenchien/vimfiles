set nocompatible
filetype off

" Plugin definition
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'nanotech/jellybeans.vim'
Plugin 'vim-scripts/md5.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'jeaye/color_coded'
Plugin 'yegappan/mru'
"Plugin 'brookhong/cscope.vim'
Plugin 'hungwenchien/cscope.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Shougo/neomru.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'guns/xterm-color-table.vim'
Plugin 'rking/ag.vim'
Plugin 'simplyzhao/cscope_maps.vim'
Plugin 'rhysd/vim-clang-format'

call vundle#end()

" Print full path
command -nargs=0 F :echo expand('%:p')

let g:NERDTreeWinPos = "right"
let g:tagbar_left = 1
let mapleader = ","

" clang_format style
" linux
" let g:clang_format#style_options = {"IndentWidth": 8, "TabWidth": 8, "UseTab": "Always", "ColumnLimit": 120, "BreakBeforeBraces": "Linux", "IndentCaseLabels": "false", "BasedOnStyle": "LLVM"}
" fiasco
let g:clang_format#style_options = {"IndentWidth": 2, "TabWidth": 2, "UseTab": "Never", "ColumnLimit": 80,
	\ "BreakBeforeBraces": "Linux", "IndentCaseLabels": "false", "AllowShortIfStatementsOnASingleLine": "false",
	\ "AllowShortFunctionsOnASingleLine": "false", "AlignConsecutiveAssignments": "true", "AlignConsecutiveDeclarations": "true" }

" VIM options
set autoindent
set hlsearch
set cursorline
set ts=8
set shiftwidth=8
set incsearch
set nu
set showcmd
set cinoptions+=:0
set laststatus=2
set background=dark
set ignorecase
set t_Co=256
syntax on

" Cscope
set nocscopeverbose

if has('gui_running')
	colorscheme jellybeans
	set guioptions =
else
	" help hi for more detail
	hi Search term=reverse ctermfg=0
	hi Search cterm=underline ctermbg=236 ctermfg=13
	hi LineNr ctermfg=245
	hi CursorLineNr ctermfg=255
	"hi Visual ctermfg=255 ctermbg=240
	hi Visual ctermbg=239
	hi TabLineFill ctermfg=black
	hi TabLine ctermfg=black ctermbg=gray
	hi TabLineSel ctermfg=black ctermbg=white
	hi Statement ctermfg=blue
	hi Comment ctermfg=243
	hi Constant ctermfg=green
	hi Identifier ctermfg=magenta
	hi PreProc ctermfg=darkblue
	hi Function ctermfg=yellow
	hi Type ctermfg=cyan
endif

" Cscope
" s: Find this C symbol
nnoremap  <leader>fs :call CscopeFind('s', expand('<cword>'))<CR>
" g: Find this definition
nnoremap  <leader>fg :call CscopeFind('g', expand('<cword>'))<CR>
" d: Find functions called by this function
nnoremap  <leader>fd :call CscopeFind('d', expand('<cword>'))<CR>
" c: Find functions calling this function
nnoremap  <leader>fc :call CscopeFind('c', expand('<cword>'))<CR>
" t: Find this text string
nnoremap  <leader>ft :call CscopeFind('t', expand('<cword>'))<CR>
" e: Find this egrep pattern
nnoremap  <leader>fe :call CscopeFind('e', expand('<cword>'))<CR>
" f: Find this file
nnoremap  <leader>ff :call CscopeFind('f', expand('<cword>'))<CR>
" i: Find files #including this file
nnoremap  <leader>fi :call CscopeFind('i', expand('<cword>'))<CR>

" Key definition
map <f2> :%s/\s\+$//g<CR>
map <f7> :tabprevious<CR>
map <f8> :tabnext<CR>
map <f9> :TagbarToggle<CR>
map <f10> :NERDTreeToggle<CR>
map J : tabprevious<CR>
map K : tabnext<CR>
map <leader>y "+y
map <leader>p "+p
map <C-a> <esc>ggVG<CR>
"noremap <C-t> <C-o>

" SWP or backup files settings
set nobackup
set noswapfile
" set directory=~/.vim/swp//
" set backupdir=~/.vim/backup//

" Ag, the silver searcher
map <C-\> :execute "Ag " . expand("<cword>") <CR>

