" General Settings
syntax on
set autoindent
set tabstop=4
set shiftwidth=4
set dir=/tmp/
set relativenumber 
set number
set ignorecase

set cursorline
hi Cursor ctermfg=White ctermbg=Yellow cterm=bold guifg=white guibg=yellow gui=bold

set hlsearch

" Quick navigation
nnoremap H 0
nnoremap L $

nnoremap <M-k> <C-y>
nnoremap <M-j> <C-e>


" Return to the line you left off at
augroup line_return
	au!
	au BufReadPost *
		\ if line("'\"") > 0 && line("'\"") <= line("$") |
		\	execute 'normal! g`"zvzz' |
		\ endif
augroup END
