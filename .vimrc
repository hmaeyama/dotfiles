"dein.vim dark power
let s:dein_dir = expand('~/.dotfiles/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if &compatible
  set nocompatible
endif

" dein.vim をインストールしていない場合は自動インストール
if !isdirectory(s:dein_repo_dir)
  echo "install dein.vim..."
  execute '!git clone git://github.com/Shougo/dein.vim' s:dein_repo_dir
endif
execute 'set runtimepath^=' . s:dein_repo_dir

"---------------------------
" Start dein.vim Settings.
"---------------------------

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  let g:rc_dir    = expand('~/.dotfiles/dein')
  let s:toml      = g:rc_dir . '/dein.toml'
  let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'

  " TOMLファイルにpluginを記述
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

" 未インストールを確認
if dein#check_install()
  call dein#install()
endif

set background=dark

" ウインドウにタイトルを表示する
set title
" 行番号を表示
set number
" エンコーディングをutf-8に設定
set encoding=utf-8
" 検索語句のハイライト
set hlsearch
" ルーラーの表示
set ruler
" 構文毎に文字色を変化
syntax on
" 空白文字の表示設定
set list
set listchars=tab:>\ ,trail:-                            " 特殊文字の代替文字(タブと行末のスペース)
highlight SpecialKey ctermfg=darkgray                    " タブの色
highlight NonText ctermfg=darkgray                       " 改行の色
highlight ZenkakuSpace cterm=underline ctermfg=darkgray  " 全角スペースの色
match ZenkakuSpace /　/                                  " スラッシュの間に全角スペース
" タブ入力を複数の空白入力に置き換える
set expandtab
" タブ文字の幅
set tabstop=4
" 自動インデントでずれる幅
set shiftwidth=4
" 改行時に前の行のインデントを継続する
set autoindent
" 改行時に入力された行の末尾に合わせて次の行のインデントを指定する
set smartindent
" 検索の設定
set ignorecase
set smartcase
