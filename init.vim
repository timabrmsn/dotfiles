
call plug#begin('~/.vim/plugged')

Plug 'psf/black', { 'branch': 'stable' }
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

set mouse=a
set clipboard+=unnamedplus
set expandtab
set si
set shiftwidth=4

if (has("termguicolors"))
  set termguicolors
endif
syntax enable

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
map <C-N> :NERDTreeToggle<CR>
let g:NERDTreeWinSize=45
