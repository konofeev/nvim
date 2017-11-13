" Конфигурация NeoVim
let $VIM_CONFIGURATE=$HOME."/.config/nvim/"

if &compatible
  set nocompatible
endif

filetype plugin indent on
syntax enable

source $VIM_CONFIGURATE/configurate/variable.vim
source $VIM_CONFIGURATE/configurate/common.vim
source $VIM_CONFIGURATE/configurate/abbreviation.vim
source $VIM_CONFIGURATE/configurate/color.vim
source $VIM_CONFIGURATE/configurate/function.vim
source $VIM_CONFIGURATE/configurate/hotkey.vim
source $VIM_CONFIGURATE/configurate/menu.vim
