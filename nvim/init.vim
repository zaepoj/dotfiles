set nocompatible
"PLUGINS INSTALL
call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'pangloss/vim-javascript'
Plug 'sheerun/vim-polyglot'
Plug 'rakr/vim-two-firewatch'
"Plug 'drewtempelmeyer/palenight.vim'
"Plug 'wadackel/vim-dogrun'
"Plug 'arzg/vim-substrata'
"Plug 'embark-theme/vim', { 'as': 'embark' }
"Plug 'cocopon/iceberg.vim'
"Plug 'kyazdani42/blue-moon'
Plug 'tpope/vim-fugitive'
"Plug 'owickstrom/vim-colors-paramount'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()


"COLORS

hi clear
syntax reset
set termguicolors
colorscheme two-firewatch
set background=dark



"hi CocErrorFloat guifg=#d1666a guibg=#d1666a

"set background=dark
"colorscheme paramount
"colorscheme palenight



"PATH
let g:python3_host_prog = $GLOBALINSTALLDIR . "/usr/local/bin/python3"



"SOURCES

source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/fzf.vim


source $HOME/.config/nvim/themes/airline.vim



"SOURCE COMMANDS
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

" set leader key
let g:mapleader = "\<Space>"


"GENERAL
"set autochdir                           " Your working directory will always be the same as your working directory

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC



"nmap <leader>qq <c-^><cr>

"KEYMAPS
"GENERAL
syntax enable                           " Enables syntax highlighing
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			            " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse=a                             " Enable your mous
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=0                        " Always display the status line
set number                              " Line numbers
set cursorline                          " Enable highlighting of the current line
set background=dark                     " tell vim what the background color looks like
set showtabline=2                       " Always show tabs
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
"set autochdir e

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv


:highlight CocErrorHighlight ctermfg=Red  guifg=#d1666a
:highlight CocErrorLine ctermfg=Red  guifg=#d1666a
:highlight CocErrorSign ctermfg=Red guifg=#d1666a

:set foldcolumn=0
set signcolumn=no

let g:airline_theme='twofirewatch'
