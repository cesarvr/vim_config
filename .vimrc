syntax on
set dir=~/tmp	
set mouse=a
set expandtab
set shiftwidth=2
set tabstop=2
filetype plugin indent on



execute pathogen#infect()

call vundle#begin()

Plugin 'pangloss/vim-javascript'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'einars/js-beautify'
Plugin 'flazz/vim-colorschemes'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'


call vundle#end()           


colorscheme molokai


" Some useful shorcuts
" =======================================
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>

" Switch window mappings /*{{{*/
nnoremap <A-Up> :normal <c-r>=SwitchWindow('+')<CR><CR>
nnoremap <A-Down> :normal <c-r>=SwitchWindow('-')<CR><CR>
nnoremap <A-Left> :normal <c-r>=SwitchWindow('<')<CR><CR>
nnoremap <A-Right> :normal <c-r>=SwitchWindow('>')<CR><CR>
 
map <c-f> :call JsBeautify()<cr> 
map <c-t> :tabedit<cr>

function! SwitchWindow(dir)
    let this = winnr()
 	if '+' == a:dir
	    execute "normal \<c-w>k"
	elseif '-' == a:dir
		execute "normal \<c-w>j"
	elseif '>' == a:dir
     	execute "normal \<c-w>l"
    elseif '<' == a:dir
        execute "normal \<c-w>h"
    else
	    echo "oops. check your ~/.vimrc"
        return ""
  	endif
endfunction

" =========================================

