" vUNDLE 套件管理
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" List All Plugins
" 佈景主題
Plugin 'editorconfig/editorconfig-vim' 
"Plugin 'xolox/vim-misc'
"Plugin 'xolox/vim-colorscheme-switcher'
"Plugin 'nanotech/jellybeans.vim'
Plugin 'flazz/vim-colorschemes'
" 介面顯示
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
"Plugin 'jistr/vim-nerdtree-tabs'
"Plugin 'tpope/vim-fugitive'
"Plugin 'majutsushi/tagbar'
"Plugin 'terryma/vim-multiple-cursors'
"Plugin 'kien/ctrlp.vim'
"Plugin 'Shougo/neocomplcache.vim'
"Plugin 'asins/vim-dict'
" 編輯加強
"Plugin 'Yggdroot/indentLine'
"Plugin 'tomtom/tcomment_vim'
"Plugin 'mattn/emmet-vim'
"Plugin 'honza/vim-snippets'
"Plugin 'tpope/vim-surround'
"Plugin 'ap/vim-css-color'
"Plugin 'KabbAmine/vCoolor.vim'
"Plugin 'Rykka/clickable.vim'
"Plugin 'Rykka/clickable-things'
"Plugin 'Rykka/os.vim'
" Plugin 'stefanich/php.vim-html-enhanced'
"Plugin 'captbaritone/better-indent-support-for-php-with-html'
"Plugin 'vim-scripts/PHP-correct-Indenting'
"Plugin 'vim-scripts/HTML-AutoCloseTag'
"Plugin 'Townk/vim-autoclose'
"Plugin 'othree/html5.vim'
Plugin 'StanAngeloff/php.vim'
Plugin 'groenewege/vim-less'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"vim-scripts/php.vim-html-enhanced' 檔案編碼
set encoding encoding=utf-8
set fileencodings=utf-8,cp950

" 佈景主題
syntax on                    " 語法上色

" 要套用哪個佈景主題
if has("gui_running") || &t_Co == 88 || &t_Co == 256
  colorscheme darkburn
else
  set background=dark
  colorscheme jellybeans
endif

" 指定主題切換快速鍵
:let g:colorscheme_switcher_define_mappings=0
  
" 界面顯示
set mouse=a                  " 啟用滑鼠
set confirm                  " 操作過程有衝突時，以明確的文字來詢問
set ruler                    " 顯示右下角設定值
set cursorline               " 顯示目前的游標位置
set cursorcolumn             " 顯示目前的游標位置
set number                   " 顯示行號
set colorcolumn=80           " 顯示編輯器建議寬度
set scrolloff=3              " 捲動時保留n行彈性
set laststatus=2
set statusline=%4*%<\%m%<[%f\%r%h%w]\ [%{&ff},%{&fileencoding},%Y]%=\[Position=%l,%v,%p%%]

" 縮排設定
set smartindent
set shiftwidth=4             " 設定縮排寬度
set tabstop=4                " tab 的字元數
set softtabstop=4
set expandtab                " 用 space 代替 tab

" 編輯設定
set backspace=2              " 在 insert 也可用 backspace
set history=1000             " 保留 1000 個使用過的指令

" 搜尋設定
set ic                       " 搜尋不分大小寫。
set hlsearch                 " 設定高亮度顯示搜尋結果
set incsearch                " 在關鍵字還沒完全輸入完畢前就顯示結果

" Ctrl+J Ctrl+k 整行移動
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" 啟用Tab縮牌
nmap <TAB> v>
nmap <S-TAB> v<
vmap <TAB> >gv
vmap <S-TAB> <gv

" 顯示程式碼函式列表
nmap <F8> :TagbarToggle<CR>
"autocmd vimenter * TagbarOpen

" 插入顏色快速鍵
nmap <C-c> :VCoolor <CR>

" 顯示行尾
set listchars=eol:¬,tab:→→,trail:.,extends:>,precedes:<
set list

" NERDTree
nmap <F7> :NERDTreeTabsToggle<CR>
let NERDTreeShowHidden=1    " 顯示隱藏檔
let NERDTreeIgnore = ['\.swp$', '.DS_Store']

let g:neocomplcache_enable_at_startup = 1

" 自動補齊
autocmd filetype javascript set dictionary+=$VIMFILES/bundle/vim-dict/dict/javascript.dic
autocmd filetype javascript set dictionary+=$VIMFILES/bundle/vim-dict/dict/node.dic
autocmd filetype css set dictionary+=$VIMFILES/bundle/vim-dict/dict/css.dic
autocmd filetype php set dictionary+=$VIMFILES/bundle/vim-dict/dict/php.dic

