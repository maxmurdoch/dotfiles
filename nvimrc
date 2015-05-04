" # Plug
" ========================================

" not vi compatible
set nocompatible
set mouse=a
" filetype detection must be off before runtime execution
" of (pathogen/plugged) is complete
filetype off

call plug#begin('~/.nvim/plugged')
  Plug '1995eaton/vim-better-css-completion'
  Plug '1995eaton/vim-better-javascript-completion'
  Plug 'altercation/vim-colors-solarized'
  Plug 'AndrewRadev/splitjoin.vim'
  Plug 'benmills/vimux'
  Plug 'bling/vim-airline'
  Plug 'chriskempson/base16-vim'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'ervandew/supertab'
  Plug 'gmarik/Vundle.vim'
  Plug 'gorkunov/smartpairs.vim'
  Plug 'jelera/vim-javascript-syntax'
  Plug 'junegunn/vim-easy-align'
  Plug 'kana/vim-textobj-user'
  Plug 'kien/ctrlp.vim'
  Plug 'leshill/vim-json'
  Plug 'nelstrom/vim-textobj-rubyblock'
  Plug 'othree/html5.vim'
  Plug 'pangloss/vim-javascript'
  Plug 'rking/ag.vim'
  Plug 'scrooloose/nerdcommenter'
  Plug 'scrooloose/nerdtree'
  Plug 'scrooloose/syntastic'
  Plug 'takac/vim-hardtime'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'thoughtbot/vim-rspec'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-dispatch'
  Plug 'tpope/vim-endwise'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-git'
  Plug 'tpope/vim-haml'
  Plug 'tpope/vim-markdown'
  Plug 'tpope/vim-obsession'
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-sensible'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-unimpaired'
  Plug 'vim-ruby/vim-ruby'
call plug#end()


" # Settings
" ========================================

" ## Filetype detection
" --------------------
" Filetype detection, indentation, conditional plugin use
filetype plugin indent on

" ## Status Line
" --------------------
set statusline=\ %t\
set statusline+=%m
set statusline+=%v
set statusline+=%=
set statusline+=\ %{fugitive#statusline()}
set statusline+=\ %f\

" ## Text Display
" --------------------
set t_Co=256
let base16colorspace=256
colorscheme base16-flat
set background=dark
syntax on
syntax enable
set cursorline " highlight current row
set scrolloff=5 " Breaks lines at punctuation if possible
set linebreak " Shows last line instead of @ symbols
set display+=lastline " New split panes are opening to the right and bottom
set splitright
set splitbelow
set ruler " show the cursor position all the time
set number " show numbers
set relativenumber " show line numbers relative to highlighted row
set lazyredraw
let g:syntastic_scss_checkers = ['scss_lint']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_mode_map = { "mode": "passive",
                            \ "active_filetypes": ["javascript", "ruby"] }

" ## Search
" --------------------
set nohls " Don’t highlight results
set ignorecase smartcase " Case sensitive searches _only_ when uppercase chars are used
set incsearch " Sets search to preview the first match



" ## Syntax, Spell Checking, & Tab-completion
" --------------------
set complete+=kspell " Enable auto-completion as well as spelling

" Toggle case http://vim.wikia.com/wiki/Switching_case_of_characters
function! ToggleCase(str)
    if a:str ==# toupper(a:str)
        let result = tolower(a:str)
    elseif a:str ==# tolower(a:str)
        let result = substitute(a:str, '\v(<\w+>)', '\u\1', 'g')
    else
        let result = toupper(a:str)
    endif
    return result
endfunction

vnoremap ~ y:call setreg('', ToggleCase(@"), getregtype(''))<CR>gv""Pgv
" list of tab completion options are pulled from the list set to `complete`
" here, options are pulled from current file, other buffers, and current tags
" file
set complete=.,b,u,]
set wildmode=longest,list:longest
set list listchars=tab:»·,trail:·


" ## Tabs & Spacing
" --------------------
" Inserts spaces instead of tabs while using the tab key
set expandtab
" Sets number of spaces per tab
set tabstop=2
" Number of spaces that a <Tab> counts for while performing editing operations, like inserting a <Tab> or using <BS>.
set softtabstop=2
" Sets indentation to use spaces for tabs
set shiftwidth=2



" # Maps
" ========================================

" ## Mapleader
" --------------------
" Ctrl-m -> writes file to disk, runs Make command of vim-dispatch
let mapleader=','
map <C-m> <esc>:w<CR>:Make<CR>
map <leader>rld :source $MYVIMRC<CR> " Reloads .vimrc file
" Toggle split between horizontal or vertical
map <leader>sph <C-w>t<C-w>K<CR>
map <leader>spv <C-w>t<C-w>H<CR>
map <leader>h <C-w>s
map <leader>v <C-w>v
map <leader>n :NERDTreeToggle<CR>
map <leader>K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" ## Normal-mode Maps
" --------------------
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nmap <CR> *

" ## Insert-mode Maps
" --------------------
inoremap jj <esc>
inoremap <C-Space> <C-X><C-O>
iabbrev </ </<C-X><C-O>
"Ctrl-u uppercases word behind cursor
inoremap <C-u> <esc>mzgUiw`za
imap <C-Return> <CR><CR><C-o>k<Tab>

" ## Command-mode Maps
" --------------------
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" ## Terminal-mode maps
" ---------------------
tnoremap jj <C-\><C-n>

" ## Commands
" --------------------
command! Q q " :Q to quit



" ## Misc
" --------------------
" Automatically display changed files
set autoread
"Sets yank, delete, change, and put operations to use system clipboard by
"default
set clipboard=unnamed
" keep 50 lines of command line history
set history=1000
" display incomplete commands
set showcmd
" REDIRECT BACKUP FILES (http://cl.ly/Un1d)
" Stops them from being put in the working directory, and instead puts them in
" the tmp folder
set writebackup
set backupdir=~/.vim/backups
set undofile
set undodir=~/.vim/undo
set directory=~/.vim/tmp

set display=lastline
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
set hidden
" less escaping for regular expressions
set magic
" no swapfiles
set noswapfile
let g:html_indent_tags = 'li\|p'



" # Plugin Settings
" --------------------

" ## Ag
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor " use ag instead of grep
  let g:ctrlp_user_command='ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching=0 " ag is fast enough not to need caching
endif

nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR><CR> " bind K to grep word under cursor in normal mode


" ## Ctrl P
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|bower_components\'
let g:ctrlp_extensions = ['tag']

" ## NERDTree
" closes vim if NERDTree is the only remaining buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" ## HardTime
" turns hardtime on by default
" let g:hardtime_default_on = 1

" ## Airline
let g:airline_left_sep=''
let g:airline_right_sep=''

" ## Rspec
" use Dispatch from vim-rspec
let g:rspec_command = "Dispatch rspec {spec}"

" mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" ## vim-easy-align
" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
