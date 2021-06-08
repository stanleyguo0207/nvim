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
if empty(glob('~/.config/nvim/__default_nvim_configs.vim'))
	let has_default_nvim_configs_file = 0
	silent! exec "!cp ~/.config/nvim/default_configs/default_nvim_configs.vim ~/.config/nvim/__default_nvim_configs.vim"
endif
source ~/.config/nvim/__default_nvim_configs.vim

"
" Install plugins with vim-plug
"
call plug#begin('~/.config/nvim/plugged')

" themes
Plug 'dracula/vim', { 'as': 'dracula' }

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

" Highlight
Plug 'https://gitee.com/stanleyguo0207/vim-lsp-cxx-highlight.git'

"cUndo tree
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
Plug 'https://gitee.com/stanleyguo0207/auto-pairs'
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
set cmdheight=2
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
set lazyredraw
set regexpengine=0
set termguicolors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
colorscheme dracula
hi NonText ctermfg=gray guifg=grey10
if has("nvim-0.5.0") || has("patch-8.1.1564")
  set signcolumn=number
else
  set signcolumn=yes
endif

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
"

let g:mapleader = "\<Space>"
let g:maplocalleader = ','

" Enter Command-line mode
noremap ; :
" Shutdown current buffer
noremap Q :q<CR>
" Save current buffer
noremap S :w<CR>

"
" Buffer
"

" Shutdown current buffer
noremap <LEADER>bq :q<CR>
" Shutdown all buffer
noremap <LEADER>bQ :qa<CR>
" Save current buffer
noremap <LEADER>bs :w<CR>
" Shutdown all buffer exclude first buffer
noremap <LEADER>bf <C-w>o

"
" Vimrc config
"

" Source init.vim
noremap <LEADER><LEADER>sr :source ~/.config/nvim/init.vim<CR>
" Edit init.vim
noremap <LEADER><LEADER>er :e ~/.config/nvim/init.vim<CR>
" Create .nvimrc
noremap <LEADER><LEADER>ev :e .nvimrc<CR>

" Copy till the end of the line
noremap Y y$

" Copy to system clipboard
vnoremap Y "+y

" Indentation
nnoremap < <<
nnoremap > >>

" No highlight search result
noremap <LEADER><CR> :nohlsearch<CR>

" Adjacent duplicate words
noremap <LEADER>dw /\(\<\w\+\>\)\_s*\1

" Space to Tab
nnoremap <LEADER>tt :%s/    /\t/g
vnoremap <LEADER>tt :s/    /\t/g

" Folding
noremap <silent> <LEADER>za za
noremap <silent> <LEADER>zR zR
noremap <silent> <LEADER>zM zM

"
" Cursor Movement
"

" visual mode to end of line
noremap <silent> \v v$h

" insert mode to end of line
inoremap <C-a> <Esc>A

" Searching
noremap - N
noremap = n

"
" Window management
"
noremap <LEADER>ww <C-w>w
noremap <LEADER>wk <C-w>k
noremap <LEADER>wj <C-w>j
noremap <LEADER>wh <C-w>h
noremap <LEADER>wl <C-w>l

" Split the screens to up (horizontal), down (horizontal), left (vertical), right (vertical)
noremap <LEADER>wsk :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
noremap <LEADER>wsj :set splitbelow<CR>:split<CR>
noremap <LEADER>wsh :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
noremap <LEADER>wsl :set splitright<CR>:vsplit<CR>

" Resize splits with arrow keys
noremap <UP> :res +5<CR>
noremap <DOWN> :res -5<CR>
noremap <LEFT> :vertical resize-5<CR>
noremap <RIGHT> :vertical resize+5<CR>

" Place the two screens up and down
noremap <LEADER>wth <C-w>t<C-w>K
" Place the two screens side by side
noremap <LEADER>wtv <C-w>t<C-w>H

" Rotate screens
noremap <LEADER>wrh <C-w>b<C-w>K
noremap <LEADER>wrv <C-w>b<C-w>H

"
" Tab management
"

" Create a new tab
noremap <LEADER>tn :tabe<CR>
" Move around tabs
noremap <LEADER>tj :-tabnext<CR>
noremap <LEADER>tk :+tabnext<CR>
" Move the tabs with
noremap <LEADER>tmj :-tabmove<CR>
noremap <LEADER>tmk :+tabmove<CR>

"
" Markdown Settings
"

