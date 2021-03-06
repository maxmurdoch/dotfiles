" Plugins
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
  Plug 'AndrewRadev/splitjoin.vim'
  Plug 'benmills/vimux'
  Plug 'chriskempson/base16-vim'
  Plug 'ervandew/supertab'
  Plug 'gorkunov/smartpairs.vim'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
  Plug 'edkolev/tmuxline.vim'
  Plug 'junegunn/goyo.vim'
  Plug 'junegunn/limelight.vim'
  Plug 'junegunn/vim-easy-align'
  Plug 'junegunn/vim-emoji'
  Plug 'junegunn/vim-pseudocl'
  Plug 'junegunn/seoul256.vim'
  Plug 'kana/vim-textobj-user'
  Plug 'leshill/vim-json'
  Plug 'majutsushi/tagbar'
  Plug 'mxw/vim-jsx'
  Plug 'nelstrom/vim-textobj-rubyblock'
  Plug 'othree/html5.vim'
  Plug 'othree/yajs.vim'
  Plug 'pangloss/vim-javascript'
  Plug 'reedes/vim-lexical'
  Plug 'reedes/vim-litecorrect'
  Plug 'reedes/vim-pencil'
  Plug 'reedes/vim-textobj-quote'
  Plug 'reedes/vim-wordy'
  Plug 'rizzatti/dash.vim'
  Plug 'rking/ag.vim'
  Plug 'scrooloose/nerdcommenter'
  Plug 'scrooloose/nerdtree'
  Plug 'scrooloose/syntastic'
  Plug 'takac/vim-hardtime'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'thoughtbot/vim-rspec'
  Plug 'tpope/vim-abolish'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-dispatch'
  Plug 'tpope/vim-endwise'
  Plug 'tpope/vim-fireplace'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-git'
  Plug 'tpope/vim-haml'
  Plug 'tpope/vim-markdown'
  Plug 'tpope/vim-obsession'
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-sensible'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-unimpaired'
  Plug 'vim-ruby/vim-ruby'
  Plug 'wellle/targets.vim'
call plug#end()


" # Settings
" ========================================

" ## Filetype detection
" --------------------
" Filetype detection, indentation, conditional plugin use
filetype plugin indent on

" ## Colors
" --------------------
set t_Co=256
let base16colorspace=256
colorscheme base16-tomorrow
set background=light

" ## Status Line
" --------------------
set statusline=
set statusline+=\ %l
set statusline+=\ %v
set statusline+=\ \|\ %f
set statusline+=%#warningmsg#
set statusline+=%*
set statusline+=%=
set statusline+=%{fugitive#head()}
let g:tmuxline_powerline_separators = 0

" ## Status Line
" --------------------
set fillchars+=vert:\ 

" ## Text Display
" --------------------
syntax enable
syntax on
set cursorline " highlight current row
set scrolloff=5 " Breaks lines at punctuation if possible
set linebreak " Shows last line instead of @ symbols
set display+=lastline " New split panes are opening to the right and bottom
set splitright
set splitbelow
set ruler " show the cursor position all the time
set number
set relativenumber " show line numbers relative to highlighted row
set lazyredraw


" ## Search
" --------------------
set hls " Don’t highlight results
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
set complete-=i
set wildmode=longest,list:longest
set list
set listchars=tab:\|\ ,trail:·


" ## Tabs & Spacing
" --------------------
set shiftwidth=2
set expandtab smarttab
set tabstop=2
set shiftwidth=2
set softtabstop=2


" # Maps
" ========================================

" ## Mapleader
" --------------------
" Ctrl-m -> writes file to disk, runs Make command of vim-dispatch
map <C-m> <esc>:w<CR>:Make<CR>
" Reloads .vimrc file and airline
map <leader>rld :source $MYVIMRC<CR>
" Toggle split between horizontal or vertical
map <leader>sph <C-w>t<C-w>K<CR>
map <leader>spv <C-w>t<C-w>H<CR>
map <leader>n :NERDTreeToggle<CR>
map <leader>K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" ## Normal-mode Maps
" --------------------
nmap <CR> *
nmap <leader>h :nohl<CR>

" ## Insert-mode Maps
" --------------------
inoremap jj <esc>
inoremap <C-Space> <C-X><C-O>
iabbrev </ </<C-X><C-O>
"Ctrl-u uppercases word behind cursor
inoremap <C-u> <esc>mzgUiw`za
imap <C-Return> <CR><CR><C-o>k<Tab>

" ## Visual mode maps
" -------------------
vmap ff zf
vmap fd zd

" ## Command-mode Maps
" --------------------
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

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
set noswapfile
let g:html_indent_tags = 'li\|p'



" # Plugin Settings
" --------------------

nnoremap <C-p> :FZF<CR>
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR><CR> " bind K to grep word under cursor in normal mode

" ## NERDTree
" closes vim if NERDTree is the only remaining buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" ## HardTime
" turns hardtime on by default
" let g:hardtime_default_on = 1

" ## Rspec
" use Dispatch from vim-rspec
let g:rspec_command = 'Dispatch rspec {spec}'

" mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" ## writing plugins (http://usevim.com/2015/05/27/reedes/)

augroup pencil
  autocmd!
  autocmd FileType markdown,mkd,textil,text call litecorrect#init()
                                        \ | call textobj#quote#init()
augroup END

" ## vim-easy-align
" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" jsx
let g:jsx_ext_required = 0 " Allow JSX in normal JS files

" syntastic
let g:syntastic_check_on_wq = 0
let g:syntastic_scss_checkers = ['scss_lint']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_ruby_checkers = ['rubocop']
let g:syntastic_mode_map = { "mode": "passive" }

" vim-javascript
let g:javascript_enable_domhtmlcss = 1

" ctags & tagbar
nnoremap <leader>. :CtrlPTag<CR>
nnoremap <silent> <leader>b :TagbarToggle<CR>

" fzf
nnoremap <silent> <Leader><Leader> :FZF -m<CR>
let g:fzf_height = '30%'

" Dash
nnoremap <leader>k :Dash<cr>

" " emoji
" silent! if emoji#available()
"   let g:gitgutter_sign_added = emoji#for('seedling')
"   let g:gitgutter_sign_modified = emoji#for('small_orange_diamond')
"   let g:gitgutter_sign_removed = emoji#for('collision')
"   let g:gitgutter_sign_modified_removed = emoji#for('fire')
" endif

set completefunc=emoji#complete

" vim textobj quote (smart quotes)
augroup textobj_quote
  autocmd!
  autocmd FileType markdown call textobj#quote#init()
  autocmd FileType textile call textobj#quote#init()
  autocmd FileType text call textobj#quote#init()
augroup END
