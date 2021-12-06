
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

set clipboard+=unnamedplus

if (has("termguicolors"))
  set termguicolors
endif
syntax enable

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

autocmd VimEnter * NERDTree
map <C-N> :NERDTreeToggle<CR>