"source ~/.config/nvim/ftplugin/markdown.vim
"autocmd BufRead,BufNewFile *.md setlocal spell

" Open a new instance of the cwd
" nnoremap \t :tabe<CR>:-tabmove<CR>:term sh -c 'st'<CR><C-\><C-N>:q<CR>

" Opening a terminal window
noremap <LEADER>/ :set splitbelow<CR>:split<CR>:res +10<CR>:term<CR>

" Jump to next '<++>' and edit it
noremap <LEADER>en <Esc>/<++><CR>:nohlsearch<CR>c41

" Spelling Check
noremap <LEADER><LEADER>sp :set spell!<CR>

" exchange lower and upper ASCII
noremap ` ~

" screen to center
noremap <C-c> zz

" Auto change directory to current dir
autocmd BufEnter * silent! lcd %:p:h

" Call figlet
noremap <LEADER><LEADER>pf :r !figlet

" Find and replace
noremap \s :%s///g<left><left><left>

" Show hlgroup
func! SynGroup()
	let l:s = synID(line('.'), col('.'), 1)
	echo synIDattr(l:s, 'name') . ' -> ' . synIDattr(synIDtrans(l:s), 'name')
endfun
map <LEADER>cs :call SynGroup()<CR>

" Compile function
noremap <LEADER>cr :call CompileRunFileType()<CR>
func! CompileRunFileType()
	exec "w"
	if &filetype == 'c'
		exec "!g++ % -o %<"
		exec "!time ./%<"
	elseif &filetype == 'cpp'
		set splitbelow
		exec "!g++ -std=c++17 % -Wall -o %<"
		:sp
		:res -15
		:term ./%<
	elseif &filetype == 'java'
		set splitbelow
		:sp
		:res -5
		term javac % && time java %<
	elseif &filetype == 'sh'
		:!time bash %
	elseif &filetype == 'python'
		set splitbelow
		:sp
		:term python3 %
	elseif &filetype == 'html'
		silent! exec "!".g:mkdp_browser." % &"
	elseif &filetype == 'markdown'
		exec "InstantMarkdownPreview"
	elseif &filetype == 'tex'
		silent! exec "VimtexStop"
		silent! exec "VimtexCompile"
	elseif &filetype == 'dart'
		exec "CocCommand flutter.run -d ".g:flutter_default_device." ".g:flutter_run_args
		silent! exec "CocCommand flutter.dev.openDevLog"
	elseif &filetype == 'javascript'
		set splitbelow
		:sp
		:term export DEBUG="INFO,ERROR,WARNING"; node --trace-warnings .
	elseif &filetype == 'go'
		set splitbelow
		:sp
		:term go run .
	endif
endfunc

"
" Plug Settings
"

"
" vim-airline
"

let g:airline_section_x = '%{ScrollStatus()}'
let g:airline_section_y = airline#section#create_right(['filetype'])
let g:airline_section_z = airline#section#create([
		\ '%#__accent_bold#%3l%#__restore__#/%L', ' ',
		\ '%#__accent_bold#%3v%#__restore__#/%3{virtcol("$") - 1}',
		\ ])
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

"
" vim-scrollstatus
"

let g:scrollstatus_size = 12
" let g:scrollstatus_symbol_track = '-'
" let g:scrollstatus_symbol_bar = '|'

"
" vim-hexokinase
"

let g:Hexokinase_highlighters = [
	"\ 'virtual',
	\ 'foregroundfull',
	\ ]

"
" vim-illuminate
"

let g:Illuminate_delay = 750
hi illuminatedWord cterm=undercurl gui=undercurl

"
" fzf
"

let g:fzf_preview_window = 'right:60%'
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.8 } }

set rtp+=/usr/share/fzf
" Regex search
noremap <silent> <C-f> :Rg<CR>
" History
noremap <silent> <C-h> :History<CR>
noremap <LEADER>; :History<CR>
" Show buffers
noremap <silent> <LEADER>fb :Buffers<CR>

func! s:list_buffers()
  redir => list
  silent ls
  redir END
  return split(list, "\n")
endfunc

func! s:delete_buffers(lines)
  execute 'bwipeout' join(map(a:lines, {_, line -> split(line)[0]}))
endfunc

command! BD call fzf#run(fzf#wrap({
	\ 'source': s:list_buffers(),
	\ 'sink*': { lines -> s:delete_buffers(lines) },
	\ 'options': '--multi --reverse --bind ctrl-a:select-all+accept'
	\ }))

" Show buffers whitch will be delete
noremap <LEADER>fd :BD<CR>

"
" LeaderF
"

let g:Lf_PreviewInPopup = 1
let g:Lf_PreviewCode = 1
let g:Lf_ShowHidden = 1
let g:Lf_ShowDevIcons = 1
" Find file current directory
nnoremap <C-p> :Leaderf file<CR>

"
" rnvimr
"

let g:rnvimr_enable_ex = 1
let g:rnvimr_enable_picker = 1
let g:rnvimr_draw_border = 0
let g:rnvimr_border_attr = {'fg': 14, 'bg': -1}
let g:rnvimr_shadow_winblend = 70
let g:rnvimr_ranger_cmd = 'ranger --cmd="set draw_borders both"'
highlight link RnvimrNormal CursorLine
let g:rnvimr_action = {
	\ '<C-t>': 'NvimEdit tabedit',
	\ '<C-x>': 'NvimEdit split',
	\ '<C-v>': 'NvimEdit vsplit',
	\ 'gw': 'JumpNvimCwd',
	\ 'yw': 'EmitRangerCwd'
	\ }
let g:rnvimr_layout = { 'relative': 'editor',
	\ 'width': &columns,
	\ 'height': &lines,
	\ 'col': 0,
	\ 'row': 0,
	\ 'style': 'minimal' }
let g:rnvimr_presets = [{'width': 0.800, 'height': 0.600}]

" Toggle Rnvimr
nnoremap <silent> R :RnvimrToggle<CR><C-\><C-n>:RnvimrResize 0<CR>

"
" any-jump
"

let g:any_jump_window_width_ratio  = 0.8
let g:any_jump_window_height_ratio = 0.9
let g:any_jump_disable_default_keybindings = 1

nnoremap <LEADER>aj :AnyJump<CR>
nnoremap <LEADER>ab :AnyJumpBack<CR>

"
" vista
"

let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista_default_executive = 'coc'
let g:vista_fzf_preview = ['right:50%']
let g:vista#renderer#enable_icon = 1
let g:vista#renderer#icons = {
	\ "function": "\uf794",
	\ "variable": "\uf71b",
	\ }

" Show tag list
noremap <LEADER>vl :Vista!!<CR>
" Search tag list
noremap <C-t> :silent! Vista finder coc<CR>

"
" coc.nvim
"

let g:coc_global_extensions = [
	\ 'coc-pyright',
	\ 'coc-diagnostic',
	\ 'coc-explorer',
	\ 'coc-json',
	\ 'coc-lists',
	\ 'coc-translator',
	\ 'coc-snippets',
	\ 'coc-git']
inoremap <silent><expr> <TAB>
	\ pumvisible() ? "\<C-n>" :
	\ <SID>check_back_space() ? "\<TAB>" :
	\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
func! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunc
inoremap <silent><expr> <C-o> coc#refresh()

inoremap <silent><expr> <CR> pumvisible() ? coc#_select_confirm()
	\: "\<C-g>u\<CR>\<C-r>=coc#on_enter()\<CR>"

nnoremap <silent> K :call <SID>show_documentation()<CR>

func! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunc

nnoremap <silent><nowait> <LEADER>xd  :<C-u>CocList diagnostics<CR>
nmap <silent> <LEADER>- <Plug>(coc-diagnostic-prev)
nmap <silent> <LEADER>= <Plug>(coc-diagnostic-next)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gD :tab sp<CR><Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

autocmd CursorHold * silent call CocActionAsync('highlight')

nmap rn <Plug>(coc-rename)

" xmap <LEADER>f  <Plug>(coc-format-selected)
" nmap <LEADER>f  <Plug>(coc-format-selected)

xmap <LEADER>xcs  <Plug>(coc-codeaction-selected)
nmap <LEADER>xcs  <Plug>(coc-codeaction-selected)

nmap <LEADER>xcd  <Plug>(coc-codeaction)
nmap <LEADER>xqf  <Plug>(coc-fix-current)

xmap <LEADER>xif <Plug>(coc-funcobj-i)
omap <LEADER>xif <Plug>(coc-funcobj-i)
xmap <LEADER>xaf <Plug>(coc-funcobj-a)
omap <LEADER>xaf <Plug>(coc-funcobj-a)
xmap <LEADER>xic <Plug>(coc-classobj-i)
omap <LEADER>xic <Plug>(coc-classobj-i)
xmap <LEADER>xac <Plug>(coc-classobj-a)
omap <LEADER>xac <Plug>(coc-classobj-a)

nmap <silent> <LEADER>xrs <Plug>(coc-range-select)
xmap <silent> <LEADER>xrs <Plug>(coc-range-select)

set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
let g:airline#extensions#coc#enabled = 1
let airline#extensions#coc#error_symbol = 'Error:'
let airline#extensions#coc#warning_symbol = 'Warning:'
let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'
let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'

" coc-explorer
nmap T :CocCommand explorer<CR>
" coc-translator
nmap ts <Plug>(coc-translator-p)
" coc-snippets
imap <C-l> <Plug>(coc-snippets-expand)
vmap <C-j> <Plug>(coc-snippets-select)
let g:coc_snippet_next = "<C-j>"
let g:coc_snippet_prev = "<C-k>"
imap <C-j> <Plug>(coc-snippets-expand-jump)
xmap <leader>xsn  <Plug>(coc-convert-snippet)

"
" undotree
"

let g:undotree_DiffAutoOpen = 1
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_ShortIndicators = 1
let g:undotree_WindowLayout = 2
let g:undotree_DiffpanelHeight = 8
let g:undotree_SplitWidth = 24
func g:Undotree_CustomMap()
	nmap <buffer> u <plug>UndotreeNextState
	nmap <buffer> e <plug>UndotreePreviousState
	nmap <buffer> U 5<plug>UndotreeNextState
	nmap <buffer> E 5<plug>UndotreePreviousState
endfunc

" Toggle Undotree
noremap L :UndotreeToggle<CR>

"
" agit
"
let g:agit_no_default_mappings = 1

nnoremap <LEADER><LEADER>g :Agit<CR>

"
" vim-maktaba vim-codefmt
"

augroup autoformat_settings
  " autocmd FileType bzl AutoFormatBuffer buildifier
  autocmd FileType c,cpp,proto,javascript,arduino AutoFormatBuffer clang-format
  " autocmd FileType dart AutoFormatBuffer dartfmt
  " autocmd FileType go AutoFormatBuffer gofmt
  " autocmd FileType gn AutoFormatBuffer gn
  " autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
  " autocmd FileType java AutoFormatBuffer google-java-format
  autocmd FileType python AutoFormatBuffer autopep8
  " autocmd FileType rust AutoFormatBuffer rustfmt
  " autocmd FileType vue AutoFormatBuffer prettier
augroup END

"
" vim-go
"

let g:go_echo_go_info = 0
let g:go_doc_popup_window = 1
let g:go_def_mapping_enabled = 0
let g:go_template_autocreate = 0
let g:go_textobj_enabled = 0
let g:go_auto_type_info = 1
let g:go_def_mapping_enabled = 0
let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_chan_whitespace_error = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_functions = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_space_tab_error = 1
let g:go_highlight_string_spellcheck = 1
let g:go_highlight_structs = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_highlight_types = 1
let g:go_highlight_variable_assignments = 0
let g:go_highlight_variable_declarations = 0
let g:go_doc_keywordprg_enabled = 0

"
" vim-instant-markdown
"

let g:instant_markdown_slow = 0
let g:instant_markdown_autostart = 0
let g:instant_markdown_autoscroll = 1

"
" vim-table-mode
"

let g:table_mode_cell_text_object_i_map = 'k<Bar>'
noremap <LEADER><LEADER>t :TableModeToggle<CR>

"
" vim-markdown-toc
"

let g:vmt_cycle_list_item_markers = 1
let g:vmt_fence_text = 'TOC'
let g:vmt_fence_closing_text = '/TOC'

"
" Bullets.vim
"

let g:bullets_enabled_file_types = [
	\ 'markdown',
	\ 'text',
	\ 'gitcommit',
	\ 'scratch'
	\]

"
" vim-visual-multi
"

let g:VM_leader = {'default': ',', 'visual': ',', 'buffer': ','}
let g:VM_maps = {}
let g:VM_custom_motions = {'n': 'h', 'i': 'l', 'u': 'k', 'e': 'j', 'N': '0', 'I': '$', 'h': 'e'}
let g:VM_maps['i'] = 'k'
let g:VM_maps['I'] = 'K'
let g:VM_maps['Find Under'] = '<C-k>'
let g:VM_maps['Find Subword Under'] = '<C-k>'
let g:VM_maps['Find Next'] = ''
let g:VM_maps['Find Prev'] = ''
let g:VM_maps['Remove Region'] = 'q'
let g:VM_maps['Skip Region'] = '<C-n>'
let g:VM_maps["Undo"] = 'l'
let g:VM_maps["Redo"] = '<C-r>'

"
" tcomment_vim
"

nnoremap ti cl
let g:tcomment_textobject_inlinecomment = ''
nmap <LEADER>tc g>c
vmap <LEADER>tc g>
nmap <LEADER>tu g<c
vmap <LEADER>tu g<

"
" vim-surround
"
" cs"' inside "Hello world!" to change it to 'Hello world!'
" cs'<q> to change it to <q>Hello world!</q>
" cst" to get "Hello world!"
" ds" Hello world!
" ysiw] [Hello] world!
"  yss) ([Hello] world!)
" press a capital V (for linewise visual mode) followed by S<p class="important">.
" <p class="important">
"  <em>Hello</em> world!
" </p>

"
" wildfire.vim
"
" in Visual mode, type i' to select all text in '', or type i) i] i} ip

"
" tabular
"

vmap <LEADER>tb :Tabularize /

"
" vim-easymotion
"

let g:EasyMotion_do_mapping = 0
let g:EasyMotion_do_shade = 0
let g:EasyMotion_smartcase = 1

"
" vim-subversive
"

nmap <LEADER>ss <plug>(SubversiveSubstitute)
nmap <LEADER>sl <plug>(SubversiveSubstituteLine)

"
" rainbow
"

let g:rainbow_active = 1

"
" xtabline
"

let g:xtabline_settings = {}
let g:xtabline_settings.enable_mappings = 0
let g:xtabline_settings.tabline_modes = ['tabs', 'buffers']
let g:xtabline_settings.enable_persistance = 0
let g:xtabline_settings.last_open_first = 1

" Print current path
noremap <LEADER>pp :echo expand('%:p')<CR>

"
" far.nvim
"

noremap <LEADER>fr :F  **/*<left><left><left><left><left>
let g:far#mapping = {
	\ "replace_undo" : ["l"],
	\ }

"
" asynctasks
"

let g:asyncrun_open = 6
let g:asyncrun_rootmarks = ['.git', '.svn', '.root', '.project', '.hg']
let g:asynctasks_config_name = '.asynctask'
let g:asynctasks_rtp_config = "asynctasks.ini"
noremap <silent><F3> :AsyncTask grep<CR>
noremap <silent><F6> :AsyncTask project-generate<CR>
noremap <silent><F7> :AsyncTask project-build<CR>
noremap <silent><F8> :AsyncTask project-install<CR>

"
" asyncrun
"

" noremap gp :AsyncRun git push<CR>

"
" vim-calendar
"

noremap <LEADER><LEADER>c :Calendar -view=clock -position=here<CR>
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1
augroup calendar-mappings
	autocmd!
	" diamond cursor
	autocmd FileType calendar nmap <buffer> u <Plug>(calendar_up)
	autocmd FileType calendar nmap <buffer> n <Plug>(calendar_left)
	autocmd FileType calendar nmap <buffer> e <Plug>(calendar_down)
	autocmd FileType calendar nmap <buffer> i <Plug>(calendar_right)
	autocmd FileType calendar nmap <buffer> <C-u> <Plug>(calendar_move_up)
	autocmd FileType calendar nmap <buffer> <C-n> <Plug>(calendar_move_left)
	autocmd FileType calendar nmap <buffer> <C-e> <Plug>(calendar_move_down)
	autocmd FileType calendar nmap <buffer> <C-i> <Plug>(calendar_move_right)
	autocmd FileType calendar nmap <buffer> k <Plug>(calendar_start_insert)
	autocmd FileType calendar nmap <buffer> K <Plug>(calendar_start_insert_head)
	" unmap <C-n>, <C-p> for other plugins
	autocmd FileType calendar nunmap <buffer> <C-n>
	autocmd FileType calendar nunmap <buffer> <C-p>
augroup END

"
" open
"

exec "nohlsearch"

if has_default_nvim_configs_file == 0
	exec "e ~/.config/nvim/__default_nvim_configs.vim"
endif
