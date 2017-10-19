" ОБЩИЕ НАСТРОЙКИ

" Настройки python
let g:python_host_prog=$PYTHON_HOME_HOST
let g:python3_host_prog=$PYTHON3_HOME_HOST

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
set backupdir=$VIM_CONFIGURATE/temp/backup/
set directory=$VIM_CONFIGURATE/temp/swap/
set undodir=$VIM_CONFIGURATE/temp/undo/

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

set tags+=$TAGS_PROJECT
set tags+=$TAGS_SOURCE
