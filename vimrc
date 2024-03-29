" Based off of the follwing
" http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/
" https://github.com/mathiasbynens/dotfiles

execute pathogen#infect()
execute pathogen#helptags()
syntax on                " enable syntax highlighting

" Solarized high contrast colorscheme
" https://github.com/lifepillar/vim-solarized8
set background=dark
colorscheme solarized8_high

filetype plugin indent on " activates indenting for files
set number                " show line numbers
set numberwidth=5         " for files with a lot of lines
set ruler                 " Always show info along bottom.
set title                 " show the filename in the window titlebar
set nowrap                " don't wrap text

" The Ruby Style Guide
" https://github.com/bbatsov/ruby-style-guide/
set tabstop=2             " tab spacing for existing tabs
set softtabstop=2         " unify
set shiftwidth=2          " indent/outdent by 2 columns
set expandtab             " use spaces instead of tabs
set autoindent            " auto-indent
set shiftround            " always indent/outdent to the nearest tabstop

" Respect modeline in files
set modeline
set modelines=4

" Automatically go into NERDTree if vim is stated with no file specified
autocmd vimenter * if !argc() | NERDTree | endif
" Automatically close vim if NERDTree is the only window left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" vim-airline settings
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'

