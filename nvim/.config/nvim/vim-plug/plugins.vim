" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " vifm file explorer
    " Plug 'vifm/vifm.vim'
    " code completion
    " Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Fuzzy Finder
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'junegunn/gv.vim'
    Plug 'airblade/vim-rooter'
    " Code snippets
    Plug 'SirVer/ultisnips'
    Plug 'quangnguyen30192/cmp-nvim-ultisnips'
    " used with ultisnips
    Plug 'honza/vim-snippets'
    " Add color to csv files
    Plug 'mechatroner/rainbow_csv'
    " File explorer
    Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
    " Syntax checker
    Plug 'scrooloose/syntastic'
    " Startup page for neovim
    Plug 'mhinz/vim-startify'
    " Auto pairs for '(' '[' '{' 
    Plug 'jiangmiao/auto-pairs'
    " status line
    Plug 'vim-airline/vim-airline'
    " status line themes
    Plug 'vim-airline/vim-airline-themes'
    " Theme-gruvbox
    Plug 'morhetz/gruvbox'
    " These-nord
    Plug 'arcticicestudio/nord-vim'
    " WhichKey
    Plug 'liuchengxu/vim-which-key'
    " Better Comments
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    " Markdown Preview
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
    " Ranger
    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
    " Git experience
    Plug 'mhinz/vim-signify'
    Plug 'justinmk/vim-sneak'
    Plug 'unblevable/quick-scope'
    " Telescope
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'neovim/nvim-lspconfig'
    Plug 'williamboman/nvim-lsp-installer'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/nvim-cmp'

call plug#end()

colorscheme gruvbox

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

"let g:syntastic_check_on_open= 1
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"nmap <F6> :NERDTreeToggle<CR>
