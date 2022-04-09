""" plugs

call plug#begin()
  Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
  Plug 'https://github.com/preservim/nerdtree' " NerdTree
  Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
  Plug 'https://github.com/vim-airline/vim-airline' " Status bar
  Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
  Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
  Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
  Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
  Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
  Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
  Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple 
  Plug 'OmniSharp/omnisharp-vim' " C# language server
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'junegunn/vim-easy-align'
  Plug 'mfussenegger/nvim-dap'
  Plug 'mfussenegger/nvim-dap-python'
  Plug 'rcarriga/nvim-dap-ui'
  Plug 'dhruvasagar/vim-table-mode'
call plug#end()



""" keymapping

  "tnoremap <Esc> <C-\><C-n>
  nnoremap <C-f> :Rg<CR>  
  vnoremap <C-a> :EasyAlign

" Esc
  nnoremap <C-j> <Esc>
  inoremap <C-j> <Esc>
  vnoremap <C-j> <Esc>
  snoremap <C-j> <Esc>
  xnoremap <C-j> <Esc>
  cnoremap <C-j> <ESC>
  onoremap <C-j> <Esc>
  lnoremap <C-j> <Esc>
  tnoremap <C-j> <C-\><C-n> 

" Buffer
  nnoremap <leader>bo :Buffers<CR>
  nnoremap <leader>bk :bnext<CR>
  nnoremap <leader>bj :bprev<CR>
  nnoremap <leader>bd :bdelete<CR>

" Table
  nnoremap <leader>tm :TableModeToggle<CR>
  
" Resize
  nnoremap <C-=> :resize +5<CR>
  nnoremap <C--> :vertical resize +5<CR>

" Conifig
  nnoremap <F1> :e $MYVIMRC<CR>
  nnoremap <F2> :source $MYVIMRC <CR>
  
" Display line movements
  nnoremap <S-k> gk
  nnoremap <S-j> gj
  vnoremap <S-k> gk
  vnoremap <S-j> gj

" Drag lines
  vnoremap <M-j> :m'>+<CR>gv
  vnoremap <M-k> :m-2<CR>gv
  nnoremap <M-j> ddp
  nnoremap <M-k> ddkP
  inoremap <M-j> <esc>ddp
  inoremap <M-k> <esc>ddkP

" Dap
  nnoremap <leader>db :lua require'dap'.toggle_breakpoint() <CR>
  nnoremap <leader>dr :lua require'dap'.continue() <CR>
  nnoremap <leader>dx :lua require'dap'.terminate() <CR>
  nnoremap <leader>do :lua require'dap'.step_over() <CR>
  nnoremap <leader>di :lua require'dap'.step_into() <CR>
  nnoremap <leader>dc :lua require'dap'.run_to_cursor() <CR>
  nnoremap <leader>du :lua require("dapui").toggle() <CR>


	
""" settings
	
syntax enable

:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set completeopt-=preview " For No Previews


""" visual

:colorscheme deus


let g:NERDTreeDirArrowExpandable  = "+"
let g:NERDTreeDirArrowCollapsible = "~"


" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols     = {}
endif


" airline symbols
let g:airline_left_sep         = ''
let g:airline_left_alt_sep     = ''
let g:airline_right_sep        = ''
let g:airline_right_alt_sep    = ''
let g:airline_symbols.branch   = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr   = ''

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"


" dap
lua require('dap-python').setup('~/.virtualenvs/debugpy/Scripts/python')
lua require("dapui").setup()

