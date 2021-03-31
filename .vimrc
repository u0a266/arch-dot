" dein.vim settings {{{
" install dir {{{
let s:dein_dir = expand('~/.dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
" }}}
"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('~/.dein')

" Let dein manage dein
" Required:
call dein#add('~/.dein/repos/github.com/Shougo/dein.vim')

" Add or remove your plugins here like this:
"call dein#add('Shougo/neosnippet.vim')
"call dein#add('Shougo/neosnippet-snippets')

" .toml file
let s:rc_dir = expand('~/.vim')
if !isdirectory(s:rc_dir)
	call mkdir(s:rc_dir, 'p')
endif
let s:toml = s:rc_dir . '/dein.toml'

" read toml and cache
call dein#load_toml(s:toml, {'lazy': 0})

" Required:
call dein#end()

" Required:
"filetype plugin indent on
"syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

" plugin remove check
let s:removed_plugins = dein#check_clean()
if len(s:removed_plugins) > 0
  call map(s:removed_plugins, "delete(v:val, 'rf')")
  call dein#recache_runtimepath()
endif

"End dein Scripts-------------------------

set fileencodings=utf-8,cp932
syntax on
filetype plugin indent on
colorscheme nord
set helplang=ja,en
set nu
set hlsearch
set incsearch
set cursorline
set noswapfile
set nobackup
set smartindent
set clipboard+=unnamed

nnoremap <C-j> }
nnoremap <C-k> {
