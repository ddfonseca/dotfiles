if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  if has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

    call dein#add('Shougo/deoplete.nvim')
    call dein#add('tomtom/tcomment_vim')
    call dein#add('noahfrederick/vim-hemisu')

    call dein#add('Shougo/deoplete.nvim')
    call dein#add('Shougo/neosnippet.vim')
    call dein#add('Shougo/neosnippet-snippets')
    call dein#add('jeetsukumaran/vim-buffergator')
    call dein#add('tpope/vim-surround')
"
  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable


"call dein#add('Shougo/dein.vim')
"call dein#add('gosukiwi/vim-atom-dark')
"call dein#add('ap/vim-buftabline')
"call dein#add('junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' })
"call dein#add('vim-scripts/gmsh.vim')
"call dein#add('SirVer/ultisnips')
"call dein#add('honza/vim-snippets')
"call dein#add('jeetsukumaran/vim-buffergator')
"call dein#add('cespare/vim-toml')
"call dein#add('tpope/vim-surround')
"call dein#add('sonph/onehalf', {'rtp': 'vim/'})
"call dein#add('noahfrederick/vim-hemisu')
"call dein#add('rakr/vim-one')
"call dein#add('endel/vim-github-colorscheme')
"call dein#add('yankcrime/direwolf')


if dein#check_install()
  call dein#install()
endif

let g:neosnippet#snippets_directory='~/.cache/dein/mysnippets'

"" key mappings for terminal
tnoremap jk <C-\><C-n>
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

let mapleader = "\<Space>"
inoremap jk <esc>
inoremap JK <esc>
nnoremap <Leader>rtw :%s/\s\+$//e<CR>
nnoremap <BS> gg
" inoremap ba <b>(INÉDITA -SEFA-BA 2019)</b>

nnoremap k gk
nnoremap j gj

"reload
nnoremap gsv :so $MYVIMRC<CR>

" trailing whitespace will be highlighted automatically, with the same syntax
" highlighting
 match ErrorMsg '\s\+$'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" Save with <Leader>w
nnoremap <Leader>fs :w<CR>

" Always use register system default to clipboard
set clipboard=unnamedplus

" Always be in the insert Mode when using terminal emulator
" autocmd BufWinEnter,WinEnter term://* startinsert

" buffer usage delete, previous and next buffer
nmap <Leader>bq :bp <BAR> bd #<CR>

" create a new term
nmap <Leader>' :term<CR>

" change the screen vsplit and
nmap <Leader>v :vsplit<CR>
nmap <Leader>- :split<CR>

" get rid of hlsearch after using /
" nnoremap <silent><Leader><Space> :nohlsearch<CR>
set nohlsearch

" set autowrite

set relativenumber
set number
set tabstop=4
set expandtab " Insere espaços no lugar de caracteres
set shiftwidth=4 "Define uma tabulação como sendo quatro espaços
set smarttab "Uso inteligente de tabulações
set softtabstop=4
set autoindent
set hidden
set showcmd
set ignorecase " for search case
set laststatus=0
" set cursorline
" colorscheme atom-dark-256
" colorscheme onehalfdark
colorscheme hemisu
" colorscheme direwolf
"  colorscheme one
"  colorscheme github
set background=light

" Change automatically the directory
set autochdir

