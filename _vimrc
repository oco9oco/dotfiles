set langmenu=en_US.UTF-8
syntax on
set nocompatible
"source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim
"behave mswin

""""""""""""""""""""""""""""""""""""""""""""""""
" GUI 설정
""""""""""""""""""""""""""""""""""""""""""""""""
" 폰트 설정. 폰트와 폰트 크기를 지정한다.
if has("gui_running")
set guifont=cascadia\ code:h9:cANSI:qDEFAULT
  set guifontwide=D2Coding:h11:cHANGEUL:qDEFAULT
au GUIEnter * winsize 120 56
au GUIEnter * winpos 960 0
endif

command Apply :w|:so% 

"""" Plugins

call plug#begin()
  Plug 'vim-airline/vim-airline'
  Plug 'bling/vim-bufferline'
  Plug 'vimwiki/vimwiki'
  Plug 'airblade/vim-gitgutter'
  Plug 'junegunn/goyo.vim'
  "Syntax
  Plug 'tpope/vim-markdown'
  "Colorscheme
  Plug 'morhetz/gruvbox'
call plug#end()

set backspace=indent,eol,start
set encoding=UTF-8
filetype plugin indent on
syntax on
set autoread
set wildmenu
colorscheme gruvbox
set background=dark 
set autowrite
"Airline settings
let g:airline_powerline_fonts = 1

""""""""""""""""""""""""""""""""""""""""""""""""
" VI 기본 설정
""""""""""""""""""""""""""""""""""""""""""""""""


" 자동 들여쓰기를 설정합니다.
set ai
 
" 경고 소리를 화면 깜빡임으로 대체
set visualbell
 
" 들여쓰기 폭을 정합니다.
set shiftwidth=2
 
" 탭의 폭을 정합니다.
set tabstop=2
 
" 탭을 스페이스로 태체합니다.
set et
 
" C의 구문에 맞게 들여쓰기 합니다
set cindent
 
" 라인수를 표시해 줍니다
set nu
 
" 각 파일에 해당하는 문법(Syntax)를 적용시켜줍니다.
" C나 Java등 사용시 색상등..
syntax on
 
 
" 파일 편집시 undo 할수 있는 최대 횟수 설정
set history=100
 
" 함수 닫기표시
set sm
 
" u타이핑시 마우스 커서 감추기
set mousehide
 
" 최소한 2줄 이하로는 자동 스크롤
set scrolloff=2
set hlsearch " 검색어 하이라이팅
set showmatch " 일치하는 괄호 하이라이팅
set ruler " 현재 커서 위치 표시
set incsearch

let mapleader = ' '
" ESC키를 누르면 한글 모드가 해제
" 입력모드에서 이전 언어 설정 모드 유지 
inoremap <ESC> <ESC>:set imdisable<CR>
nnoremap i :set noimd<CR>i
nnoremap I :set noimd<CR>I
nnoremap a :set noimd<CR>a
nnoremap A :set noimd<CR>A
nnoremap o :set noimd<CR>o
nnoremap O :set noimd<CR>O 

au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif

set laststatus=2 " 상태바 표시를 항상한다
"set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\

" 파일 인코딩을 한국어로
if $LANG[0]=='k' && $LANG[1]=='o'
set fileencoding=utf-8,euc-kr
endif


"Vimwiki Options
  let g:vimwiki_list = [{'path': '~/vimwiki/',
                       \ 'syntax': 'markdown', 'ext': '.md'}]
nnoremap <C-TAB> :bn<CR>
