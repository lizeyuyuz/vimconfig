let mapleader = ","
set nowrap
set textwidth=80
"highlight Excess ctermbg=Darkred guibg=#FFD9D9
"match Excess /\%81v.*/
setlocal colorcolumn=81
highlight ColorColumn guibg=DodgerBlue4

" Use <leader>l to toggle display of whitespace
nmap <leader>l :set list!<CR>
" automatically change window's cwd to file's dir
set autochdir

" I'm prefer spaces to tabs
set tabstop=4
set shiftwidth=4
set expandtab

" more subtle popup colors 
if has ('gui_running')
    highlight Pmenu guibg=#cccccc gui=bold    
endif
