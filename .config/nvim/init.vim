" Init vim-plug plugins
call plug#begin('~/.vim/plugged')

" Vinegar
Plug 'tpope/vim-vinegar'

" Lightline
Plug 'itchyny/lightline.vim'

" Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Surround
Plug 'tpope/vim-surround'

" Git
Plug 'tpope/vim-fugitive'

" Kotlin
Plug 'udalov/kotlin-vim'

" Traces
Plug 'markonm/traces.vim'

" Gradle
Plug 'hdiniz/vim-gradle'

" Vimtex
Plug 'lervag/vimtex'

" Rainbow parens
Plug 'junegunn/rainbow_parentheses.vim'

" Vim-slime
Plug 'jpalardy/vim-slime'

call plug#end()

let g:lightline = {
      \ 'colorscheme': 'material',
      \   'active': {
      \     'left': [ [ 'mode', 'paste' ],
      \               [ 'gitinfo', 'readonly', 'filename', 'modified' ],
      \               [ 'charvaluehex' ]]
      \
      \   },
      \   'component': {
      \     'lineinfo': "%{line('.') . '/' . line('$')}",
      \     'wordcount': "WordCount",
      \     'gitinfo': "%{FugitiveStatusline()}",
      \   }
      \ }

" Use zathura for vimtex
let g:vimtex_view_method="zathura"

" Always show statusline
set laststatus=2

" Always show tabs
set showtabline=2

" word count
let g:word_count=wordcount().words
function WordCount()
    if has_key(wordcount(),'visual_words')
        let g:word_count=wordcount().visual_words."/".wordcount().words " count selected words
    else
        let g:word_count=wordcount().cursor_words."/".wordcount().words " or shows words 'so far'
    endif
    return g:word_count
endfunction

" Use 256 colours (Use this setting only if your terminal supports 256
" colours)
set t_Co=256

" Display line numbers
set number
autocmd TermOpen * setlocal nonu

" Better cmd display
set cmdheight=1

" Use 4 spaces in place of tabs
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

" Don't show mode
set noshowmode

" Enable folding
set foldmethod=indent
set foldlevel=99

" netrw config
" let g:netrw_banner = 0
" let g:netrw_sort_by = "exten"

" Rebinds
nnoremap <space> za
nmap gy "+y
vmap gy "+y
nmap gp "+p
vmap gp "+p

" Syntax highlighting
syntax on
hi Normal guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE ctermbg=NONE

" Rainbow parens for Lisp family
augroup rainbow_lisp
  autocmd!
  autocmd FileType lisp,clojure,scheme RainbowParentheses
augroup END
