" Конфигурация NeoVim
" TODO: привести в порядок (разбить на логические части), убрать лишнее, добавить пояснения

if &compatible
  set nocompatible
endif

set runtimepath+=~/.config/nvim/extension/vimproc.vim
set runtimepath+=~/.config/nvim/extension/vimfiler.vim
set runtimepath+=~/.config/nvim/extension/unite.vim
set runtimepath+=~/.config/nvim/extension/vimshell.vim
" 'vim-scripts/dbext.vim'
" 'junegunn/vim-easy-align'
" 'easymotion/vim-easymotion'
" 'tomtom/tcomment_vim'
" 'tpope/vim-surround'

filetype plugin indent on
syntax enable

" Аббревиатуры
ab jj <C-r>*

" Возможность скрыть(закрыть) изменённый буфер(файл)
set hidden

" Не переносить строки
set nowrap

" Перенос строк по словам
set linebreak

" Включаем отображение выполняемой в данный момент команды в правом нижнем углу экрана.
set showcmd

" Включаем отображение дополнительной информации в статусной строке
set laststatus=2

" Вирутальный режим редактирования
set virtualedit=all

" Влючить подстветку синтаксиса
syntax on

" Список используемых кодировок для автоматического их определения
set encoding=utf-8
set fileencodings=utf-8,cp1251
set termencoding=utf-8

" Замена символа "-" на пробел, для свёрнутых блоков
set fillchars=vert:│,fold:\ " используем пробел

" Первые и последении строки всегда видны. Удобное пролистывание.
set scrolloff=5

" Автосмена каталога
autocmd BufEnter * silent! lcd %:p:h

" Корректная работа с кириллицой
set iskeyword=$,@,a-z,A-Z,48-57,_,128-175,192-255

" Отступы\табуляция
set autoindent " автоматическая вставка tab!
set shiftwidth=4
set tabstop=4
setlocal tabstop=4
set softtabstop=4

" Используем пробелы вместо табуляций
set expandtab

" Более 'умные' отступы при вставке их с помощью <TAB>
set smarttab

" Оmключаем фолдинг (сворачивание участков кода)
set foldenable

" Сворачивание кода на основе отступов
set foldmethod=syntax

" Уровень сворачивания по-умолчанию
set foldlevel=0

" Регистронезависимый поиск
set ignorecase

" Искать сразу при наборе символов
set incsearch

" Чтобы работал backspace!
set backspace=2

" Временные файлы
set backup
set writebackup

" Сохранять историю изменений файлов
set undofile

" Каталоги для временных файлов
set backupdir=$HOME/.config/nvim/temp/backup/
set directory=$HOME/.config/nvim/temp/swap/
set undodir=$HOME/.config/nvim/temp/undo/

" При вводе закрывающей скобки подсвечиваем открывающую скобку
set showmatch

" Использовать диалоги вместо сообщений об ошибках
set confirm

" Хранить больше истории команд
set history=128

" Размер истории для отмены правок
set undolevels=2048

set clipboard=unnamed
set clipboard+=unnamedplus

" При вставке фрагмента сохраняет отступ
set pastetoggle=

" Количество строк, для которых применяется синтаксис
syn sync minlines=20
syn sync maxlines=300


" Клавиша <LEADER>
let mapleader = ","

" Вкладки
nnoremap <C-Tab> :tabnext<CR>
nnoremap <C-S-Tab> :tabprevious<CR>
" Выход из режима редактирования
inoremap <S-SPACE> <ESC>
" Выход из режима ввода команд
cnoremap <S-SPACE> <ESC>
nmap <SPACE>l :tabnext<CR>
nmap <SPACE>h :tabprevious<CR>
nmap <SPACE>n :tabnew<CR>
nmap <SPACE>k :cprevious<CR>
nmap <SPACE>j :cnext<CR>
nmap <SPACE>o :copen<CR>
nmap <SPACE>t :tabnew %<CR>

nmap <LEADER><SPACE> :set hlsearch!<CR>
" Закрыть вим
nmap <SPACE><ESC> :quitall<CR>

" Перенос строк
nmap <LEADER>bb :set wrap!<CR>

" Сохранить
nmap <SPACE>w :w<CR>

" Закрыть вкладку
nmap <SPACE>q :tabclose<CR>
" управление окнами
nmap <SPACE>> 20<C-w>><CR>
nmap <SPACE>< 20<C-w><<CR>
nmap <SPACE>= <C-w>=<CR>
nmap <SPACE>+ 10<C-w>+<CR>
nmap <SPACE>- 10<C-w>-<CR>

nmap n nzz
nmap N Nzz
nmap g* g*zz
nmap g# g#zz
noremap j gj
noremap k gk
nnoremap <SPACE>e :execute getline(".")<CR>

vnoremap <SPACE>e :<C-w>execute join(getline("'<","'>"),'<Bar>')<CR>

" Терминал - переход в нормальный режим
tnoremap <Esc> <C-\><C-n>

nnoremap <SPACE>y :let @+ = expand("%:p")<CR>
" Разделить окно и открыть файл под курсором
nnoremap <SPACE>gf <C-w>vgf

set wildmenu
set wcm=<Tab>

" Кодировки
menu Encoding.cp1251 :e ++enc=cp1251<CR>
menu Encoding.cp866  :e ++enc=cp866 ++ff=dos<CR>
menu Encoding.utf-8  :e ++enc=utf8 <CR>
map <F8> :emenu Encoding.<TAB>

" Синтаксис
menu SyntaxMenu.Sql :set syntax=sql<CR>
menu SyntaxMenu.Xml :set syntax=xml<CR>
menu SyntaxMenu.None :set syntax=none<CR>
map <F7> :emenu SyntaxMenu.<TAB>

" Кодировка всего редактора
menu EncodingVim.cp1251 :set encoding=cp1251<CR>
menu EncodingVim.cp866  :set encoding=cp866<CR>
menu EncodingVim.utf-8  :set encoding=utf-8<CR>
map <F2> :emenu EncodingVim.<TAB>

" Сворачивание кода
menu Folding.indent :set foldmethod=indent<CR>
menu Folding.syntax :set foldmethod=syntax<CR>
menu Folding.manual :set foldmethod=manual<CR>
map <F3> :emenu Folding.<TAB>

hi VertSplit cterm=NONE ctermfg=16

let g:loaded_python3_provider=1
