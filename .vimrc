" Initial configs - Map Leader, FZF, etc...
let mapleader = ","

set number
set guifont=FantasqueSansMono-Regular

nnoremap <C-p> :Files<cr>
nnoremap <C-b> :Buffers<cr>
nnoremap <C-o> :Ag<cr>

nmap ga <Esc>:Git add -A<cr>
nmap gs :Gstatus<CR>
nmap gc :Gcommit
nmap gp :Gpush


" Fzf Config - find in files, buffer and Content
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }
let g:fzf_layout = { 'down': '~40%' }


" SyntasticStatus Configs
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = '✗'
let g:syntastic_style_error_symbol = '✠'
let g:syntastic_warning_symbol = '∆'
let g:syntastic_style_warning_symbol = '≈'


" OmniSharp Config - C# 
let g:OmniSharp_server_stdio = 1


" nerdcommenter configs
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1


" airline Configs
" sudo apt install fonts-powerline
let g:airline_section_b = '%{strftime("%c")}'
let g:airline_powerline_fonts = 1


" airline theme
let g:airline_theme='badwolf'


"Plugins
call plug#begin('~/.vim/bundle')

Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdcommenter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-rails'
Plug 'pangloss/vim-javascript'
Plug 'vim-ruby/vim-ruby'
Plug 'slim-template/vim-slim'
Plug 'omnisharp/omnisharp-vim'
Plug 'nanotech/jellybeans.vim'
Plug 'ervandew/supertab'
Plug 'raimondi/delimitmate'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()


" Additional config - Theme
set t_Co=256
colorscheme jellybeans
set background=dark
