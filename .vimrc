set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'MattesGroeger/vim-bookmarks'

Plugin 'vim-scripts/DfrankUtil'
Plugin 'vim-scripts/vimprj'
Plugin 'vim-scripts/indexer.tar.gz'
Plugin 'vim-scripts/grep.vim'

Plugin 'git://git.enlightenment.org/editors/vim-configs.git'

call vundle#end()            " required
filetype plugin indent on    " required

"НАСТРОЙКИ ВНЕШНЕГО ВИДА И БАЗОВЫЕ НАСТРОЙКИ РЕДАКТОРА
"=====================================================================
" отключить режим совместимости с классическим Vi
set nocompatible
" сколько строк внизу и вверху экрана показывать при скроллинге
set scrolloff=3
" перечитывать изменённые файлы автоматически
set autoread
" использовать больше цветов в терминале
set t_Co=256
" подсветка пробелов в кончце строки
au BufNewFile,BufRead * let b:mtrailingws=matchadd('ErrorMsg', '\s\+$', -1)
"Проблема красного на красном при spellchecking-е решается так
highlight SpellBad ctermfg=Black ctermbg=Red
" хранить больше истории команд
set history=128
" нумерация строк
set number
" включить подсветку синтаксиса
syntax on
" использовать системный буфер обмена
set clipboard=unnamed
" поиск фрагмента по мере его набора
set incsearch
" (не)подсветка результатов поиска (после того, как поиск закончен и закрыт)
set hlsearch  " nohlsearch
nmap <C-G> <esc>:nohlsearch<cr>
vmap <C-G> <esc>:nohlsearch<cr>

" показать непечатаемые символы
set listchars=tab:»\ ,eol:¶,trail:•
" цветовая схема
colorscheme Yule
" линия ограничитель
set colorcolumn=81
" кодировка по умолчанию
set encoding=utf8
" Кодировка терминала, должна совпадать с той, которая используется для
" вывода в терминал
set termencoding=utf-8
" возможные кодировки файлов и последовательность определения.
set fileencodings=utf8,cp1251
" не использовать своп-файл (в него скидываются открытые буферы)
set noswapfile
" Автоматически перечитывать конфигурацию VIM после сохранения
autocmd! bufwritepost $MYVIMRC source $MYVIMRC

" стрелки табу
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
noremap <Home> <NOP>
noremap <End> <NOP>
noremap <Delete> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>
inoremap <Home> <NOP>
inoremap <End> <NOP>
inoremap <Delete> <NOP>


"НАСТРОЙКИ ОТСТУПА
"=====================================================================
" размер отступов
set sw=3
" ширина табуляции
set ts=3
" ширина 'мягкого' таба
set sts=3
" ai - включить автоотступы (копируется отступ предыдущей строки)
"set autoindent
" si Включаем 'умную' автоматическую расстановку отступов
"set smartindent
" Wrap lines
set wrap
" Включаем отступы в стиле С
"set cindent
set smartindent
" преобразовывать табуляцию в пробелы
set expandtab
"au FileType cpp,lua setlocal noexpandtab sw=4 ts=4 sts=4 syntax=cpp
au FileType edc setlocal expandtab sw=3 ts=8 sts=3 syntax=edc
au FileType sh setlocal noexpandtab sw=4 ts=4 sts=4 syntax=sh
au FileType tex setlocal noexpandtab sw=4 ts=4 sts=4 syntax=tex
au FileType python setlocal noexpandtab sw=4 ts=4 sts=4 softtabstop=4 syntax=python

au FileType c,h setlocal syntax=cpp expandtab ts=8 sw=3 sts=3 cino=>5n-3f0^-2{2(0W1st0

" Use Unix as the standard file type
set ffs=unix,dos,mac

"====================================================================
" Несколько удобных биндингов для С, EDC
au FileType c,cc,c,edc inoremap {<CR> {<CR>}<Esc>O
au FileType c,cc,c,edc inoremap #d #define
au FileType c,cc,c,edc inoremap #u #undef
au FileType c,cc,c,edc inoremap #e #endif /*  */<Esc>hhi
au FileType c,cc,c,edc inoremap #" #include ""<Esc>i
au FileType c,cc,c,edc inoremap #< #include <><Esc>i
au FileType c,cc,c,edc inoremap #f /* FIXME:  */<Esc>hhi
au FileType c,cc,c,edc inoremap #t /*TODO:  */<Esc>hhi
au FileType c,cc,c,edc inoremap ;; <END>;<CR>
"au FileType c,cc,c,edc inoremap " ""<Left>
"au FileType c,cc,c,edc inoremap ' ''<Left>
"au FileType c,cc,c,edc inoremap ( ()<Left>
"au FileType c,cc,c,edc inoremap [ []<Left>
"au FileType c,cc,c,edc inoremap (; ();<CR>
"au FileType c,cc,c,edc inoremap ({ () {<CR>}<Esc>O
au FileType c,cc,c,edc inoremap /*<Space> /*  */<Esc>3ha

" Биндинги для Doxygen
au FileType c,h,edc inoremap @p @param
au FileType c,h,edc inoremap @r @return
au FileType c,h,edc inoremap @dg @defgroup
au FileType c,h,edc inoremap @ig @ingroup

" Биндинги для LaTeX
au FileType tex inoremap %- %---------------------------------------------------------------------------<CR>
au FileType tex inoremap %= %===========================================================================<CR>
au FileType tex inoremap { {}<Left>
au FileType tex inoremap \bei \begin{itemize}<CR>
au FileType tex inoremap \ei \end{itemize}<CR>
au FileType tex inoremap \bee \begin{enumerate}<CR>
au FileType tex inoremap \ee \end{enumerate}<CR>
au FileType tex inoremap \it \item

"====================================================================
" F2 сохранить файл
nmap <F2> :w<cr>
vmap <F2> <esc>:w<cr>i
imap <F2> <esc>:w<cr>i

" F3 - рекурсивный поиск по файлам (плагин grep.vim)
nnoremap <silent> <F3> :Rgrep<cr>

" F9
nnoremap <F9> :set nolist<cr>

" F11
nnoremap <F11> :set list<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <leader>n :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"

let NERDTreeHighlightCursorline=1
let NERDTreeDirArrows=0
let NERDTreeIgnore=['\.lo$', '\.la$', '\.o$', '\.edj$']
let NERDTreeWinPos="right"




set laststatus=2
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#buffer_nr_show=1
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab

if !exists('g:airline_symbols')
   let g:airline_symbols = {}
endif

function! AirlineInit()
   let g:airline_section_a = airline#section#create(['mode', ' ', 'branch'])
   let g:airline_section_b = airline#section#create_left(['ffenc', 'hunks', '%f'])
   let g:airline_section_c = airline#section#create(['filetype'])
   let g:airline_section_x = airline#section#create(['%P'])
   let g:airline_section_y = airline#section#create(['%B'])
   let g:airline_section_y = airline#section#create_right(['%l','%c'])
endfunction
autocmd VimEnter * call AirlineInit()

let g:indexer_projectsSettingsFilename = '/home/rimmed/.indexer_files'
