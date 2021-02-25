source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/themes/onedark.vim
source $HOME/.config/nvim/plug-config/rnvimr.vim
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/start-screen.vim 
source $HOME/.config/nvim/plug-config/far.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/which-key.vim
source $HOME/.config/nvim/themes/airline.vim

call plug#begin('~/.config/nvim/autoload/plugged')

" Work register
Plug 'wakatime/vim-wakatime'

" themes
Plug 'morhetz/gruvbox'
Plug 'junegunn/rainbow_parentheses.vim'

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-commentary'

" Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ChristianChiarulli/far.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'ryanoasis/vim-devicons'
Plug 'liuchengxu/vim-which-key'
Plug 'joshdick/onedark.vim'

" NerdTreee
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Startify
Plug 'mhinz/vim-startify'

" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'

"Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'
Plug 'rhysd/git-messenger.vim'

call plug#end()

" Settings for nerdtree
map <C-m> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''

" General settings
set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set showmatch
set sw=2
set relativenumber
set encoding=UTF-8
set tabstop=2
set shiftwidth=2
set expandtab
set guifont=Hack:h10
set laststatus=2
set noshowmode
" set colorcolumn=80

" Current theme
colorscheme onedark
" let g:gruvbox_contrast_dark = "hard"

" Leader key
let mapleader=" "

" Search given 2 letters
nmap <Leader>s <Plug>(easymotion-s2)

" Comment line(s) with /
nnoremap <space>/ :Commentary<CR>
vnoremap <space>/ :Commentary<CR>
" Resize window
nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>
" Exit terminal mode with esc
tnoremap <C-\> <C-\><C-n>

" Document highlighting
let g:markdown_fenced_languages = [
  \ 'vim',
  \ 'help'
  \]

