" My settings
set cindent

" I use Vim-Plug as my plugin manager
call plug#begin('~/.local/share/nvim/plugged')

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

Plug 'mhinz/vim-startify'

Plug 'xolox/vim-easytags'

Plug '/usr/local/opt/fzf'

Plug 'junegunn/fzf.vim'

Plug 'vim-ctrlspace/vim-ctrlspace'

Plug 'chriskempson/base16-vim'

Plug 'tpope/vim-surround'

Plug 'tpope/vim-repeat'

Plug 'svermeulen/vim-easyclip'

Plug 'xolox/vim-misc'

Plug 'xolox/vim-session'

Plug 'sheerun/vim-polyglot'

Plug 'Shougo/deoplete.nvim'

Plug 'deoplete-plugins/deoplete-jedi'

Plug 'sebastianmarkow/deoplete-rust'

Plug 'roman/golden-ratio'

Plug 'rust-lang/rust.vim'

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

Plug 'airblade/vim-gitgutter'

Plug 'mhinz/vim-startify'

Plug 'scrooloose/nerdtree'

Plug 'jistr/vim-nerdtree-tabs'

Plug 'craigemery/vim-autotag'

Plug 'vimlab/split-term.vim'





let g:session_autosave='no'

Plug 'w0rp/ale'
" Put this in vimrc or a plugin file of your own.
" After this is configured, :ALEFix will try and fix your JS code with ESLint.
let g:ale_fixers = {
\   'javascript': ['eslint'],
\   'rust' : ['rustfmt'],
\   'c' : ['clang-format'],
\   'python' : ['yapf'],
\   'c++' : ['clang-format']
\}

"easy tags
let g:easytags_suppress_ctags_warning = 1

let g:ale_python_auto_pipenv = 1
let g:ale_set_highlights = 0
let g:airline#extensions#ale#enabled = 1

let g:startify_custom_header_quotes =
\ [['And I asked myself about the present: how wide it was, how deep it was, how much was mine to keep.'],
\ ['What has mood to do with it? You fight when the necessity arises—no matter the mood! Moods a thing for cattle or making love or playing the baliset. Its not for fighting!'],
\ ['Arrakis teaches the attitude of the knife - chopping off whats incomplete and saying: Now, its complete because its ended here.'],
\ ['The willow submits to the wind and prospers until one day it is many willows - a wall against the wind.'],
\ ['Hope clouds observation.'],
\ ['A beginning is the time for taking the most delicate care that the balances are correct.'],
\ ['And the first lesson of all was the basic trust that he could learn. It is shocking to find how many people do not believe they can learn, and how many more believe learning to be difficult. MuadDib knew every experience carried its lesson']]

" Set this setting in vimrc if you want to fix files automatically on save.
" This is off by default.
let g:ale_fix_on_save = 1

call plug#end()

set hidden
set nocompatible

set background=dark
colorscheme koehler

let base16colorspace=256

set encoding=utf8

set backspace=indent,eol,start	" backspace over everything
set fileformats=unix,dos,mac	" open files from mac/dos
set exrc			" open local config files
set nojoinspaces		" don't add white space when I don't tell you to
set ruler			" which line am I on?
set showmatch			" ensure Dyck language
set incsearch			" incremental searching
set bs=2			" fix backspacing in insert mode
set bg=light
set listchars=tab:>-,trail:-
set list
set modeline
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

:tab sball
set switchbuf=usetab,newtab

" Tab completion works properly (UNIX Style) and shows menu of possible options.
set wildmenu
set wildmode=longest:full
set wildignore=*.o,*.bak,*.data,*.class,*.pyc

" Pathogen Settings
set nocp

" Disable middle click paste
map <MiddleMouse> <Nop>
imap <MiddleMouse> <Nop>
map <2-MiddleMouse> <Nop>
imap <2-MiddleMouse> <Nop>
map <3-MiddleMouse> <Nop>
imap <3-MiddleMouse> <Nop>
map <4-MiddleMouse> <Nop>
imap <4-MiddleMouse> <Nop>

map <C-G> :GFiles<CR>

" Set no bells
set noeb vb t_vb=
au GUIEnter * set vb t_vb=

" Set line numbers
set nu
set mouse=a		" Enable mouse usage (all)

let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#rust#racer_binary='/Users/otto-jaursk/.cargo/bin/racer'
let g:deoplete#sources#rust#rust_source_path='/Users/otto-jaursk/rust-lang/rust/src'

"syntastic

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_quiet_messages = {
            \ "level":  "warnings"}
let g:syntastic_c_check_header = 0
let g:syntastic_c_no_include_search = 1
let g:syntastic_c_checkers = ["g++"]
let g:syntastic_loc_list_heigh = 3
let g:syntastic_java_maven_executable = "mvn"
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
let g:syntastic_tex_checkers = []
" autocmd! BufWritePost * Neomake
autocmd BufWritePost *
            \ if filereadable('tags') |
            \   call system('ctags -a '.expand('%')) |
            \ endif
let g:neomake_tex_enabled_makers = []

let g:golden_ratio_autocommand = 0

" Vim airline 
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline_solarized_bg='dark'
"let g:airline_powerline_fonts=1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" Truncation settings
let g:airline#extensions#default#section_truncate_width = {
            \ 'a': 30,
            \ 'b': 45,
            \ 'x': 79,
            \ 'y': 88,
            \ 'z': 45,
            \ 'warning': 80,
            \ 'error': 80,
            \ }

