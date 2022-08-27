set number
set mouse=a
syntax enable
set showcmd
set encoding=utf-8
set showmatch
" set relativenumber
set ruler
set cursorline
set foldcolumn=0
set foldmethod=indent
set foldlevelstart=20
"tabulacion
set autoindent
set smartindent
set tabstop=4
set expandtab
set shiftwidth=4
" deshabilitamos la creacion de archivos swp 
set noswapfile
" Busqueda (https://victorhckinthefreeworld.com/2018/09/20/mejora-tu-experiencia-u  sando-el-editor-vim/)
set hlsearch " Resaltamos la busquedas
set incsearch  " Para realizar b√∫squedas incrementales mientras est√°s escribiendo
set ignorecase " Para realizar b√∫squedas ignorando si est√°n en may√∫sculas o min√∫sc  ulas
set smartcase " Para buscar sin tener en cuenta la configuraci√≥n anterior ignoreca  se cuando ambos ignorecasey smartcase est√°n activados y el patr√≥n de b√∫squeda cont  iene mayusculas

call plug#begin('~/.vim/plugged')
"""" temas
Plug 'sainnhe/gruvbox-material'
Plug 'sainnhe/edge'
Plug 'sainnhe/sonokai'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Plugins para javascript
Plug 'HerringtonDarkholme/yats.vim'
Plug 'pangloss/vim-javascript'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'


" Estos snippets estan en la siguiente url https://github.com/mlaursen/vim-react-snippets#useselector
Plug 'SirVer/ultisnips'
Plug 'mlaursen/vim-react-snippets'

" Emmet
Plug 'mattn/emmet-vim'

" Comentarios
Plug 'tpope/vim-commentary'

" Identacion
Plug 'Yggdroot/indentLine'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
" Para ver iconos con ayuda de nerdfonts
Plug 'ryanoasis/vim-devicons' 
Plug '907th/vim-auto-save'
"" git
Plug 'airblade/vim-gitgutter'
"" git lens
Plug 'APZelos/blamer.nvim'
"""" tag bar 
" Plug 'preservim/tagbar'
Plug 'jiangmiao/auto-pairs'
Plug 'mhinz/vim-startify'
"Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
call plug#end()

let mapleader=" "

" Configuracio para gruvbox-material
" set background=dark
" let g:gruvbox_material_background="medium"
" colorscheme gruvbox-material

" Configuracion para tema edge
" let g:edge_style = 'aura'
" let g:edge_better_performance = 1
" colorscheme edge
"
" Configuracion para tema sonokai
" Important!!
if has('termguicolors')
  set termguicolors
endif
" The configuration options should be placed before `colorscheme sonokai`.
let g:sonokai_style = 'atlantis'
let g:sonokai_better_performance = 1
let g:airline_theme = 'sonokai'
let g:lightline = {}
let g:lightline.colorscheme = 'sonokai'
let g:sonokai_transparent_background = 1
let g:sonokai_colors_override = {
          \ 'black':      ['#181a1c',   '237'],
          \ 'bg0':        ['#2a2f38',   '235'],
          \ 'bg1':        ['#333846',   '236'],
          \ 'bg2':        ['#373c4b',   '236'],
          \ 'bg3':        ['#3d4455',   '237'],
          \ 'bg4':        ['#424b5b',   '237'],
          \ 'bg_red':     ['#ff6d7e',   '203'],
          \ 'diff_red':   ['#55393d',   '52'],
          \ 'bg_green':   ['#a5e179',   '107'],
          \ 'diff_green': ['#394634',   '22'],
          \ 'bg_blue':    ['#7ad5f1',   '110'],
          \ 'diff_blue':  ['#354157',   '17'],
          \ 'diff_yellow':['#4e432f',   '54'],
          \ 'fg':         ['#e1e3e4',   '250'],
          \ 'red':        ['#ff6578',   '203'],
          \ 'orange':     ['#f69c5e',   '215'],
          \ 'yellow':     ['#eacb64',   '179'],
          \ 'green':      ['#9dd274',   '107'],
          \ 'blue':       ['#72cce8',   '110'],
          \ 'purple':     ['#ba9cf3',   '176'],
          \ 'grey':       ['#828a9a',   '246'],
          \ 'grey_dim':   ['#5a6477',   '240'],
          \ 'none':       ['NONE',      'NONE']
          \ }

colorscheme sonokai

"" configuracion  nerdtree
""CONFIGURACION PARA Plug 'scrooloose/nerdtree'
"" para acceder a este solo pulstamos epacio + nt
"" esto nos abre una pantalla y podemos ver su menu pulsando: m
nmap <Leader>nt :NERDTreeFind<CR>
autocmd VimEnter * NERDTree | wincmd p
let NERDTreeShowHidden=1

"  " Copy/paste from system clipboard
 map <C-y> "+y<CR>
imap <C-y> "+y<CR>

" Find files using Telescope command-line sugar.
nnoremap <Leader>ff <cmd>lua require('telescope.builtin').git_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>


"" Configuramos Airline
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='solarized_flood'
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#show_splits = 0 "enable/disable displaying open splits per tab (only when tabs are opened). >
let g:airline#extensions#tabline#show_buffers = 0 " enable/disable displaying buffers with a single tab

""Autosave
let g:auto_save = 1  " enable AutoSave on Vim startup

""vim-gitgutter
set updatetime=100
"" Git lens
let g:blamer_enabled = 1
let g:blamer_delay = 10
let g:blamer_show_in_visual_modes = 0
let g:blamer_prefix = ' > '

" Configuracion para emmet
let g:user_emmet_leader_key=','

" configuracion copiada para coc
" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" other plugin before putting this into your config.

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

" Configuracion que se agrego para que funcione la seleccion
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
inoremap <silent><expr> <C-x><C-z> coc#pum#visible() ? coc#pum#stop() : "\<C-x>\<C-z>"
" remap for complete to use tab and <cr>
inoremap <silent><expr> <TAB>
 \ coc#pum#visible() ? coc#pum#next(1):
 \ <SID>check_back_space() ? "\<Tab>" :
 \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <silent><expr> <c-space> coc#refresh()
