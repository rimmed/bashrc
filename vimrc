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
Plugin 'flazz/vim-colorschemes'

" Plugin 'vim-scripts/DfrankUtil'
" Plugin 'vim-scripts/vimprj'
" Plugin 'vim-scripts/indexer.tar.gz'
Plugin 'vim-scripts/grep.vim'

Plugin 'git://git.enlightenment.org/editors/vim-configs.git'
Plugin 'https://github.com/tpope/vim-pathogen'
Plugin 'https://github.com/Valloric/YouCompleteMe'

" Add maktaba and codefmt to the runtimepath.
" (The latter must be installed before it can be used.)
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
" Also add Glaive, which is used to configure codefmt's maktaba flags. See
" `:help :Glaive` for usage.
Plugin 'google/vim-glaive'

Plugin 'junegunn/limelight.vim'

call vundle#end()            " required
filetype plugin indent on    " required

" BASE CONFIG AND UI
"=====================================================================
" turn of Vi enhancements and improvements
set nocompatible
" buffered line for scrolling, means 3 line after and before, current line,
" will be shown by text scrolling
set scrolloff=3
" reread changed files aputomaticly
set autoread
" use 256 color scheme in term
set t_Co=256
" hilight the wrong sintax
au BufNewFile,BufRead * let b:mtrailingws=matchadd('ErrorMsg', '\s\+$', -1)
au BufNewFile,BufRead,WinEnter * let b:mtrailingws=matchadd('ErrorMsg', '\s\+$', -1)
au BufNewFile,BufRead,WinEnter * let b:mtrailingws=matchadd('ErrorMsg', 'if(', -1)
au BufNewFile,BufRead,WinEnter * let b:mtrailingws=matchadd('ErrorMsg', '	', -1)

" Solve the red on the red bg
highlight SpellBad ctermfg=Black ctermbg=Red

set history=128
set number
syntax on
" use the system buffer
set clipboard=unnamed
" search text fragment by typing
set incsearch
" hilight the search result
set hlsearch  " nohlsearch
nmap <C-G> <esc>:nohlsearch<cr>
vmap <C-G> <esc>:nohlsearch<cr>

" highlight current line
"set cursorline
" show not printed symbols
"set listchars=tab:»\ ,eol:¶

colorscheme Monokai
set colorcolumn=81
set encoding=utf8
set termencoding=utf-8
set fileencodings=utf8,cp1251

set noswapfile

" remap default keymap layout to uktainian йцукен
set keymap=ukrainian-jcuken
set iminsert=0
set imsearch=0

" arrows taboo
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

" PADDING
"=====================================================================
" padding size
set sw=3
" tabs size
set ts=3
" soft tab size
set sts=3

set wrap
set smartindent
" convert tabs to space
set expandtab

filetype on
let c_syntax_for_h=1
au FileType cpp,hpp,proto AutoFormatBuffer clang-format
au FileType edc setlocal expandtab sw=3 ts=8 sts=3 syntax=edc
au FileType sh setlocal expandtab sw=4 ts=4 sts=4 syntax=sh
au FileType tex setlocal noexpandtab sw=4 ts=4 sts=4 syntax=tex
au FileType python setlocal noexpandtab sw=4 ts=4 sts=4 softtabstop=4 syntax=python
au FileType c,h setlocal syntax=c expandtab ts=8 sw=3 sts=3 cino=>5n-3f0^-2{2(0W1st0
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc

call glaive#Install()
Glaive codefmt plugin[mappings]
Glaive codefmt clang_format_style="file"

" Use Unix as the standard file type
set ffs=unix,dos,mac

"====================================================================
" bindings for C and EDC
au FileType c,cc,edc inoremap {<CR> {<CR>}<Esc>O
au FileType c,cc,edc inoremap #d #define
au FileType c,cc,edc inoremap #u #undef
au FileType c,cc,edc inoremap #e #endif /*  */<Esc>hhi
au FileType c,cc,edc inoremap #" #include ""<Esc>i
au FileType c,cc,edc inoremap #< #include <><Esc>i
au FileType c,cc,edc inoremap #f /* FIXME:  */<Esc>hhi
au FileType c,cc,edc inoremap #t /*TODO:  */<Esc>hhi
au FileType c,cc,edc inoremap ;; <END>;<CR>
au FileType c,cc,edc inoremap /*<Space> /*  */<Esc>3ha

"====================================================================
" F2 save file
nmap <F2> :w<cr>
vmap <F2> <esc>:w<cr>i
imap <F2> <esc>:w<cr>i
" F3 - reqursive search (plagin grep.vim)
nnoremap <silent> <F3> :Rgrep<cr>
" F9
nnoremap <F9> :set nolist<cr>
" F11
nnoremap <F11> :set list<cr>
" close the current buffer by Alt+w
nnoremap w <esc>:bdelete<cr>

" NERDTree
"====================================================================
nmap <leader>n :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"

let NERDTreeHighlightCursorline=1
let NERDTreeDirArrows=0
let NERDTreeIgnore=['\.lo$', '\.la$', '\.o$', '\.edj$', '\.eo.h$', '\.eo.c$']
let NERDTreeWinPos="right"

" BOOKMARKS
"====================================================================
let g:bookmark_highlight_lines = 1

" AIRLINE
"====================================================================
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
   let g:airline_section_z = airline#section#create_right(['%l','%c'])
endfunction

" YouCompliteMe
"====================================================================
let g:ycm_always_populate_location_list = 1
let g:ycm_extra_conf_globlist = ['~/Workspace/*','!~/*']
