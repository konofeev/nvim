" Конфигурация NeoVim
let $VIM_CONFIGURATE=$HOME."/.config/nvim/"

if &compatible
  set nocompatible
endif

set runtimepath+=$VIM_CONFIGURATE/bundle/repos/github.com/Shougo/dein.vim

if dein#load_state($VIM_CONFIGURATE.'/bundle')
  call dein#begin($VIM_CONFIGURATE.'/bundle')
  call dein#add($VIM_CONFIGURATE.'/bundle/repos/github.com/Shougo/dein.vim')

  " Расширения
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Shougo/vimproc.vim', {'build' : 'make'})
  call dein#add('Shougo/vimshell')
  call dein#add('Shougo/denite.nvim')
  call dein#add('Shougo/Unite.vim')
  call dein#add('Shougo/vimfiler.vim')
  call dein#add('vim-scripts/dbext.vim')
  call dein#add('junegunn/vim-easy-align')
  call dein#add('easymotion/vim-easymotion')
  call dein#add('tpope/vim-surround')
  call dein#add('vim-scripts/Mark--Karkat')

  " Required:
  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

" Установка неустановленных плагинов
if dein#check_install()
  call dein#install()
endif

source $VIM_CONFIGURATE/configurate/variable.vim
source $VIM_CONFIGURATE/configurate/common.vim
source $VIM_CONFIGURATE/configurate/abbreviation.vim
source $VIM_CONFIGURATE/configurate/color.vim
source $VIM_CONFIGURATE/configurate/function.vim
source $VIM_CONFIGURATE/configurate/hotkey.vim
source $VIM_CONFIGURATE/configurate/menu.vim
source $VIM_CONFIGURATE/configurate/plugin.vim
