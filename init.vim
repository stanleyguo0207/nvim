" Vim options
" http://vimdoc.sourceforge.net/htmldoc/options.html

"
" Auto load vim-plug in fisrt time
"
if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
		\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"
" Create __default_nvim_configs.vim file to make default configs
"
let has_default_nvim_configs_file = 1
if empty(glob('~/.config/nvim/default_nvim_configs.vim'))
	let has_default_nvim_configs_file = 0
	silent! exec "!cp ~/.config/nvim/default_configs/default_nvim_configs.vim ~/.config/nvim/__default_nvim_configs.vim"
endif
source ~/.config/nvim/__default_nvim_configs.vim

"
" Install plugins with vim-plug
"
call plug#begin('~/.config/nvim/plugged')

" Airline
Plug 'https://gitee.com/stanleyguo0207/vim-airline'
Plug 'https://gitee.com/stanleyguo0207/vim-airline-themes'

" ScrollStatus
Plug 'https://gitee.com/stanleyguo0207/vim-scrollstatus'

" Highlighter
Plug 'https://gitee.com/stanleyguo0207/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'https://gitee.com/stanleyguo0207/vim-illuminate'

" File navigation
Plug 'https://gitee.com/stanleyguo0207/fzf', { 'do': { -> fzf#install() } }
Plug 'https://gitee.com/stanleyguo0207/fzf.vim'
Plug 'https://gitee.com/stanleyguo0207/LeaderF', { 'do': ':LeaderfInstallCExtension' }
Plug 'https://gitee.com/stanleyguo0207/rnvimr'
Plug 'https://gitee.com/stanleyguo0207/any-jump.vim'

" Symbols and tags
Plug 'https://gitee.com/stanleyguo0207/vista.vim'

" Completion
Plug 'https://gitee.com/stanleyguo0207/coc.nvim', {'branch': 'release'}
Plug 'https://gitee.com/stanleyguo0207/tmux-complete.vim'

" Undo tree
Plug 'https://gitee.com/stanleyguo0207/undotree'

" Git
Plug 'https://gitee.com/stanleyguo0207/vim-gitgutter'
Plug 'https://gitee.com/stanleyguo0207/agit.vim'

" Autoformat
Plug 'https://gitee.com/stanleyguo0207/vim-maktaba'
Plug 'https://gitee.com/stanleyguo0207/vim-codefmt'

" Go
" Plug 'https://gitee.com/stanleyguo0207/vim-go', { 'do': ':GoUpdateBinaries', 'for': ['go', 'vim-plug'] }
Plug 'https://gitee.com/stanleyguo0207/vim-go', { 'for': ['go', 'vim-plug'] }

" Python
Plug 'https://gitee.com/stanleyguo0207/vim-python-pep8-indent', { 'for' :['python', 'vim-plug'] }
Plug 'https://gitee.com/stanleyguo0207/semshi', { 'do': ':UpdateRemotePlugins', 'for' :['python', 'vim-plug'] }
Plug 'https://gitee.com/stanleyguo0207/braceless.vim', { 'for' :['python', 'vim-plug'] }

" Markdown
Plug 'https://gitee.com/stanleyguo0207/vim-instant-markdown', {'for': 'markdown'}
Plug 'https://gitee.com/stanleyguo0207/vim-table-mode', { 'on': 'TableModeToggle', 'for': ['text', 'markdown', 'vim-plug'] }
Plug 'https://gitee.com/stanleyguo0207/vim-markdown-toc', { 'for': ['gitignore', 'markdown', 'vim-plug'] }
Plug 'https://gitee.com/stanleyguo0207/bullets.vim'

" Editor Enhancement
Plug 'https://gitee.com/stanleyguo0207/auto-pairs.git'
Plug 'https://gitee.com/stanleyguo0207/vim-visual-multi', {'branch': 'master'}
Plug 'https://gitee.com/stanleyguo0207/tcomment_vim'
Plug 'https://gitee.com/stanleyguo0207/vim-surround'
Plug 'https://gitee.com/stanleyguo0207/wildfire.vim'
Plug 'https://gitee.com/stanleyguo0207/tabular'
Plug 'https://gitee.com/stanleyguo0207/vim-easymotion'
Plug 'https://gitee.com/stanleyguo0207/vim-subversive'
Plug 'https://gitee.com/stanleyguo0207/indentLine'
Plug 'https://gitee.com/stanleyguo0207/rainbow'
Plug 'https://gitee.com/stanleyguo0207/vim-xtabline'
Plug 'https://gitee.com/stanleyguo0207/vim-devicons'

" Find & Replace
Plug 'https://gitee.com/stanleyguo0207/far.vim'

" Async
Plug 'https://gitee.com/stanleyguo0207/asynctasks.vim'
Plug 'https://gitee.com/stanleyguo0207/asyncrun.vim'

" Applications
Plug 'https://gitee.com/stanleyguo0207/calendar.vim'

call plug#end()

"
" System
"
let &t_ut=''
set autochdir

"
" Editor Behaviors
"
set exrc
set secure
set number
set relativenumber
set cursorline
set hidden
set noexpandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set list
set listchars=tab:\|\ ,trail:▫
set scrolloff=4
set ttimeoutlen=0
set notimeout
set viewoptions=cursor,folds,slash,unix
set wrap
set tw=0
set indentexpr=
set foldmethod=indent
set foldlevel=99
set foldenable
set formatoptions-=tc
set splitright
set splitbelow
set noshowmode
set showcmd
set wildmenu
set ignorecase
set smartcase
set shortmess+=c
set inccommand=split
set completeopt=longest,noinsert,menuone,noselect,preview
set ttyfast
set lazyredraw
set visualbell
silent !mkdir -p ~/.config/nvim/tmp/backup
silent !mkdir -p ~/.config/nvim/tmp/undo
set backupdir=~/.config/nvim/tmp/backup,.
set directory=~/.config/nvim/tmp/backup,.
if has('persistent_undo')
	set undofile
	set undodir=~/.config/nvim/tmp/undo,.
endif
set colorcolumn=80
set updatetime=100
set virtualedit=block

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

"
" Terminal Behaviors
"
let g:neoterm_autoscroll = 1
autocmd TermOpen term://* startinsert
tnoremap <C-N> <C-\><C-N>
tnoremap <C-O> <C-\><C-N><C-O>
let g:terminal_color_0  = '#000000'
let g:terminal_color_1  = '#FF5555'
let g:terminal_color_2  = '#50FA7B'
let g:terminal_color_3  = '#F1FA8C'
let g:terminal_color_4  = '#BD93F9'
let g:terminal_color_5  = '#FF79C6'
let g:terminal_color_6  = '#8BE9FD'
let g:terminal_color_7  = '#BFBFBF'
let g:terminal_color_8  = '#4D4D4D'
let g:terminal_color_9  = '#FF6E67'
let g:terminal_color_10 = '#5AF78E'
let g:terminal_color_11 = '#F4F99D'
let g:terminal_color_12 = '#CAA9FA'
let g:terminal_color_13 = '#FF92D0'
let g:terminal_color_14 = '#9AEDFE'

"
" Basic Mappings
" change leader key to space
"
let mapleader=" "
noremap ; :
noremap Q :q<CR>
noremap <C-q> :qa<CR>
noremap S :w<CR>

"
" Open the vimrc file
"
noremap <LEADER>rc :e ~/.config/nvim/init.vim<CR>
noremap <LEADER>rv :e .nvimrc<CR>

" Copy till the end of the line
noremap Y y$

" Copy to system clipboard
vnoremap Y "+y

" Indentation
nnoremap < <<
nnoremap > >>

" Search
noremap <LEADER><CR> :nohlsearch<CR>

" Adjacent duplicate words
noremap <LEADER>dw /\(\<\w\+\>\)\_s*\1

" Space to Tab
nnoremap <LEADER>tt :%s/    /\t/g
vnoremap <LEADER>tt :s/    /\t/g

" Folding
noremap <silent> <LEADER>o za

" Cursor Movement
noremap <silent> \v v$h

" vim-scrollstatus
let g:scrollstatus_size = 12
" let g:scrollstatus_symbol_track = '-'
" let g:scrollstatus_symbol_bar = '|'
let g:airline_section_x = '%{ScrollStatus()}'
let g:airline_section_y = airline#section#create_right(['filetype'])
let g:airline_section_z = airline#section#create([
		\ '%#__accent_bold#%3l%#__restore__#/%L', ' ',
		\ '%#__accent_bold#%3v%#__restore__#/%3{virtcol("$") - 1}',
		\ ])
