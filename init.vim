" Конфигурация NeoVim
" TODO: привести в порядок (разбить на логические части), убрать лишнее, добавить пояснения

if &compatible
  set nocompatible
endif

set runtimepath+=~/.config/nvim/./bundle/repos/github.com/Shougo/dein.vim
if dein#load_state('~/.config/nvim/./bundle')
  call dein#begin('~/.config/nvim/./bundle')

  call dein#add('~/.config/nvim/./bundle/repos/github.com/Shougo/dein.vim')

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

if dein#check_install()
  call dein#install()
endif

source ~/.config/nvim/config/variable.vim
source ~/.config/nvim/config/common.vim
source ~/.config/nvim/config/function.vim
source ~/.config/nvim/config/abbreviation.vim
source ~/.config/nvim/config/hotkey.vim
source ~/.config/nvim/config/menu.vim
source ~/.config/nvim/config/plugin.vim
source ~/.config/nvim/config/color.vim
