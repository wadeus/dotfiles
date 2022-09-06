filetype plugin indent on

"plugin
call plug#begin('~/.vim/plugged')
  Plug 'rust-lang/rust.vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

"rust auto format
let g:rustfmt_autosave = 1

"key settings
set backspace=2
set tabstop=4
set shiftwidth=4
"file settings
set fileencodings=utf-8,cp932
set nobackup
set noswapfile
set noundofile
set autoread
set hidden
"display settings
set relativenumber
set statusline=%F
set statusline+=%m
set statusline+=%r
set statusline+=%h
set statusline+=%w
set statusline+=%=
set statusline+=[ENC=%{&fileencoding}]
set statusline+=[ROW=%l/%L]
set statusline+=[COL=%c]
set laststatus=2
syntax enable
set showcmd
set wildmode=list:longest
hi Comment ctermfg=Cyan
"search settings
set incsearch
set hlsearch
set wrapscan
set smartcase
"Make the up/down movement one line even if there is a wrap around
noremap j gj
noremap k gk
"Increment and decrement
nnoremap + <C-a>
nnoremap - <C-x>
"Disable arrow keys
noremap <Left> <Nop>
noremap <Down> <Nop>
noremap <Up> <Nop>
noremap <Right> <Nop>
"Complement:{}, (), [], ""
inoremap { {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap ( ()<ESC>i
inoremap (<Enter> ()<Left><CR><ESC><S-o>
inoremap [ []<ESC>i
inoremap [<Enter> []<Left><CR><ESC><S-o>
inoremap " ""<Left>
"Cursor movement during insert mode
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
"indent
set smartindent
augroup vimrc
    autocmd!
    
    autocmd FileType c,cpp setl cindent
    autocmd FileType c,cpp setl expandtab tabstop=4 shiftwidth=4 softtabstop=4 shiftround
augroup END
