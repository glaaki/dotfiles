
filetype plugin indent on

call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'SirVer/ultisnips'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'Raimondi/delimitMate'
call plug#end()

syntax enable
set nowrap
set number
set autowrite
set updatetime=350
set backspace=indent,eol,start
set completeopt-=preview
set nocompatible
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
set wildmenu
set smarttab

" use tabs by default and tabs are 4 wide
" language specific overrides are down lower
set noexpandtab
set tabstop=4
set shiftwidth=4

" use 4 spaces per tab in python
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4

" send vim swap files to tmp so git stops complaining about them.
set directory=$HOME/.vim/swapfiles//
set backupdir=$HOME/.vim/backups//

" airline settings
let g:airline_theme='base16'
let g:airline_powerline_fonts = 1
set laststatus=2 " always show the status bar
set noshowmode " hide the default vim mode text, airline already shows it

" fix for partial background colors inside tmux
set t_ut=
set t_Co=256

" enable these next two for a black background
" set background=dark
" highlight Normal ctermfg=grey ctermbg=black

let mapleader=","

" go-vim options
let g:go_auto_type_info = 1
let g:go_def_mode = 'godef'
let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_metalinter_deadline = "5s"
let g:go_auto_sameids = 1

" YouCompleteMe options
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_auto_trigger = 1
let g:ycm_seed_identifiers_with_syntax = 1
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>

" rebind ultisnips expand to ctrl-j since ycm uses tab already.
let g:UltiSnipsExpandTrigger="<c-j>"

" unmap 'ex' mode, the history window I get 10x a day by accident.
map Q <Nop>
map q: <Nop>

" unmap the arrow keys to try and force myself to use hjkl
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

map <leader>p Oimport pudb; pudb.set_trace()<ESC>
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>

" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#cmd#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4
autocmd FileType go nmap <Leader>i <Plug>(go-info)

" 'I forgot to open this file as sudo' trick.
cmap w!! w !sudo tee > /dev/null %

"colorscheme base16-mocha
"let base16colorspace=256
