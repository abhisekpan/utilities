call pathogen#infect()
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
set tabstop=8
set cindent

" Other Options
set ls=2 " Display filename at the bottom
set ruler " Display the current cursor position in the lower right corner
set showcmd " Display an incomplete command in the lower right corner
" higlight characters that go over 79 columns
if exists('+colorcolumn')
    set colorcolumn=79
else
    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>79v.\+', -1)
endif

" Custom commands
" Remove trailing whitespace
command RTW %s/\s\+$//e

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