" Copy all the contents
nnoremap <Leader>y ggyG`'

" Concurso Publico
nnoremap <Leader>d 0d$"a2dd
" nnoremap <Leader>sa ysf)<b>
" nmap <silent> <leader>sb ysis*gvS*

" nnoremap <Leader>s 099Jd$"add
" nnoremap <Leader>e ctE(<ESC>A)<ESC>
" Direito Administrativo
" Para Enunciado : o Mesmo de D. Const <Leader>edc

" Para Respostas Longas (a, b, c, d e e)
nnoremap <Leader>eadmrespa 99J0:%s/ERRADA/Questão incorreta/ge<CR>:%s/CORRETA/Questão correta/ge<CR>/a)<CR>dW"adf.x/b)<CR>dW"aPa<CR><CR><ESC>df.x/c)<CR>dW"aPa<CR><CR><ESC>df.x/d)<CR>dW"aPa<CR><CR><ESC>df.x/e)<CR>dW"aPa<CR><CR><ESC>"adf.xA<SPACE><ESC>"ap


" Pegando enunciado a), b), c), d) e e)
nnoremap <Leader>eadmenun 99J0dt(i<b><ESC>f)a</b><ESC>/a)<CR>dW"ay0/b)<CR>i<CR><CR><ESC>dW"aP/c)<CR>i<CR><CR><ESC>dW"aP/d)<CR>i<CR><CR><ESC>dW"aP/e)<CR>i<CR><CR><ESC>dW"aP:%s/\s\+$//e<CR>

" Respostas do enunciado I, II, III e IV
nnoremap <Leader>eadmrespiv 099J0:%s/ERRADA/Questão incorreta/ge<CR>:%s/CERTA/Questão correta/ge<CR>0dW"adf.x/II)<CR>dW"aPl"adf.i<CR><CR><ESC>/III)<CR>dW"aPl"adf.i<CR><CR><ESC>/IV)<CR>dW"aPl"adf.i<CR><CR><ESC>A<SPACE><ESC>"ap:%s/\s\+$//e<CR>

" Enunciado I, II, III, IV
nnoremap <silent> <Leader>eadmiv 099J0dWi<b><ESC>f)a</b><ESC>ldf:"ay0/I\.<CR>dW/II\.<CR>dWi<CR><CR><ESC>"aPa<SPACE><ESC>/III\.<CR>dWi<CR><CR><ESC>"aPa<SPACE><ESC>/IV\.<CR>dWi<CR><CR><ESC>"aPa<SPACE><ESC>:%s/\s\+$//e<CR>

" Enunciado I->V
nnoremap <silent> <Leader>eadmv 099J0dWi<b><ESC>f)a</b><ESC>ldf:"ay0/I\.<CR>dW/II\.<CR>dWi<CR><CR><ESC>"aPa<SPACE><ESC>/III\.<CR>dWi<CR><CR><ESC>"aPa<SPACE><ESC>/IV\.<CR>dWi<CR><CR><ESC>"aPa<SPACE><ESC>/V\.<CR>dWi<CR><CR><ESC>"aPa<SPACE><ESC>:%s/\s\+$//e<CR>

" Enunciado + Comentário
nnoremap <silent> <Leader>eadmcom. 099J0dt(i<b><ESC>f)a</b><ESC>/Comentá<CR>df.xi<CR><CR><ESC>:%s/ Gabarito: Certo/Questão correta./e<CR>:%s/ Gabarito: Errado/Questão incorreta./e<CR>:%s/\s\+$//e<CR>

nnoremap <silent> <Leader>eadmcom, 099J0dt(i<b><ESC>f)a</b><ESC>/Comentá<CR>df,xgUli<CR><CR><ESC>:%s/ Gabarito: Certo/Questão correta./e<CR>:%s/ Gabarito: Errado/Questão incorreta./e<CR>:%s/\s\+$//e<CR>

nnoremap <silent> <Leader>eadmcom; 099J0dt(i<b><ESC>f)a</b><ESC>/Comentá<CR>df:xi<CR><CR><ESC>:%s/ Gabarito: Certo/Questão correta./e<CR>:%s/ Gabarito: Errado/Questão incorreta./e<CR>:%s/Gabarito: E/Questão incorreta/e<CR>:%s/Gabarito: C/Questão correta./e<CR>:%s/\s\+$//e<CR>

" Direito Constitucional
" Enunciado + Comentário
nmap <Leader>edb 99J0i<b><ESC>f)a</b><ESC>/Comentá<CR>dWi<CR><CR><ESC>gUl:%s/errada/incorreta/e<CR>:%s/Gabarito: correto/Questão correta/e<CR>:%s/Gabarito: errado/Questão incorreta/e<CR>:%s/\s\+$//e<CR>:%s/Gabarito: correta/Questão correta./e<CR>

nmap <Leader>edn 99J0r(f]r)0i<b><ESC>f)a</b><ESC>/Comentá<CR>dWi<CR><CR><ESC>gUl:%s/errada/incorreta/e<CR>:%s/Gabarito: correto/Questão correta/e<CR>:%s/Gabarito: errado/Questão incorreta/e<CR>:%s/\s\+$//e<CR>:%s/Gabarito: correta/Questão correta./e<CR>

nmap <Leader>edm i(<ESC>A)<ESC>99J0i<b><ESC>f)a</b><ESC>/Comentá<CR>dWi<CR><CR><ESC>gUl:%s/errada/incorreta/e<CR>:%s/Gabarito: correto/Questão correta/e<CR>:%s/Gabarito: errado/Questão incorreta/e<CR>:%s/\s\+$//e<CR>:%s/Gabarito: correta/Questão correta./e<CR>

" Para Respostas Longas (a, b, c, d e e)
nnoremap <Leader>eda 99J0df.x/Letra<CR>df.i<CR><CR><ESC>/Letra<CR>df.i<CR><CR><ESC>/Letra<CR>df.i<CR><CR><ESC>/Letra<CR>df.i<CR><CR><ESC>:%s/\s\+$//e<CR>gg

" Para Enunciado (só com respostas, sem o enunciado propriamente dito)
nmap <silent><Leader>edc 99J0dWi<b><ESC>f)a</b><ESC>ldf)lgUlh"ay0/b)<CR>dWgUli<CR><CR><ESC>"aPa<Space><ESC>/c)<CR>dWgUli<CR><CR><ESC>"aPa<Space><ESC>/d)<CR>dWgUli<CR><CR><ESC>"aPa<Space><ESC>/e)<CR>dWgUli<CR><CR><ESC>"aPa<Space><ESC>:%s/\s\+$//e<CR>gg

"Exponencial Constituccional
nnoremap <Leader>ecxp 99J0dWi<b><ESC>f)a</b><ESC>/Resolução:<CR>dWi<CR><CR><ESC>guliQuestão<SPACE><ESC>0d2WA<SPACE><ESC>p:%s/errada/incorreta/ge<CR>:%s/\s\+$//e<CR>gg

" TECconcursos
nmap <silent> <Leader>e dWi<b>(<ESC>A)</b><ESC>99J0v/a)\C<CR>h"ay/a)\C<CR>dW/b)\C<CR>dWi<CR><CR><ESC>"aP/c)\C<CR>dWi<CR><CR><ESC>"aP/d)\C<CR>dWi<CR><CR><ESC>"aP/e)\C<CR>dWi<CR><CR><ESC>"aP:%s/\s\+$//e<CR>

nmap <silent> <Leader>etec2 dWi<b>(<ESC>A)</b><SPACE><ESC>d/a)\C<CR>dWgUli<SPACE><ESC>"ay099J0/b\C)<CR>i<CR><CR><ESC>dWgUl"aPa<SPACE><ESC>/c\C)<CR>i<CR><CR><ESC>dWgUl"aPa<SPACE><ESC>/d\C)<CR>i<CR><CR><ESC>dWgUl"aPa<SPACE><ESC>/e\C)<CR>i<CR><CR><ESC>dWgUl"aPa<SPACE><ESC>:%s/\s\+$//e<CR>

" nmap <silent> <Leader>eteciv dWi<b>(<ESC>A)</b><ESC>0"ad$d/I\C<CR>x"aP/II\C<CR>de"aP/III\C<CR>de"aP/IV\C<CR>de"aP:%s/\s\+$//e<CR>

nnoremap <silent> <Leader>eteciv dWi<b>(<ESC>A)</b><ESC>0f/dt2i<SPACE>-<SPACE><ESC>0"ad$d/I\C<CR>dE"aP/II\C<CR>dE"aP/III\C<CR>dE"aP/IV\C<CR>dE"aP:%s/\s\+$//e<CR>

nnoremap <silent> <Leader>c xdWi<b>(<ESC>A)</b><ESC>0f/dt2i<SPACE>-<SPACE><ESC>jdjkJ

nmap <silent> <Leader>etcesp dWi<b>(<ESC>A)</b><ESC>0f/dt2i<SPACE>-<SPACE><ESC>f(da)hxjd2jkJ

"""" T.I
nnoremap <Leader>eti 99J0dWi<b><ESC>f)a</b><ESC>/Comentá<CR>i<CR><CR><ESC>dW:%s/gabarito: errado/Questão incorreta/e<CR>:%s/gabarito: correto/Questão correta/e<CR>:%s/gabarito: errada!/Questão incorreta./e<CR>:%s/Certa/Questão correta/e<CR>:%s/Correto/Questão correta/e<CR>:%s/Errada!/Questão incorreta/e<CR>:%s/Errado/Questão incorreta/e<CR>:%s/\s\+$//e<CR>

" "" Legislação Estadual
" nnoremap <Leader>les 99J0dWxi<b>(<ESC>f]xi)</b><ESC>l"ay0/(a)<CR>dW/(b)<CR>dWi<CR><CR><ESC>"aPa<SPACE><ESC>/(c)<CR>dWi<CR><CR><ESC>"aPa<SPACE><ESC>/(d)<CR>dWi<CR><CR><ESC>"aPa<SPACE><ESC>/(e)<CR>dWi<CR><CR><ESC>"aPa<SPACE><ESC>:%s/\s\+$//e<CR>


"""" Direito Tributário
nnoremap <Leader>etp d3wi<b>(<ESC>A)</b><ESC>9J0d$"add
nnoremap <Leader>ett ddi<b>(<ESC>A)</b><ESC>99J0/Comentário<CR>i<CR><CR><ESC>dW:%s/\s\+$//e<CR>:%s/Gabarito: Errada/Questão incorreta./ge<CR>:%s/Gabarito: Correta/Questão correta./ge<CR>

" Excluindo o enunciado pegando só as alternativas
nnoremap <Leader>etlx d3Wi<b>(<ESC>A)</b><SPACE><ESC>d/a)<CR>0"ay$99J/a)<CR>dWgUl/b)<CR>i<CR><CR><ESC>dWgUl"aPa<SPACE><ESC>/c)<CR>i<CR><CR><ESC>dWgUl"aPa<SPACE><ESC>/d)<CR>i<CR><CR><ESC>dWgUl"aPa<SPACE><ESC>/e)<CR>i<CR><CR><ESC>dWgUl"aPa<SPACE><ESC>:%s/\s\+$//e<CR>

" Pegando o enunciado (normalmente quando ele é curto)
nmap <silent> <Leader>edtrienun d3Wi<b>(<ESC>A)</b><ESC>99J0v/a)<CR>h"ay/a)<CR>dW/b)<CR>dWi<CR><CR><ESC>"aP/c)<CR>dWi<CR><CR><ESC>"aP/d)<CR>dWi<CR><CR><ESC>"aP/e)<CR>dWi<CR><CR><ESC>"aP:%s/\s\+$//e<CR>

"" Respostas Longas Alternativas A, Alternativa B.
nnoremap <Leader>etlr 099J0df:x/Alternativa<CR>ni<CR><CR><ESC>df:x2ni<CR><CR><ESC>df:x2ni<CR><CR><ESC>df:x2ni<CR><CR><ESC>df:x:%s/Alternativa/Questão/g<CR>:%s/errada/incorreta/g<CR>:%s/\s\+$//e<CR>

" nnoremap <Leader>etlr 099J0df:x/Alternativa<CR>i<CR><CR><ESC>df:xni<CR><CR><ESC>df:xni<CR><CR><ESC>df:xni<CR><CR><ESC>df:x:%s/Item\C/Questão/g<CR>:%s/errado/incorreta/g<CR>:%s/correto/correta/<CR>:%s/\s\+$//e<CR>

" Questão correta e Questão incorreta.
nnoremap <Leader>qi A<Space>Questão<Space>incorreta.<ESC>
nnoremap <Leader>qc A<Space>Questão<Space>correta.<ESC>
nmap <silent> <Leader>ec ysf)<b>

nnoremap <Leader>legis :%s/•/ç/ge<CR>:%s/›/õ/ge<CR>:%s/‹/ã/ge<CR>:%s/—/ó/ge<CR>:%s/ˆ/à/ge<CR>:%s/Ž/é/ge<CR>:%s/‡/á/ge<CR>:%s/’/í/ge<CR>:%s/œ/ú/ge<CR>:%s/Ð/-/ge<CR>:%s/‰/â/ge<CR>:%s/¤/§/ge<CR>:%s/çn/ên/ge<CR>:%s/vocç/você/ge<CR>:%s/ƒ/É/ge<CR>:%s/1⁄4/°/ge<CR>:%s/TM/ô/ge<CR>:%s/mçs/mês/ge<CR>

nnoremap <Leader>I :%s/I\./a)/geI<CR>:%s/Ia)/b)/geI<CR>:%s/Ib)/c)/geI<CR>:%s/IV\./d)/geI<CR>

nnoremap <Leader>qq i<b>(<ESC>lxA)</b><ESC>J

nmap <Leader>av dWl"adedf<Space>f)i<Space>-<Space><Esc>"ap2ldf-0<Leader>edb


" 99J0i<b><ESC>f)a</b><ESC>/Comentá<CR>dWi<CR><CR><ESC>gUl:%s/errada/incorreta/e<CR>:%s/Gabarito: correto/Questão correta/e<CR>:%s/Gabarito: errado/Questão incorreta/e<CR>:%s/\s\+$//e<CR>:%s/Gabarito: correta/Questão correta./e<CR>

" Fuzzy Finder
" nnoremap <Leader>t :FZF<CR>
" nnoremap <Leader>p :FZF ~/<CR>

" Save utf8
nnoremap <Leader>t :set fileencoding=utf8 <BAR> :set bomb <BAR> :w<CR>

" Spell Checker
nnoremap <F7> :set spell <BAR> set spelllang=pt_br,en_us<CR>
nnoremap <F8> :set nospell<CR>

"" PLUGIN CONFIGURATIONS
"" name: Deoplete
    let g:deoplete#enable_at_startup = 1
    " disable autocomplete
    " let g:deoplete#disable_auto_complete = 1
    if has("gui_running")
        inoremap <silent><expr><C-Space> deoplete#mappings#manual_complete()
    else
        inoremap <silent><expr><C-@> deoplete#mappings#manual_complete()
    endif

" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)


" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <expr><TAB>
 \ pumvisible() ? "\<C-n>" :
 \ neosnippet#expandable_or_jumpable() ?
 \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

" name: Buffergator
    " Use the right side of the screen
    let g:buffergator_viewport_split_policy = 'R'

    " I want my own keymappings...
    let g:buffergator_suppress_keymaps = 1

    " Go to the previous buffer open
    nmap <leader>h :BuffergatorMruCyclePrev<cr>

    " Go to the next buffer open
    nmap <leader>l :BuffergatorMruCycleNext<cr>

    " View the entire list of buffers open
    nmap <leader>bl :BuffergatorOpen<cr>

" name: FZF
function! s:buflist()
  redir => ls
  silent ls
  redir END
  return split(ls, '\n')
endfunction

function! s:bufopen(e)
  execute 'buffer' matchstr(a:e, '^[ 0-9]*')
endfunction

nnoremap <silent> <Leader>bb :call fzf#run({
\   'source':  reverse(<sid>buflist()),
\   'sink':    function('<sid>bufopen'),
\   'options': '+m',
\   'down':    len(<sid>buflist()) + 2
\ })<CR>


"" surround
    let g:surround_102 = "<b><font color=\"#2168ff\">\r</font></b>"
    let g:surround_98 = "<b>\r</b>"
    let g:surround_99 = "{{c1::\r}}"

" check off a todo item and time stamp it
map gb ^rx: <Esc>:r! date +" [\%H:\%M]"<ENTER>kJA<Esc>$
" create a new todo item
map gt o_<SPACE>

map gd :r! date +" \%H:\%M - \%d \%b \%Y"<CR>0x
let $PYTHONPATH="/usr/lib/python3.7/site-packages"
