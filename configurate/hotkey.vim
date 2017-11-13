" ГОРЯЧИЕ КЛАВИШИ

" ОБЩЕЕ {{{

" Клавиша <LEADER>
let mapleader = ","

" Вкладки
nnoremap <C-Tab> :tabnext<CR>
nnoremap <C-S-Tab> :tabprevious<CR>

" Выход из режима редактирования
inoremap <S-SPACE> <ESC>
inoremap jf <ESC>
inoremap fj <ESC>
  
" Выход из режима ввода команд
cnoremap <S-SPACE> <ESC>
cnoremap jf <ESC>
cnoremap fj <ESC>

" Вкладки
nmap <SPACE>l :tabnext<CR>
nmap <SPACE>h :tabprevious<CR>
nmap <SPACE>n :tabnew<CR>
nmap <SPACE>q :tabclose<CR>
nmap <SPACE>k :cprevious<CR>
nmap <SPACE>j :cnext<CR>
nmap <SPACE>o :copen<CR>
nmap <SPACE>t :tabnew %<CR>

" Переключение подсветки поиска
nmap <LEADER><SPACE> :set hlsearch!<CR>

" Закрыть вим
nmap <SPACE><ESC> :quitall<CR>

" Перенос строк
nmap <LEADER>bb :set wrap!<CR>

" Сохранить
nmap <SPACE>w :w<CR>

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

" Выполнить скрипт редактора
nnoremap <SPACE>e :execute getline(".")<CR>
vnoremap <SPACE>e :<C-w>execute join(getline("'<","'>"),'<Bar>')<CR>

" Терминал - переход в нормальный режим
tnoremap <Esc> <C-\><C-n>

" Скопировать путь до текущего файла
nnoremap <SPACE>y :let @+ = expand("%:p")<CR>

" Разделить окно и открыть файл под курсором
nnoremap <SPACE>gf <C-w>vgf

" Открыть основной конфиг
nmap <SPACE>\ :e $VIM_CONFIGURATE/init.vim<CR>

noremap \\ :cd $PROJECT_HOME<CR>

" }}}

" ПЛАГИНЫ {{{

" Файловый менеджер
nmap <SPACE>f :VimFiler<CR>

" Терминал
nmap <SPACE>s :VimShell<CR>
nmap <SPACE>p :Unite file_rec<CR>

" Быстрый переход в командный режим
nmap <SPACE><SPACE> <Plug>(easymotion-overwin-f)

" Выравнивание кода
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
vmap ga <Plug>(EasyAlign)

" }}}
