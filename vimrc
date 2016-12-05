set nocompatible               " be iMproved
filetype off                   " required!

call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

filetype plugin indent on

" make backspace erase everything
set backspace=indent,eol,start

"general tabstopp stuff
set ts=2
set sw=2
"set number
set number

let $JS_CMD='node'

let mapleader = ","
set history=1000
set wildmode=list:longest
set ignorecase
set smartcase
"set ruler
set autoindent
set showmatch
set incsearch
set hls

set scrolloff=3

set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

set shell=/usr/bin/zsh


syntax enable
set background=dark

colorscheme vibrantink

:set guifont=Monaco:h12

"if has("gui_macvim")
"	macm File.New\ Tab key=<nop>
"	nmap <D-t> :CommandT<CR>
"endif

"map <leader>c :s/^/#<CR>

"let g:Tex_ViewRule_pdf = 'Preview'

"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
map <C-n> :NERDTreeToggle<CR>

:set cursorline

:nnoremap <CR> :nohlsearch<cr>

:imap <c-j> <%=
:imap <c-k> %>
:imap <c-l> <space>=><space>

:map <leader>t :w<CR>:! rspec spec<CR>

set runtimepath^=~/.vim/bundle/ctrlp.vim
set backupcopy=yes

let g:jsx_ext_required = 0

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

let g:syntastic_javascript_eslint_exec = 'yarn eslint'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)|(node_modules)|(build)$'
  \ }
