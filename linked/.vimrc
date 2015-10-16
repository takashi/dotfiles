"---------------------------
" Start Neobundle Settings.
"---------------------------
set runtimepath+=~/.vim/bundle/neobundle.vim/

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'takashi/vim-questbeat'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'airblade/vim-gitgutter'

NeoBundle 'sickill/vim-monokai'

NeoBundle 'Shougo/neocomplete.vim'

call neobundle#end()

" Required:
filetype plugin indent on

NeoBundleCheck

"-------------------------
" End Neobundle Settings.
"-------------------------

"-------
"" CtrlP
"-------
nmap <c-p> :CtrlP<cr>

""---------------
" vim-gitgutter
" "---------------
let g:gitgutter_eager = 0

syntax enable
colorscheme monokai

let g:neocomplete#enable_at_startup = 1
