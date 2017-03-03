execute pathogen#infect()

filetype plugin indent on

call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'SirVer/ultisnips'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'airblade/vim-gitgutter'
call plug#end()

syntax enable
set nowrap
set number
set autowrite
set updatetime=250
set backspace=indent,eol,start
set completeopt-=preview

" powerline settings
set rtp+=$HOME/anaconda3/lib/python3.6/site-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256

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

map <leader>p oimport pudb; pudb.set_trace()<ESC>
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

