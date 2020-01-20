
" .vimrc

        
" SYNTAX

syntax enable
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tab are spaces  
set shiftwidth=2


" SEARCH

set incsearch       " search as characters are entered
set hlsearch        " highlight matches

set rtp+=~/.fzf     " enable fuzzy finder https://github.com/junegunn/fzf
nnoremap <silent> <C-p> :FZF<CR>


" DISPLAY

set showcmd         " shows the last command entered in the bottom right of vim
set cursorline      " highlight the cursor line
set lazyredraw      " redraw only when need to
set showmatch       " highlight matching [{()}]
set number!          " display line number
"" set relativenumber!  " display line number relatively to current line

" Have line number in hybrid mode in current file during normal mode 
"   and in absolute mode anywhere else
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END


" folding
set nofoldenable      " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10     " 10 nested fold max
set foldmethod=indent   " fold based on indent level

" Display shortcuts
nnoremap <space> za


" LANGUAGE SUPPORT

filetype indent on  " turns on filetype detection and allows loading of language specific indentation


" COLORS

"""" AYU Color theme configuration

set termguicolors           " enable true colors support
"" let ayucolor="light"     " for light version of theme
"" let ayucolor="mirage"    " for mirage version of theme
let ayucolor="dark"         " for dark version of theme
colorscheme ayu


" NAVIGATION 

set wildmenu                    " visual autocomplete for command menu

" Navigation shortcut
nnoremap B ^
nnoremap E $


" Easier pane switching
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" BACKUPS

set backup " enable backup support
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp " change backup directory
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup " enable backup support


"  COC 

call plug#begin()
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
call plug#end()

let g:coc_global_extensions = ['coc-tsserver', 'coc-json', 'coc-go', 'coc-python', 'coc-rls']

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction


" Custom Shortcuts

map <Enter> o<ESC>
map <S-Enter> O<ESC>
