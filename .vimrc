set nu
"NeoBundle Scripts-----------------------------
if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=/Users/annavillanueva/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/Users/annavillanueva/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'ctrlpvim/ctrlp.vim'

NeoBundle 'altercation/vim-colors-solarized'

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

syntax enable
set background=dark
colorscheme solarized

let mapleader = ","

nmap <Leader>ve :edit $MYVIMRC<CR>
nmap <Leader>vs :source $MYVIMRC<CR>
vmap <Leader>vc !tee >(pbcopy)<CR> " This will copy whatever is selected in visual mode into the mac clipboard
nmap <Leader>vp :setlocal paste!<CR>
nmap <Leader>te :edit ~/.tmux.conf<CR>

set nobackup
set noswapfile

" window
nmap <leader>wh :topleft  vnew<CR>
nmap <leader>wl :botright vnew<CR>
nmap <leader>wk :topleft  new<CR>
nmap <leader>wj :botright new<CR>

" buffer
nmap <leader>bh :leftabove  vnew<CR>
nmap <leader>bl :rightbelow vnew<CR>
nmap <leader>bk :leftabove  new<CR>
nmap <leader>bj :rightbelow new<CR>

" NERDTree maps
noremap <Leader>nn :NERDTreeToggle<CR>
noremap <Leader>nf :NERDTreeFind<CR>

" Updated as of February 2016
