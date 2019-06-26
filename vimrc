"source $VIMRUNTIME/defaults.vim
set nocompatible
filetype off

" Plugin definition
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'nanotech/jellybeans.vim'
"Plugin 'vim-scripts/md5.vim'
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
"Plugin 'Valloric/YouCompleteMe'

call vundle#end()

set viminfo=

" Print full path
command -nargs=0 F :echo expand('%:p')

" Switching Coding style command
command StyleFuchsia :set ts=4 | set sw=4 | set et
command StyleLinux :set ts=8 | set sw=8 | set noet

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
set encoding=utf-8
set history=200
set bs=2
set wildmenu
set autoindent
set hlsearch
set cursorline
set incsearch
set nu
set showcmd
set cinoptions+=:0
set laststatus=2
set background=dark
set ignorecase
set t_Co=256
" set list
set listchars=tab:>-
syntax on

" Coding style
"set ts=4
"set shiftwidth=4
"set et
set ts=8
set shiftwidth=8
set noet

if has('gui_running')
	colorscheme jellybeans
	set guioptions =
else
	" :highlight (to list all highlight colors)
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
	hi Type ctermfg=215
	hi MatchParen term=reverse ctermbg=DarkGrey
	hi CursorLine term=underline cterm=bold ctermbg=236 guibg=Grey40
	hi SpecialKey ctermfg=239
	hi QuickFixLine ctermbg=DarkGrey
	hi cFormat ctermfg=147
	hi DiffDelete term=bold ctermfg=24 ctermbg=24 gui=bold guifg=Blue guibg=DarkCyan
	hi DiffAdd term=bold ctermfg=123 ctermbg=24 guibg=DarkBlue
	hi DiffText term=bold cterm=bold ctermfg=white ctermbg=172 gui=bold guibg=Red
	hi DiffChange term=bold ctermbg=137 guibg=DarkMagenta
	hi Folded term=standout ctermfg=195 ctermbg=237 guifg=Cyan guibg=DarkGrey
endif

" YCM
let g:ycm_autoclose_preview_window_after_insertion = 1
"let g:ycm_confirm_extra_conf = 0
let g:ycm_show_diagnostics_ui = 1
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

" Cscope
set nocscopeverbose
let g:cscope_silent = 1
nnoremap  <leader>fs :call CscopeFind('s', expand('<cword>'))<CR>
nnoremap  <leader>fg :call CscopeFind('g', expand('<cword>'))<CR>
nnoremap  <leader>fd :call CscopeFind('d', expand('<cword>'))<CR>
nnoremap  <leader>fc :call CscopeFind('c', expand('<cword>'))<CR>
nnoremap  <leader>ft :call CscopeFind('t', expand('<cword>'))<CR>
nnoremap  <leader>fe :call CscopeFind('e', expand('<cword>'))<CR>
nnoremap  <leader>ff :call CscopeFind('f', expand('<cword>')); lw<CR>
nnoremap  <leader>fi :call CscopeFind('i', expand('<cword>'))<CR>
nnoremap  <leader>q : ccl \| lcl <CR>

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
nnoremap  <leader>ag :execute "LAg " . expand("<cword>") <CR>

