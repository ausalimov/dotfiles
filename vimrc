execute pathogen#infect()
syntax on
filetype plugin on	

" size of a hard tabstop
set tabstop=4
"
" size of an indent
set shiftwidth=4
"
" " a combination of spaces and tabs are used to simulate tab stops at a width
" " other than the (hard)tabstop
set softtabstop=4


function! NumberToggle()
	if(&relativenumber == 1 && version >= 703)
		set number
	else
		set relativenumber
	endif
endfunc

function! SetProseOptions()
	setlocal formatoptions=ant
	setlocal textwidth=80
	setlocal wrapmargin=0
endfunc

augroup text 
	au BufNewFile,BufRead *.md setfiletype markdown
	au BufNewFile,BufRead *.txt setfiletype text
	au Filetype text call SetProseOptions()
	au Filetype markdown call SetProseOptions()
augroup END



" turns off bells 
set vb t_vb=
set relativenumber

set hidden

let mapleader = ","

inoremap jj <Esc>


noremap <Leader>n :call NumberToggle()<cr>)
noremap <Leader>s :update<CR>
nnoremap <Leader>b :ls<CR>:b
nnoremap <Leader>t :ls<CR>:sb
nnoremap <Leader>y :ls<CR>:vert sb
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"some hard mode stuff
inoremap <Left>  <NOP>
inoremap <Right> <NOP>
inoremap <Up>    <NOP>
inoremap <Down>  <NOP>
inoremap <C-c> <NOP>

map <SPACE> <Leader>
map ; :

