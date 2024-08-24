" Plugins start here
"call plug#begin[/home/rey/.local/share/nvim/site/autoload/plug.vim]
call plug#begin()
" Plug 'neovim/nvim-lspconfig'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-endwise'
Plug 'dense-analysis/ale'
Plug 'vim-ruby/vim-ruby'
Plug 'vim-airline/vim-airline'
" Plug 'sukima/xmledit'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mattn/emmet-vim'
Plug 'raimondi/delimitmate'
" Plug 'wesQ3/vim-windowswap'
Plug 'nordtheme/vim'
Plug 'arcticicestudio/nord-vim'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fugitive'
Plug 'iamcco/coc-tailwindcss',  {'do': 'yarn install --frozen-lockfile && yarn run build'}
Plug 'p0deje/vim-ruby-interpolation'
" Plug 'xolox/vim-easytags'
Plug 'xolox/vim-misc'
" Plug 'majutsushi/tagbar'
Plug 'thoughtbot/vim-rspec'
Plug 'slim-template/vim-slim'
call plug#end()
nmap <silent> <C-e> <Plug>(ale_next_wrap)

" Shortcuts for nerdtree within neovim
nnoremap<C-p> :Files <CR>

" Remap the leader key and nav shortcuts through buffers
nnoremap <SPACE> <Nop>
let mapleader = " "
noremap <cr> :bnext<CR>
noremap <bs> :bprevious<CR>
noremap <leader><leader> :b#<CR>
noremap ;b :ls<CR>:b<SPACE>


" Settings for visual changes
set number
filetype plugin indent on
colorscheme nord
set termguicolors
set shiftwidth=2
set autoindent
set smartindent
set number relativenumber
set mouse=a

inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"

" Setting for ragtag
let g:ragtag_global_maps=1

" Autocomplete features
filetype plugin on
" set omnifunc=htmlcomplete#CompleteTags
" set omnifunc=syntaxcomplete#Complete

" Emmet settings
let g:user_emmet_leader_key=','

" Airline settings
let g:airline#extensions#tabline#enabled = 1

" Setting for registers, tailwind help
let @c = 'vi""my'
let @n = 'vi""mp'

" Nerd Tree shortcuts
nmap <leader>n :NERDTree<CR>

" tagbar shortcuts
nmap <leader>t :Tagbar<CR>

" tag lookup
nmap <leader>f <C-]> 

" Surround.vim changes to support ruby tags
autocmd FileType erb let b:surround_{char2nr('=')} = "<%= \r %>"
autocmd FileType erb let b:surround_{char2nr('-')} = "<% \r %>"

" For vim-rspec
map <Leader>k :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunNearestSpec()<CR>

 " wishlist
 " 1. ror.nvim
