filetype plugin on
filetype indent on

set autoread
" :W sudo saves the file 
" (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null

" no command execution from modeline
set nomodeline

" Turn on the Wild menu
set wildmenu

" Enable hidden buffers
set hidden

" Clipboard copy & paste
"set clipboard=unnamedplus

" Always show current position
set ruler

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Inenteremental search
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" Do not show matching brackets when text indicator is over them
" set noshowmatch
" let loaded_matchparen = 1

" No annoying sound on errors
set noerrorbells
set novisualbell

set wrap
set linebreak
set nolist  " list disables linebreak

" Enable syntax highlighting
syntax enable

if (has("termguicolors"))
  set termguicolors
endif

set t_Co=256
set background=dark

colorscheme spacemacs-theme

" Use tabs for indent
set smarttab
set smartindent
set autoindent
set copyindent
set preserveindent

set wildmode=longest,list,full
set wildmenu

set cursorline
set number
set relativenumber

" Transparency
"hi Normal guibg=NONE ctermbg=NONE

"set list!
"set listchars=trail:⛤,extends:⟩,precedes:⟨,nbsp:␣,conceal:…

" Map leader to do extra key combinations
let mapleader = " "

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<Enter>

" Fast saving
nmap <leader>w :w!<Enter>

" Buffer switching
nmap <leader>bb :Buffers<Enter>
nmap <leader>bl :Buffers<Enter>
nmap <leader>bn :bnext<Enter>
nmap <leader>bp :bprevious<Enter>

nmap <leader>ll :Lines<Enter>
nmap <leader>mm :Marks<Enter>
nmap <leader>ww :Windows<Enter>
nmap <leader>hh :History/<Enter>
nmap <leader>rr :reg<Enter>

" finding files
nmap <leader>ff :Files<Enter>
nmap <leader>pp :FufDir<Enter>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
nmap <leader>sp :ALEFindReferences<Enter>
nmap <leader>ss :ALESymbolSearch<Enter>
nmap <leader>gd :ALEGoToDefinition<Enter>
nmap <leader>?? :ALEHover<Enter>

let g:ale_fixers = {'*': ['remove_trailing_lines', 'trim_whitespace']}

" Enable completion where available.
" This setting must be set before ALE is loaded.
let g:ale_completion_enabled = 1
let g:ale_warn_about_trailing_whitespace = 1
let g:ale_warn_about_trailing_lines = 1

" Use ALE and also some plugin 'foobar' as completion sources for all code.
"let g:deoplete#sources = {'_': ['ale']}
"let g:deoplete#enable_at_startup = 1

"let g:ale_lint_on_text_changed = 'never'
" You can disable this option too
" if you don't want linters to run on opening a file
"let g:ale_lint_on_enter = 0

" Set airline theme
let g:airline_theme='base16_spacemacs'

" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL
