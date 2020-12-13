""" Install vim-plug
let vimplug_exists=expand('~/.vim/autoload/plug.vim')

if !filereadable(vimplug_exists)
  if !executable("curl")
    echoerr "You have to install curl or first install vim-plug yourself!"
    execute "q!"
  endif
  echo "Installing Vim-Plug..."
  echo ""
  silent exec "!\curl -fLo " . vimplug_exists . " --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  let g:not_finish_vimplug = "yes"

  autocmd VimEnter * PlugInstall
endif


""" Plugins
call plug#begin(expand('~/.vim/plugged'))

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
" Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-ragtag'
Plug 'dense-analysis/ale'
Plug 'jiangmiao/auto-pairs'
" Plug 'tpope/vim-abolish'
" Plug 'tpope/vim-dadbod'
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'
" Plug 'Xuyuanp/nerdtree-git-plugin'
Plug '907th/vim-auto-save'
Plug 'joshdick/onedark.vim'
Plug 'dylanaraps/wal.vim'
Plug 'deviantfero/wpgtk.vim'
Plug 'rakr/vim-one'
Plug 'djoshea/vim-autoread'

call plug#end()


""" Settings
set relativenumber
set number
set nocompatible
set noswapfile
set viminfo+=n~/.vim/viminfo
set showtabline=2
set hlsearch
set incsearch
set ignorecase
set smartcase

syntax on
filetype plugin on


""" Mappings
" window switch
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

" disable arrows
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>


""" Filetypes
" nunjacks
au BufReadPost *.html set filetype=html.twig
" au BufNewFile,BufRead *.html,*.htm,*.shtml,*.stm set ft=jinja


""" Comments
" nunjacks
autocmd FileType html.twig setlocal commentstring={#\ %s\ #}


""" Linting
let g:ale_fixers = ['eslint']

nnoremap <Leader>f :ALEFix<CR>


""" XML tags
" from ragtag docs
inoremap <M-o> <Esc>o
inoremap <C-j> <Down>
let g:ragtag_global_maps = 1


""" Tree navigation
" from nerdtree docs
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

nnoremap <C-n> :NERDTreeToggle<Enter>
" nnoremap <silent> <Leader>v :NERDTreeFind<CR>

let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeShowHidden = 1


""" Autosave
let g:auto_save = 1


""" Autobrackets
let g:AutoPairsFlyMode = 1


""" Status bar
let g:lightline = {
      \  'colorscheme': 'onedark',
      \ 'tabline': {
      \   'left': [ ['buffers'] ],
      \   'right': [ ['close'] ]
      \ },
      \ 'component_expand': {
      \   'buffers': 'lightline#bufferline#buffers'
      \ },
      \ 'component_type': {
      \   'buffers': 'tabsel'
      \ }
      \}


""" Colors
set termguicolors
colorscheme one
set background=dark
" highlight Normal ctermbg=NONE
" highlight nonText ctermbg=NONE

