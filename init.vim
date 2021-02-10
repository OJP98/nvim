source ~/AppData/Local/nvim/plug-config/coc.vim
source ~/AppData/Local/nvim/plug-config/start-screen.vim 
source ~/AppData/Local/nvim/plug-config/far.vim
source ~/AppData/Local/nvim/plug-config/fzf.vim
source ~/AppData/Local/nvim/themes/airline.vim

call plug#begin('~/AppData/Local/nvim/autoload/plugged')

" Work register
Plug 'wakatime/vim-wakatime'

" themes
Plug 'morhetz/gruvbox'
Plug 'junegunn/rainbow_parentheses.vim'

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ChristianChiarulli/far.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'ryanoasis/vim-devicons'

" NerdTreee
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Startify
Plug 'mhinz/vim-startify'

" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim', { 'commit': '23dda8602f138a9d75dd03803a79733ee783e356'}
Plug 'airblade/vim-rooter'

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
set guifont=CaskaydiaCove\ NF:h10
set laststatus=2
set noshowmode

" Current theme
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
" RainbowParentheses
let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]
autocmd FileType * RainbowParentheses
let g:rainbow_conf = {
      \	'separately': {
      \		'nerdtree': 0,
      \	}
      \}

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
tnoremap <Esc> <C-\><C-n>

" Document highlighting
let g:markdown_fenced_languages = [
  \ 'vim',
  \ 'help'
  \]

