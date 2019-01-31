" For plugins: ~/.local/share/nvim/plugged
call plug#begin('~/.local/share/nvim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'SirVer/ultisnips' 
Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } | Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline' |  Plug 'vim-airline/vim-airline-themes'
Plug 'arcticicestudio/nord-vim'
Plug 'cocopon/iceberg.vim'

call plug#end()

" Airline 
let g:airline_powerline_fonts=1 
let g:airline_exclude_filetypes=['netrw','diff','undotree','gundo','tagbar']
let g:airline_linecolumn_prefix = ' '
let g:airline_section_z='%3p%% '.g:airline_linecolumn_prefix.'%3l:%c'
let g:airline_detect_whitespace=0 
let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#hunks#non_zero_only = 1
let g:airline#extensions#hunks#hunk_symbols = ['+', '~', '-']

" General visual preferences
colorscheme iceberg 
hi Visual cterm=reverse ctermbg=NONE
set termguicolors
set number
set cursorline
set noshowmode
set nowrap
set textwidth=100
set formatoptions+=cqln1j
set expandtab

" Completion
let g:deoplete#enable_at_startup = 1

" Fzf 
let mapleader = "\<Space>"

let g:fzf_nvim_statusline = 0

nnoremap <silent> <leader><space> :Files<CR>
nnoremap <silent> <leader>a :Buffers<CR>
nnoremap <silent> <leader>A :Windows<CR>
nnoremap <silent> <leader>; :BLines<CR>
nnoremap <silent> <leader>o :BTags<CR>
nnoremap <silent> <leader>? :History<CR>
nnoremap <silent> <leader>/ :execute 'Ag ' . input('Ag/')<CR>
nnoremap <silent> <leader>. :AgIn 

nnoremap <silent> K :call SearchWordWithAg()<CR>
vnoremap <silent> K :call SearchVisualSelectionWithAg()<CR>
nnoremap <silent> <leader>gl :Commits<CR>
nnoremap <silent> <leader>ga :BCommits<CR>
nnoremap <silent> <leader>ft :Filetypes<CR>

" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" In Neovim, you can set up fzf window using a Vim command
let $FZF_DEFAULT_COMMAND = 'ag --hidden --path-to-ignore ~/.ignore -l -g ""'
let g:fzf_layout = { 'window': 'enew' }
let g:fzf_layout = { 'window': '-tabnew' }
let g:fzf_layout = { 'window': '10split enew' }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'

" Some aliases for typoists
command W w
command Q q
command WQ wq
command Wq wq
command Qa qa
command QA qa
command Wa wa
command WA wa
command E e
nnoremap ; :
vnoremap ; :
nnoremap _ :
vnoremap _ :
noremap <S-l> gt
noremap <S-h> gT
nnoremap j gj
nnoremap k gk