"rust fmt
let g:rustfmt_autosave = 1

" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

" [[B]Commits] Customize the options used by 'git log':
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

" [Tags] Command to generate tags file
let g:fzf_tags_command = 'ctags -R'

nnoremap <silent> zj o<Esc>
nnoremap <silent> zk O<Esc>

nnoremap f za

au BufRead,BufNewFile * set expandtab
au BufRead,BufNewFile * set shiftwidth=4
au BufRead,BufNewFile * set tabstop=4

au BufRead,BufNewFile Makefile set noexpandtab
au BufRead,BufNewFile Makefile set shiftwidth=8
au BufRead,BufNewFile Makefile set tabstop=8

set laststatus=2
set noshowmode
"map <C-BS> <C-W>
"imap <C-BS> <C-W>
"noremap! <C-BS> <C-w>
"noremap! <C-h> <C-w>


command Fp echo @%
map <C-f> :Lines<CR>
map <C-SPACE> :Files<CR>

vmap <Leader>g :<C-U>!git blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>


" Vim LaTeX PDF Preview
let g:livepreview_previewer = 'evince'
let g:python_host_prog = '/usr/local/opt/python/libexec/bin/python'

" Vim Bash stuff
"set shell=/bin/bash\ --rcfile\ ~/.bashrc
"command Latex :!sh ~/.launchscripts/clean_xetex.sh % -- deprecated by install
"of Vim-LaTeX

set hlsearch
nnoremap <C-N> :noh <CR>
nnoremap <Leader>h :Hbash <CR>
nnoremap <Leader>v :VTerm <CR>
noremap <Leader>g :GoldenRatioResize<CR>

"Use TAB to complete when typing words, else inserts TABs as usual.
"Uses dictionary and source files to find matching words to complete.

"See help completion for source,
"Note: usual completion is on <C-n> but more trouble to press all the time.
"Never type the same word twice and maybe learn a new spellings!
"Use the Linux dictionary when spelling is in doubt.
"Window users can copy the file to their machine.
function! Tab_Or_Complete()
    if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
        return "\<C-N>"
    else
        return "\<Tab>"
    endif
endfunction
:inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>

setlocal textwidth=80		" used for text wrapping

" For switching between many opened file by using ctrl+l or ctrl+h
map <C-J> :next <CR>
map <C-K> :prev <CR>

map <C-Q> :bp<bar>sp<bar>bn<bar>bd<CR>
" Spelling toggle via F10 and F11
map <F10> <Esc>setlocal spell spelllang=en_us<CR>
map <F11> <Esc>setlocal nospell<CR>

" Map tabbing to better keys
map <S-L> :bn <CR>
map <S-H> :bp <CR>
map <S-T> :tabe <CR>

map <S-J> :tabn<CR>
map <S-K> :tabp<CR>

" Window split settings
highlight TermCursor ctermfg=red guifg=red
set splitbelow
set splitright

" Terminal settings
tnoremap <Leader><ESC> <C-\><C-n>

" Window navigation function
" Make ctrl-h/j/k/l move between windows and auto-insert in terminals
func! s:mapMoveToWindowInDirection(direction)
    func! s:maybeInsertMode(direction)
        stopinsert
        execute "wincmd" a:direction

        if &buftype == 'terminal'
            startinsert!
        endif
    endfunc

    execute "tnoremap" "<silent>" "<C-" . a:direction . ">"
                \ "<C-\\><C-n>"
                \ ":call <SID>maybeInsertMode(\"" . a:direction . "\")<CR>"
    execute "nnoremap" "<silent>" "<C-" . a:direction . ">"
                \ ":call <SID>maybeInsertMode(\"" . a:direction . "\")<CR>"
endfunc
for dir in ["h", "j", "l", "k"]
    call s:mapMoveToWindowInDirection(dir)
endfor

let g:python3_host_prog = '/Users/otto-jaursk/.pyenv/versions/neovim3/bin/python'

map <Space> <C-D>
map ; <C-U>

map <C-A> :res -5 <CR>
map <C-S> :res +5 <CR>

"autocmd vimenter * NERDTreeTabsToggle
"autocmd vimenter * NERDTree

function! MyFoldText()
    let nblines = v:foldend - v:foldstart + 1
    let w = winwidth(0) - &foldcolumn - (&number ? 8 : 0)
    let line = getline(v:foldstart)
    let comment = substitute(line, '/\*\|\*/\|{{{\d\=', '', 'g')
    let expansionString = repeat(".", w - strwidth(nblines.comment.'"'))
    let txt = '"' . comment . expansionString . nblines
    return txt
endfunction

command! BW :bn|:bd#

set foldtext=MyFoldText()

augroup vimrc
  au BufReadPre * setlocal foldmethod=indent
  au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
augroup END

" Neovim stuff
if has('nvim')
    :tnoremap <Esc> <C-\><C-n>
    :tnoremap <a> <i>
    :tnoremap <A> <i>
    :tnoremap <o> <i>
    command Hbash bot split term://bash | resize 12
    command Bash terminal bash
    map <C-B> :Hbash <CR>
endif

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
