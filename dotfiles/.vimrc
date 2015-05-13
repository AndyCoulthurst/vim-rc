"
"Automatic reloading of .vimrc
set encoding=utf-8
autocmd! bufwritepost .vimrc source %

if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

colorscheme railscasts2  "set colourscheme

set pastetoggle=<F2>
set clipboard=unnamed

set bs=2     " make backspace behave like normal again

" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
" Every unnecessary keystroke that can be saved is good for your health :)
map <c-j> <Esc><c-w>j
map <c-k> <Esc><c-w>k
map <c-l> <Esc><c-w>l
map <c-h> <Esc><c-w>h


" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
vnoremap < <gv
vnoremap > >gv


" Enable syntax highlighting
" You need to reload this file for the change to apply
"" filetype off
filetype plugin indent on
syntax on


" Showing line numbers and length
set number  " show line numbers
set nowrap  " don't automatically wrap on load
"" set fo-=t   " don't automatically wrap text when typing

" Useful settings
"" set history=700
"" set undolevels=700

" Real programmers don't use TABs but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab


" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase


" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
set nobackup
set nowritebackup
set noswapfile


" Setup Pathogen to manage your plugins
" mkdir -p ~/.vim/autoload ~/.vim/bundle
" curl -so ~/.vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim
" Now you can install any plugin into a .vim/bundle/plugin-name/ folder
call pathogen#infect()

" ============================================================================
" Python IDE Setup
" ============================================================================

" Settings for ctrlp
" cd ~/.vim/bundle
" git clone https://github.com/kien/ctrlp.vim.git
"" let g:ctrlp_max_height = 30
"" set wildignore+=*.pyc
"" set wildignore+=*_build/*
"" set wildignore+=*/coverage/*

" Settings for python-mode
" cd ~/.vim/bundle
" git clone https://github.com/klen/python-mode
map <Leader>g :call RopeGotoDefinition()<CR>
let ropevim_enable_shortcuts = 1
let g:pymode_doc = 0
let g:pymode_virtualenv = 1
let g:pymode_rope_goto_def_newwin = "vnew"
let g:pymode_rope_extended_complete = 1
let g:pymode_breakpoint = 0
let g:pymode_syntax = 1
let g:pymode_syntax_builtin_objs = 0
let g:pymode_syntax_builtin_funcs = 0
let g:pymode_lint_ignore="E501,W391"
let g:pymode_rope = 0 

map <Leader>b Oimport pdb; pdb.set_trace() # BREAKPOINT<C-c>

map <c-n> :NERDTreeToggle<CR>

map <silent> <F5> :le<CR>
nmap <c-s> :w<CR>
vmap <c-s> <Esc><c-s>gv
imap <c-s> <Esc><c-s>

"" Template mapping for surround
let g:surround_45 = "{% \r %}"
" -
let g:surround_61 = "{{ \r }}"
" =
let g:surround_43 = "{{\r}}"
" +
let g:surround_46 = "<!-- \r -->"
" .
let g:surround_44 = "/*\r*/"
" ,

"" insert spaces in nm
nmap <Space> i<Space><Esc>

map <c-x> <c-w>c
"nmap <CR> i<CR><Esc>
"" Was interferring with flakes

"" disable arrowkeys to speed up
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

"" insert line below and above respectively
map <F8> o<Esc>
map <F9> O<Esc>

map <tab> :tabn<CR>

"syntastic

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"vim-airline (always show)
set laststatus=2

"vim jedi for python autocompletion
let g:jedi#popup_select_first = 0
let g:jedi#popup_on_dot = 0
