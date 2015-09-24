" call pathogen#infect()
syntax on
filetype plugin on " Use filetype plugin

" Indentation Options
" Pressing the <TAB> key will always insert 'softtabtop' amount of space
set expandtab
set softtabstop=4
" Affects what happens when >>, << or == is placed
set shiftwidth=4
filetype indent on " Use file-type based indentation
set cino=i-s " Initializer lists at the same level as constructor
set tabstop=4
set cindent

" Other Options
set ls=2 " Display filename at the bottom
set ruler " Display the current cursor position in the lower right corner
set showcmd " Display an incomplete command in the lower right corner
" higlight characters that go over 79 columns
if exists('+colorcolumn')
    set colorcolumn=79
else
    au BufWinEnter * let w:m2=matchadd('TODO', '\%>79v.\+', -1)
endif
set number  " show line numbers
set tags=./tags;~/src
set nocompatible              " be iMproved, required

"=============
" Vundle start
"=============
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" Keep Plugin commands between vundle#begin/end.
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"for enhanced c++ highlighting (c++14)
Plugin 'octol/vim-cpp-enhanced-highlight'

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'

 " solarized color scheme 
Bundle 'altercation/vim-colors-solarized'

" Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
   "filetype plugin on
   "
   " Brief help
   " :PluginList       - lists configured plugins
   " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
   " :PluginSearch foo - searches for foo; append `!` to refresh local cache
   " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
   "
   " see :h vundle for more details or wiki for FAQ
   " Put your non-Plugin stuff after this line
"=============
" Vundle end
"=============

" Color scheme
syntax enable
set background=dark
let g:solarized_bold=0
colorscheme solarized

"highlight trailing whitespace
highlight ExtraWhitespace ctermbg=yellow guibg=yellow
match ExtraWhitespace /\s\+$/

"Remove trailing whitespace
function! s:StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
command RTW call s:StripTrailingWhitespaces()

" Maps
" jj = escape
inoremap jj <ESC>
" \p = parenthesis around a word
nmap \p i(<Esc>ea)<Esc>
" \c = curly braces around a word
nmap \c i{<Esc>ea}<Esc>
" space + character to insert the character in normal mode. Repeating does not
" work
nmap <Space> i_<Esc>r
