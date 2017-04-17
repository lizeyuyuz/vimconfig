" General configuration {{{

set gcr=a:blinkon0              "Disable cursor blink
" detect .tex files...somehow disabled
autocmd BufRead,BufNewFile *.tex set filetype=tex
" }}}


"""""""""""""""""""""""" VUNDLE SETUP {{{
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'

" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" vim-airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" vimtex
Plugin 'lervag/vimtex'

" Syntastic
Plugin 'scrooloose/syntastic'

"" UltiSnips
" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" Conque-GDB, using gdb in vim buffer
Plugin 'vim-scripts/Conque-GDB'

" YouCompleteMe
Plugin 'Valloric/YouCompleteMe'

" Supertab
Plugin 'ervandew/supertab'

" Nvim-R
Plugin 'jalvesaq/Nvim-R'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
""""""""""""""""""""""""}}}




"""""""""""""""""""""""" Visual "{{{
" Set the guifont
set guifont=Menlo:h14

" Solarized theme
syntax enable 
let g:solarized_termcolors=256
colorscheme solarized  
set background=dark
let g:solarized_termtrans = 1 "vim_not transparent on terminal

if has('nvim')
  set termguicolors
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

  set background=dark
  let g:solarized_italic=0
  au VimEnter * colorscheme solarized
  colorscheme solarized
endif

set splitbelow
set splitright
" Case-insensitive search
set ignorecase
" Highlight search results
"set hlsearch
"
" highlight matching [{()}]
"set showmatch

" Show line numbers
set number
" Show column numbers
set ruler

" Column 80 marker
" setlocal textwidth=80
" setlocal colorcolumn=81
" Highlight Colorcolumn (also see ~/.vim/ftplugin/txt.vim)
" highlight ColorColumn guibg=DodgerBlue4

"vim-airlines"
let g:airline_powerline_fonts = 1
set laststatus=2
let g:airline_theme="solarized"
"Powerline font symbol problems"
"set term=xterm-256color    "not work
"set termencoding=utf-8     "not work
""put this in .gvimrc   "(this works)
"set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h12 
"set encoding=utf-8
""""""""""""""""""""""""}}}


""""""""""""""""""""""""Formatting "{{{
" enable syntax
syntax on 
" Automatically detect file types."
filetype indent on 
" enable syntax processing
syntax enable 
" number of visual spaces per TAB
set tabstop=4   
" number of spaces in tab when editing
set softtabstop=4
set shiftwidth=4
" tabs are spaces
set expandtab
" set textwidth
"set textwidth=80
" Set linebreak 
set linebreak
set nocp 
" Set spell check
set spell spelllang=en_us
" Bash-style tab completion
set wildmode=longest,list
set wildmenu
""""""""""""""""""""""""}}}


"""""""""""""" vimtex plugin settings {{{
let g:vimtex_latexmk_continuous=1
" }}}

"""""""""""""" Pandoc {{{
" source: https://github.com/lynnard/pandoc-preview.vim
let g:pandoc_preview_pdf_cmd = "zathura"
nnoremap <leader>V: PandocPreview<cr>
" }}}

"""""""""""""" UltiSnips {{{
" https://github.com/idbrii/vim-david-snippets/blob/master/UltiSnips/cpp.snippets
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
" }}}

"""""""""""""" Syntastics {{{
" https://github.com/scrooloose/syntastic#step1
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" Disable syntastic for latex files
let g:syntastic_mode_map = { 'passive_filetypes': ['tex'] }
" }}}

"""""""""""""" YouCompleteMe {{{
let g:yc_global_ycm_extra_conf = '~/ycm_temp/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'unite' : 1,
      \ 'text' : 1,
      \ 'vimwiki' : 1,
      \ 'pandoc' : 1,
      \ 'infolog' : 1,
      \ 'mail' : 1,
      \ 'plaintex' : 1
      \}
let g:ycm_key_list_select_completion = ['<C-TAB>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-S-TAB>', '<Up>']

""" }}}

""""""""""""" Supertab {{{
let g:SuperTabDefaultCompletionType = '<C-Tab>'
"""}}}

let g:tex_flavor = 'latex'

