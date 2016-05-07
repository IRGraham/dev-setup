set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set ruler
set number
set autoindent
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1
set nowrap
set backspace=2
set scrolloff=8
set sidescrolloff=15
set sidescroll=1
set hlsearch
highlight clear SignColumn
syntax on
syntax enable
au BufNewFile,BufRead *.ms set filetype=html
au BufNewFile,BufRead *.mustache set filetype=html
au BufNewFile,BufRead *.scss set filetype=css
au BufNewFile,BufRead *.styl set filetype=javascript
autocmd BufWritePre * :%s/\s\+$//e

set laststatus=2

" color schemes
let &t_Co=240

" lightline
let g:lightline = {
    \ 'component_function': {
    \   'filename': 'MyFileName'
    \ }
    \}

function! MyFileName()
    let fname = fnamemodify(expand("%"), ":~:.")
    return fname
endfunction
" Ctrl P
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Nerdtree
map <C-n> :NERDTreeToggle<CR>

" GO SETTINGS
let g:go_fmt_command = "goimports"
au BufNewFile,BufRead *.go set filetype=go
" GO Syntax Highlighting
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on


" GO automatic import, go-run mapping, go-docs
let g:go_fmt_command = "goimports"
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)

" PATHOGEN
execute pathogen#infect()
syntax on
filetype plugin indent on
