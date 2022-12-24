call plug#begin()

 Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
 Plug 'junegunn/fzf.vim'

 Plug 'itchyny/lightline.vim'
 Plug 'preservim/nerdtree'
 Plug 'dense-analysis/ale'
 Plug 'airblade/vim-rooter'
 Plug 'christoomey/vim-tmux-navigator'
 Plug 'jacoborus/tender.vim'

 Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting


set relativenumber

" ALE completion
let g:ale_sign_column_always = 1
let g:ale_completion_enabled = 1

" ESP gets rid of highlights
nnoremap <esc> :noh<return><esc>


" Quick Buffer navigation
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>  


" COLOR SCHEME: Tender
" If you have vim >=8.0 or Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Theme
syntax enable
colorscheme tender

let g:lightline = { 'colorscheme': 'tender' }

let g:airline_theme = 'tender'

