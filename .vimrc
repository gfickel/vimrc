
" === .vimrc References
" https://dougblack.io/words/a-good-vimrc.html

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" ==== plugin manager
Plugin 'VundleVim/Vundle.vim'

" ==== plugin manager
Plugin 'morhetz/gruvbox'

" ==== File tree
Plugin 'scrooloose/nerdtree'

" ==== Multiple Cursors like Sublime
Plugin 'terryma/vim-multiple-cursors'

" ==== Multiple Cursors like Sublime
Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'neoclide/coc.nvim'

Plugin 'puremourning/vimspector'

call vundle#end()

" let g:vimspector_enable_mappings = 'HUMAN'
let g:vimspector_enable_mappings = 'VISUAL_STUDIO'
packadd! vimspector


colorscheme gruvbox    " awesome colorschemei
set guifont=Monospace\ 9.5
set background=dark
syntax enable           " enable syntax processing

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4
set expandtab       " tabs are spaces

" Blink cursor on error instead of beeping (grr)
set visualbell
set noerrorbells         " don't beep

" Fix backspace to act as expected...: https://vi.stackexchange.com/questions/2162/why-doesnt-the-backspace-key-work-in-insert-mode
set backspace=indent,eol,start


" ==== UI Config

set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]
set ruler
" ==== enable mouse
set mouse=a
:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar


" ==== NERDTREE
let NERDTreeIgnore = ['__pycache__', '\.pyc$', '\.o$', '\.so$', '\.a$', '\.swp', '*\.swp', '\.swo', '\.swn', '\.swh', '\.swm', '\.swl', '\.swk', '\.sw*$', '[a-zA-Z]*egg[a-zA-Z]*', '.DS_Store']

let NERDTreeShowHidden=1
let g:NERDTreeWinPos="left"
let g:NERDTreeDirArrows=0
map <C-t> :NERDTreeToggle<CR>


" ==== Multiple Cursors
set selection=inclusive

" ==== Ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra' " set the directory as 'a' current file, 'r' dir containing .git


" ==== moving around
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>


" ==== Searching
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>

" ==== Folding
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
" space open/closes folds
nnoremap <space> za
set foldmethod=indent   " fold based on indent level


"call pathogen#infect()                      " use pathogen
"call pathogen#runtime_append_all_bundles()  " use pathogen
