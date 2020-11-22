"文字コードをUFT-8に設定
set fenc=utf-8
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd
" 行数を表示
set number
" 現在の行を強調表示
set cursorline
" 現在の行を強調表示（縦）
set cursorcolumn
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" インデントはスマートインデント
set smartindent
" ビープ音を可視化
set visualbell
" 括弧入力時の対応する括弧を表示
set showmatch
" ステータスラインを常に表示
set laststatus=2
" コマンドラインの補完
set wildmode=list:longest
" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk
" シンタックスハイライトの有効化
syntax enable

" タブが「▸-」と表示される
set list listchars=tab:\▸\-
" Tab文字を半角スペースにする
set expandtab
" 行頭以外のTab文字の表示幅
set tabstop=2
" 行頭でのTab文字の表示幅
set shiftwidth=2

" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch

" vundle
set nocompatible
"行頭行末の左右移動で行をまたぐ
set whichwrap=b,s,h,l,<,>,[,]

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" プラグインの導入
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-jp/vimdoc-ja'
Plugin 'jonathanfilip/vim-lucius'
Plugin 'tomasr/molokai'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
Plugin 'itchyny/lightline.vim'

call vundle#end()

filetype plugin indent on

" ヘルプを日本語化
set helplang=ja,en
" colorscheme
colorscheme lucius
set background=dark
syntax on
set t_Co=256
" truecolor
set termguicolors
" 背景色
set background=dark

" NERDTree
nnoremap <silent><C-e> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
" 起動時に NERDTree を開く
autocmd vimenter * NERDTree
" 起動時にメイン画面にカーソルを合わせる(NERDTreeには合わせない)
autocmd VimEnter * wincmd p

" lightline
let g:lightline = {'colorscheme': 'wombat'}

" keymap
" xやsでレジスタに追加しない
nnoremap x "_x
nnoremap s "_s

" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" 置換コマンドを楽にする
noremap <Space>s :%s/

" window/画面分割 系
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sq :<C-u>q<CR>
nnoremap sQ :<C-u>bd<CR>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>p
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
nnoremap s> <C-w>>
nnoremap s< <C-w><
nnoremap s+ <C-w>+
nnoremap s- <C-w>-

"タブ操作
nnoremap st :<C-u>tabnew<CR>
nnoremap sn gt
nnoremap sp gT

