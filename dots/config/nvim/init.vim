set nocompatible  " disable vi compability
set encoding=utf8 " set encoding to utf-8

if !exists('g:os')
  if has('win64') || has('win32') || has('win16')
    let g:os = 'Windows'
  else
    let g:os = substitute(system('uname'), '\n', '', '')
  endif
endif

let g:isWsl = 0

let uname = substitute(system('uname'),'\n','','')
if uname == 'Linux'
  if isdirectory('/mnt/c/Windows')
    let g:isWsl = 1
  endif
endif

" plug
filetype off
if g:os == 'Windows'
  call plug#begin('~/AppData/Local/nvim/plugged')
else
  call plug#begin('~/.config/nvim/plugged')
endif
" themes
" Plug 'chriskempson/base16-vim'
Plug 'wadackel/vim-dogrun'
Plug 'tyrannicaltoucan/vim-deep-space'
Plug 'liuchengxu/space-vim-dark'
Plug 'arcticicestudio/nord-vim'
Plug 'andreasvc/vim-256noir'
Plug 'jdsimcoe/abstract.vim'
Plug 'AlessandroYorba/Alduin'
Plug 'ajmwagar/vim-deus'
Plug 'romainl/flattened'
Plug 'rakr/vim-two-firewatch'
Plug 'sainnhe/sonokai'
Plug 'jaredgorski/SpaceCamp'
Plug 'nikolvs/vim-sunbather'
Plug 'marcopaganini/termschool-vim-theme'
Plug 'EdenEast/nightfox.nvim'
Plug 'joshdick/onedark.vim'
Plug 'nanotech/jellybeans.vim'
Plug 'w0ng/vim-hybrid'
Plug 'Badacadabra/vim-archery'
Plug 'yorickpeterse/happy_hacking.vim'
Plug 'romgrk/doom-one.vim'
Plug 'zacanger/angr.vim'
Plug 'Luxed/ayu-vim'
Plug 'tomasr/molokai'
Plug 'connorholyday/vim-snazzy'
Plug 'Mangeshrex/uwu.vim'
Plug 'relastle/bluewery.vim'
Plug 'dracula/vim', { 'as': 'dracula' }

" sqlite
if g:os == 'Windows'
  Plug 'tami5/sqlite.lua'
endif

" vim-markdown
" Plug 'godlygeek/tabular'
" Plug 'plasticboy/vim-markdown'

" emmet-vim
" Plug 'mattn/emmet-vim'

" vim-commentary
Plug 'tpope/vim-commentary'

" vim-sleuth
Plug 'tpope/vim-sleuth'

" vim-abolish
Plug 'tpope/vim-abolish'

" vim-repeat
Plug 'tpope/vim-repeat'

" vim-surround
Plug 'tpope/vim-surround'

" vim-speeddating
Plug 'tpope/vim-speeddating'

" vim-unimpaired
Plug 'tpope/vim-unimpaired'

" vim-fugitive
Plug 'tpope/vim-fugitive'

" vim-searchlight
Plug 'PeterRincker/vim-searchlight'

" nvim-colorizer
Plug 'norcalli/nvim-colorizer.lua'

" vim-rooter
Plug 'airblade/vim-rooter'

" vim-strip-trailing-whitespace
Plug 'axelf4/vim-strip-trailing-whitespace'

" bufferize
Plug 'AndrewRadev/bufferize.vim'

" nvim-bqf
Plug 'kevinhwang91/nvim-bqf'

" camelcasemotion
Plug 'bkad/CamelCaseMotion'

" vim-open-url
Plug 'dhruvasagar/vim-open-url'

" luasnip
Plug 'L3MON4D3/LuaSnip'

" lsp
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'hrsh7th/cmp-vsnip'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'jose-elias-alvarez/nvim-lsp-ts-utils'
Plug 'ray-x/lsp_signature.nvim'
Plug 'williamboman/nvim-lsp-installer'

" vim-vsnip
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'

" vim-ultest
if g:os != 'Windows'
Plug 'vim-test/vim-test'
Plug 'rcarriga/vim-ultest', { 'do': ':UpdateRemotePlugins' }
endif

" choosewin
Plug 't9md/vim-choosewin'

" incsearch
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'

" hop.nvim
Plug 'phaazon/hop.nvim'

" vim-far
Plug 'brooth/far.vim'

" vim-floaterm
Plug 'voldikss/vim-floaterm'

" beacon
Plug 'danilamihailov/beacon.nvim'

" bufkill
Plug 'qpkorr/vim-bufkill'

" dashboard
Plug 'glepnir/dashboard-nvim'

" nvim-tree
Plug 'kyazdani42/nvim-tree.lua'

" lualine
Plug 'nvim-lualine/lualine.nvim'

" tmux-navigator
Plug 'christoomey/vim-tmux-navigator'

" auto-pairs
Plug 'jiangmiao/auto-pairs'

" which-key
Plug 'folke/which-key.nvim'

" vim-easy-align
Plug 'junegunn/vim-easy-align'

" neoscroll
Plug 'karb94/neoscroll.nvim'

" taboo
Plug 'gcmt/taboo.vim'

" nvim-dap
Plug 'mfussenegger/nvim-dap'
Plug 'Pocco81/DAPInstall.nvim'
Plug 'rcarriga/nvim-dap-ui'

" nvim-dap-virtual-text
Plug 'theHamsta/nvim-dap-virtual-text'

" telekasten
" Plug 'renerocksai/calendar-vim'
Plug 'renerocksai/telekasten.nvim'

" telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-dap.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
if g:os == 'Windows'
  Plug 'nvim-telescope/telescope-frecency.nvim'
endif

" vim-gitgutter
Plug 'airblade/vim-gitgutter'

" vim-devicons
Plug 'ryanoasis/vim-devicons'

" vim-web-devicons
Plug 'kyazdani42/nvim-web-devicons'

" scratch
Plug 'mtth/scratch.vim'

" indent-blankline
Plug 'lukas-reineke/indent-blankline.nvim'

" neoterm
Plug 'kassio/neoterm'

" nvim-treesitter
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
Plug 'nvim-treesitter/nvim-treesitter-refactor'
Plug 'p00f/nvim-ts-rainbow'

" symbols-outline
Plug 'simrat39/symbols-outline.nvim'

" js
" Plug 'pangloss/vim-javascript'
" Plug 'leafgarland/typescript-vim'
" Plug 'peitalin/vim-jsx-typescript'
" Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

" graphql
" Plug 'jparise/vim-graphql'
call plug#end()

"disable keys
map <c-s> <nop>
map <c-g> <nop>
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" options
filetype plugin indent on
syntax on
set termguicolors              " enable true colors support
set background=dark            " for either mirage or dark version.
let g:ayucolor='dark'          " for dark version of theme
colorscheme ayu
hi Search guifg=black guibg=#ccff00
hi Searchlight guifg=white guibg=#f92672
hi FocusedSymbol guifg=white gui=bold

" sign column
if has('nvim-0.5.0') || has('patch-8.1.1564')
  " set signcolumn=number
  set signcolumn=yes:1
else
  set signcolumn=yes
endif

set nu rnu                     " show relative line numbers
set linebreak                  " break lines at word (requires wrap lines)
set showbreak=+++              " wrap-broken line prefix
set textwidth=100              " line wrap (number of cols)
set showmatch                  " highlight matching brace
set belloff=all                " turn off visual bell and beep

set timeoutlen=500             " set key sequence timeout
set ttimeoutlen=0              " remove key code delay
set updatetime=1000             " set update delay

set scrolloff=8                " always keep cursor 8 lines from boundary
set fillchars=""               " remove unnecessary chars in separators
set clipboard+=unnamedplus     " add unnamed register to clipboard
set wildmenu                   " improve command-line completion
" set autochdir                  " automatically switch working directory when switching buffers

set inccommand=nosplit         " show ex command previews
set hlsearch                   " highlight all search results
set incsearch                  " searches for strings incrementally
set smartcase                  " enable smart-case search
set ignorecase                 " always case-insensitive

set autoindent                 " auto-indent new lines
set smartindent                " enable smart-indent
set expandtab                  " use spaces instead of tabs
set shiftwidth=2               " number of auto-indent spaces
set smarttab                   " enable smart-tabs
set softtabstop=2              " number of spaces per tab
set list                       " show whitespace characters

set autowriteall               " auto-write all file changes
set noswapfile                 " disable swap file
set undofile                   " maintain undo history between sessions
set undodir=~/.undo            " undo directory
set undolevels=10000           " number of undo levels
set backspace=indent,eol,start " backspace behaviour

set laststatus=2               " always draw status line
set ch=1                       " make command line 2 lines high
set lazyredraw                 " do not update the display while executing macros
set noshowcmd                  " do not show the current command
set showmode                   " show the current mode
set hidden                     " don't remove hidden buffers
set switchbuf+=useopen         " prefer to switch buffer to already open window

set mouse=a                    " enable mouse support in all modes

" cursorline
set cursorline
augroup CursorLineGroup
  autocmd!
  au WinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup end

" folding
set foldmethod=expr
set foldnestmax=10
set foldlevel=0
set nofoldenable
autocmd BufEnter,InsertEnter * silent! set foldmethod=expr
autocmd BufLeave,InsertLeave,WinLeave * silent! set foldmethod=expr

" session
set sessionoptions+=tabpages,globals " store tabpages and globals in session
set sessionoptions-=blank                " remove blank buffers

" line wrapping
set nowrap
au FileType help setlocal wrap
au FileType markdown setlocal wrap
au FileType mdx setlocal wrap

" wsl clipboard
" if (g:isWsl == 1)
"   let g:clipboard = {
"   \   'name': 'win32yank-wsl',
"   \   'copy': {
"   \     '+': '/mnt/c/Users/Administrator/scoop/shims/win32yank.exe -i --crlf',
"   \     '*': '/mnt/c/Users/Administrator/scoop/shims/win32yank.exe -i --crlf',
"   \   },
"   \   'paste': {
"   \     '+': '/mnt/c/Users/Administrator/scoop/shims/win32yank.exe -o --lf',
"   \     '*': '/mnt/c/Users/Administrator/scoop/shims/win32yank.exe -o --lf',
"   \   },
"   \   'cache_enabled': 1,
"   \ }
" endif

" disable newline comments
set formatoptions-=cro
augroup filetype_vim
  au!
  au FileType vim setlocal formatoptions-=ro
augroup END

" ensure quickfix is modifiable
au BufWinEnter * if &filetype == 'qf' | setlocal modifiable | endif

" terminal
if g:os == 'Windows'
  set shell=cmd
endif

" markdown
let g:markdown_fenced_languages = [
  \ 'js=javascript',
  \ 'ts=typescript',
  \ 'jsx=javascriptreact',
  \ 'tsx=typescriptreact',
  \]

" js: fix highlighting
au BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
au BufLeave,WinLeave *.{js,jsx,ts,tsx} :syntax sync clear

" lualine
lua << EOF
require'lualine'.setup{
  options = {
    section_separators = '',
    component_separators = '',
  },
}
EOF

" nvim-bqf
lua << EOF
require('bqf').setup({
  func_map = {
    split = '<c-s>',
    pscrollup = '<c-u>',
    pscrolldown = '<c-d>'
  },
})
EOF

" create new buffer
function! CreateEmptyBuffer()
  enew
  if g:os == 'windows'
    set filetype=markdown
  else
    set filetype=telekasten
  endif
  " let l:date = strftime('%H%M%S')
  " execute 'file ' . l:date
endfunction

" quickfix - remove highlighted item from list
function! RemoveQFItem()
  let curqfidx = line('.') - 1
  let qfall = getqflist()
  call remove(qfall, curqfidx)
  call setqflist(qfall, 'r')
  execute curqfidx + 1 . "cfirst"
  :copen
endfunction
command! RemoveQFItem :call RemoveQFItem()

" quickfix - clear list
command! ClearQuickfixList cexpr []

" quickfix - get buffer list
function! GetBufferList()
  redir =>buflist
  silent! ls!
  redir END
  return buflist
endfunction

" quickfix - toggle list
function! ToggleList(bufname, pfx)
  let buflist = GetBufferList()
  for bufnum in map(filter(split(buflist, '\n'), 'v:val =~ "'.a:bufname.'"'), 'str2nr(matchstr(v:val, "\\d\\+"))')
    if bufwinnr(bufnum) != -1
      exec(a:pfx.'close')
      return
    endif
  endfor
  if a:pfx == 'l' && len(getloclist(0)) == 0
      echohl ErrorMsg
      echo "Location List is Empty."
      return
  endif
  let winnr = winnr()
  exec(a:pfx.'open')
  if winnr() != winnr
    wincmd p
  endif
endfunction

" quickfix - add current line
function! QFAddLine()
  let l:lnum = line('.')
  let l:col = col('.')
  let l:bufnr = bufnr('%')
  let l:text = getline('.')
  let l:data = { 'bufnr': l:bufnr, 'lnum': l:lnum, 'col': l:col, 'text': l:text }
  let l:qf = getqflist()
  let l:list = l:qf + [l:data]
  call setqflist(l:list)
endfunction
command! QFAddLine call QFAddLine()

" quickfix - add current line with text
function! QFAddLineWithText(text)
  let l:lnum = line('.')
  let l:col = col('.')
  let l:bufnr = bufnr('%')
  let l:line = getline('.')
  let l:result = Prompt("Enter " . a:text)
  let l:text = a:text . " " . l:result
  let l:data = { 'bufnr': l:bufnr, 'lnum': l:lnum, 'col': l:col, 'text': l:text }
  let l:qf = getqflist()
  let l:list = l:qf + [l:data]
  call setqflist(l:list)
endfunction
command! QFAddTodo call QFAddLineWithText('TODO')
command! QFAddFixme call QFAddLineWithText('FIXME')

" quickfix - save list
let g:qf_saved_lists = {}

function! QFSaveList(override)
  if (a:override == 1)
    let l:name = strftime("%T")
  else
    let l:name = Prompt("Enter name")
    if l:name == ''
      let l:name = strftime("%T")
    endif
  endif
  let l:qf = getqflist()
  let g:qf_saved_lists[l:name] = l:qf
endfunction
command! QFFastSaveList call QFSaveList(1)
command! QFSaveList call QFSaveList(0)

function! QFClearList()
  let g:qf_saved_lists = {}
endfunction
command! QFClearList call QFClearList()

" quickfix - load list
function! QFLoadList(name)
  call setqflist(g:qf_saved_lists[a:name])
endfunction

lua << EOF
local pickers = require"telescope.pickers"
local finders = require"telescope.finders"
local actions = require"telescope.actions"
local action_state = require"telescope.actions.state"
local conf = require"telescope.config".values

local qf_load_list = function(prompt_bufnr)
  vim.fn.QFLoadList(action_state.get_selected_entry().value)
  actions.close(prompt_bufnr)
end

_G.QFListPicker = function(opts)
  opts = opts or {}
  pickers.new(opts, {
    attach_mappings = function(_, map)
       map("i", "<cr>", qf_load_list)
       map("n", "<cr>", qf_load_list)
       return true
    end,
    prompt_title = "Saved Quickfix Lists",
    finder = finders.new_table{
      results = vim.fn.keys(vim.g.qf_saved_lists)
    },
    sorter = conf.generic_sorter(opts),
  }):find()
end
EOF

" symbols-outline
lua << EOF
vim.g.symbols_outline = {
  highlight_hovered_item = true,
  show_guides = true,
  auto_preview = true,
  position = 'right',
  relative_width = false,
  -- width = 25,
  -- auto_close = false,
  -- show_numbers = true,
  -- show_relative_numbers = true,
  show_symbol_details = true,
  preview_bg_highlight = 'Pmenu',
  -- keymaps = {
  --   close = {"<Esc>", "q"},
  --   goto_location = "<Cr>",
  --   focus_location = "o",
  --   hover_symbol = "<C-space>",
  --   toggle_preview = "K",
  --   rename_symbol = "r",
  --   code_actions = "a",
  -- },
  lsp_blacklist = {},
  symbol_blacklist = {},
  -- symbols = {
  --   File = {icon = "", hl = "TSURI"},
  --   Module = {icon = "", hl = "TSNamespace"},
  --   Namespace = {icon = "", hl = "TSNamespace"},
  --   Package = {icon = "", hl = "TSNamespace"},
  --   Class = {icon = "𝓒", hl = "TSType"},
  --   Method = {icon = "ƒ", hl = "TSMethod"},
  --   Property = {icon = "", hl = "TSMethod"},
  --   Field = {icon = "", hl = "TSField"},
  --   Constructor = {icon = "", hl = "TSConstructor"},
  --   Enum = {icon = "ℰ", hl = "TSType"},
  --   -- Interface = {icon = "", hl = "TSType"},
  --   Interface = {icon = "ﰮ", hl = "TSType"},
  --   Function = {icon = "λ", hl = "TSFunction"},
  --   Variable = {icon = "", hl = "TSConstant"},
  --   Constant = {icon = "", hl = "TSConstant"},
  --   String = {icon = "𝓐", hl = "TSString"},
  --   Number = {icon = "#", hl = "TSNumber"},
  --   Boolean = {icon = "⊨", hl = "TSBoolean"},
  --   Array = {icon = "", hl = "TSConstant"},
  --   Object = {icon = "⦿", hl = "TSType"},
  --   Key = {icon = "🔐", hl = "TSType"},
  --   Null = {icon = "NULL", hl = "TSType"},
  --   EnumMember = {icon = "", hl = "TSField"},
  --   Struct = {icon = "𝓢", hl = "TSType"},
  --   Event = {icon = "🗲", hl = "TSType"},
  --   Operator = {icon = "+", hl = "TSOperator"},
  --   TypeParameter = {icon = "𝙏", hl = "TSParameter"}
  -- }
}
EOF

" nvim-colorizer
lua require'colorizer'.setup()

" indent_blankline
lua << EOF
require'indent_blankline'.setup{
  show_current_context = true,
  show_current_context_start = true,
}
EOF
let g:indent_blankline_filetype_exclude = ['help', 'terminal', 'neoterm', 'Outline', 'NvimTree', 'dashboard']
let g:indent_blankline_buftype_exclude = ['terminal']

" beacon
let g:beacon_size = 40
let g:beacon_ignore_filetypes = ['NvimTree', 'neoterm', 'terminal', 'Outline', 'dashboard']

" nvim-treesitter
lua << EOF
require'nvim-treesitter.configs'.setup{
  ensure_installed = 'maintained',
  sync_install = false,
  rainbow = {
    enable = true,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  },
  refactor = {
    highlight_definitions = { enable = false },
    highlight_current_scope = { enable = false },
    navigation = {
      enable = true,
      keymaps = {
        goto_definition = "<leader>jd",
        list_definitions = "<leader>jD",
        -- goto_next_usage = "<a-*>",
        -- goto_previous_usage = "<a-#>",
      },
    },
    smart_rename = {
      enable = true,
      keymaps = {
        smart_rename = "<leader>jl",
      },
    },
  },
  indent = {
    enable = true,
  },
  highlight = {
    enable = true,
},
  -- incremental_selection = {
  --   enable = true,
  --   keymaps = {
  --     init_selection = 'gnn',
  --     node_incremental = 'grn',
  --     scope_incremental = 'grc',
  --     node_decremental = 'grm',
  --   },
  -- },
  textobjects = {
    select = {
      enable = true,
      lookahead = true, -- automatically jump forward to textobj, similar to targets.vim
      keymaps = {
        -- you can use the capture groups defined in textobjects.scm
        ['af'] = '@function.outer',
        ['if'] = '@function.inner',
        ['ac'] = '@class.outer',
        ['ic'] = '@class.inner',
      },
    },
    move = {
      enable = true,
      set_jumps = true, -- whether to set jumps in the jumplist
      goto_next_start = {
        ["<c-g>ff"] = "@function.outer",
        ["<c-g>cc"] = "@class.outer",
      },
      goto_next_end = {
        ["<c-g>fe"] = "@function.outer",
        ["<c-g>ce"] = "@class.outer",
      },
      goto_previous_start = {
        ["<c-g>FF"] = "@function.outer",
        ["<c-g>CC"] = "@class.outer",
      },
      goto_previous_end = {
        ["<c-g>FE"] = "@function.outer",
        ["<c-g>CE"] = "@class.outer",
      },
    },
  },
}
-- require'tree-sitter-typescript'.typescript{}
-- require'tree-sitter-typescript'.tsx{}
EOF
set foldexpr=nvim_treesitter#foldexpr()
" 4
" 6
" 1
" 3
" 5
" 7
" 2
hi rainbowcol4 guifg=#55B4D4
hi rainbowcol6 guifg=#A37ACC
hi rainbowcol1 guifg=#FFCC66
hi rainbowcol3 guifg=#399EE6
hi rainbowcol5 guifg=#FF8F40
hi rainbowcol7 guifg=#5CCFE6
hi rainbowcol2 guifg=#BAE67E

" which-key
lua << EOF
  require("which-key").setup {
    {
      plugins = {
        marks = true, -- shows a list of your marks on ' and `
        registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
        spelling = {
          enabled = true, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
          suggestions = 20, -- how many suggestions should be shown in the list?
        },
        -- the presets plugin, adds help for a bunch of default keybindings in Neovim
        -- No actual key bindings are created
        presets = {
          operators = true, -- adds help for operators like d, y, ... and registers them for motion / text object completion
          motions = true, -- adds help for motions
          text_objects = true, -- help for text objects triggered after entering an operator
          windows = true, -- default bindings on <c-w>
          nav = true, -- misc bindings to work with windows
          z = true, -- bindings for folds, spelling and others prefixed with z
          g = true, -- bindings for prefixed with g
        },
      },
      -- add operators that will trigger motion and text object completion
      -- to enable all native operators, set the preset / operators plugin above
      operators = { gc = "Comments" },
      key_labels = {
        -- override the label used to display some keys. It doesn't effect WK in any other way.
        -- For example:
        -- ["<space>"] = "SPC",
        -- ["<cr>"] = "RET",
        -- ["<tab>"] = "TAB",
      },
      icons = {
        breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
        separator = "➜", -- symbol used between a key and it's label
        group = "+", -- symbol prepended to a group
      },
      popup_mappings = {
        scroll_down = '<c-d>', -- binding to scroll down inside the popup
        scroll_up = '<c-u>', -- binding to scroll up inside the popup
      },
      window = {
        border = "none", -- none, single, double, shadow
        position = "bottom", -- bottom, top
        margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
        padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
        winblend = 10
      },
      layout = {
        height = { min = 4, max = 25 }, -- min and max height of the columns
        width = { min = 20, max = 50 }, -- min and max width of the columns
        spacing = 3, -- spacing between columns
        align = "left", -- align columns left, center or right
      },
      ignore_missing = false, -- enable this to hide mappings for which you didn't specify a label
      hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "<cr>", "call", "lua", "^:", "^ "}, -- hide mapping boilerplate
      show_help = true, -- show help message on the command line when the popup is visible
      triggers = "auto", -- automatically setup triggers
      -- triggers = {"<leader>"} -- or specify a list manually
      triggers_blacklist = {
        -- list of mode / prefixes that should never be hooked by WhichKey
        -- this is mostly relevant for key maps that start with a native binding
        -- most people should not need to change this
        i = { "j", "k" },
        v = { "j", "k" },
      },
    }
  }
EOF

" nvim-dap-virtual-text
lua << EOF
require('nvim-dap-virtual-text').setup {
    enabled = true,                     -- enable this plugin (the default)
    enabled_commands = true,            -- create commands DapVirtualTextEnable, DapVirtualTextDisable, DapVirtualTextToggle, (DapVirtualTextForceRefresh for refreshing when debug adapter did not notify its termination)
    highlight_changed_variables = true, -- highlight changed values with NvimDapVirtualTextChanged, else always NvimDapVirtualText
    highlight_new_as_changed = false,   -- highlight new variables in the same way as changed variables (if highlight_changed_variables)
    show_stop_reason = true,            -- show stop reason when stopped for exceptions
    commented = false,                  -- prefix virtual text with comment string
    -- experimental features:
    virt_text_pos = 'eol',              -- position of virtual text, see `:h nvim_buf_set_extmark()`
    all_frames = false,                 -- show virtual text for all stack frames not only current. Only works for debugpy on my machine.
    virt_lines = false,                 -- show virtual lines instead of virtual text (will flicker!)
    virt_text_win_col = nil             -- position the virtual text at a fixed window column (starting from the first text column) ,
                                        -- e.g. 80 to position at column 80, see `:h nvim_buf_set_extmark()`
}
EOF

" vim-rooter
let g:rooter_targets = '/,*'
let g:rooter_patterns = ['.git', 'Makefile', '*.sln', 'build/env.sh']

" python
if g:os == 'Windows'
  let g:python_host_prog = 'C:\Users\Administrator\scoop\shims\python2.EXE'
  let g:python3_host_prog = 'C:\Users\Administrator\scoop\shims\python3.EXE'
endif

" emmet
" let g:user_emmet_expandabbr_key = '<c-k>'
" let g:user_emmet_leader_key = '<c-g>'

" sqlite
if g:os == 'Windows'
  let g:sqlite_clib_path = 'C:\Users\Administrator\sync\files\sqlite\sqlite3.dll'
endif

" telescope
lua << EOF
require('telescope').setup {

  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    }
  },
  defaults = {
    file_ignore_patterns = {".jpeg$", ".jpg$",  ".JPEG$",  ".JPG$",  ".MOV$",  ".PNG$", ".blp$", ".webm$", ".png$", ".gif$", ".mp4$", ".webp$", ".tga$", ".mkv$", ".mov$", ".slp$", ".msi$", ".7zip$", ".rar$", ".zip$", ".dll$", ".skin$", ".mp3$", ".BLP$", ".m2$", ".rar$", ".exe$",  ".rlib$",  ".cht$", "node_modules", 'No Name', '(x{3})' },
    path_display = {'smart'},
    layout_config = { width = 0.5, height = 0.6 },
    winblend = 10,
  },
  -- pickers = {
  --   find_files = {
  --     theme = "ivy",
  --   },
  --   git_files = {
  --     theme = "ivy",
  --   },
  -- },
}
require('telescope').load_extension('fzf')
require('telescope').load_extension('dap')
require('dapui').setup()
EOF

if g:os == 'Windows'
  lua require'telescope'.load_extension'frecency'
endif

" scratch
let g:scratch_persistence_file = '~/.scratch.vim'
let g:scratch_filetype = 'markdown'
let g:scratch_height = 30

" nvim-cmp
set completeopt=menu,menuone,noselect
lua << EOF
-- Setup nvim-cmp.
local cmp = require'cmp'

cmp.setup({
  snippet = {
    -- REQUIRED - you must specify a snippet engine
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
      -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
      -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      -- require'snippy'.expand_snippet(args.body) -- For `snippy` users.
    end,
  },
  mapping = {
    ['<c-u>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<c-d>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
    ['<c-k>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    -- ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
    -- ['<C-e>'] = cmp.mapping({
    --   i = cmp.mapping.abort(),
    --   c = cmp.mapping.close(),
    -- }),
    -- -- Accept currently selected item. If none selected, `select` first item.
    -- -- Set `select` to `false` to only confirm explicitly selected items.
    ['<cr>'] = cmp.mapping.confirm({ select = true }),
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'vsnip' }, -- For vsnip users.
    { name = 'luasnip' }, -- For luasnip users.
    -- { name = 'ultisnips' }, -- For ultisnips users.
    -- { name = 'snippy' }, -- For snippy users.
  }, {
    { name = 'buffer' },
  })
})

-- cmp.config.disable = true

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
  sources = {
    { name = 'buffer' }
  }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})

-- Setup lspconfig
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

capabilities.textDocument.codeAction = {
  dynamicRegistration = false;
  codeActionLiteralSupport = {
    codeActionKind = {
      valueSet = {
        "",
        "quickfix",
        "refactor",
        "refactor.extract",
        "refactor.inline",
        "refactor.rewrite",
        "source",
        "source.organizeImports",
      }
    }
  }
}

-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
local lspconfig = require("lspconfig")
local buf_map = function(bufnr, mode, lhs, rhs, opts)
    vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, opts or {
        silent = true,
    })
end
local on_attach = function(client, bufnr)
    vim.cmd("command! LspDef lua vim.lsp.buf.definition()")
    vim.cmd("command! LspFormatting lua vim.lsp.buf.formatting()")
    vim.cmd("command! LspCodeAction lua vim.lsp.buf.code_action()")
    vim.cmd("command! LspHover lua vim.lsp.buf.hover()")
    vim.cmd("command! LspRename lua vim.lsp.buf.rename()")
    vim.cmd("command! LspRefs lua vim.lsp.buf.references()")
    vim.cmd("command! LspTypeDef lua vim.lsp.buf.type_definition()")
    vim.cmd("command! LspImplementation lua vim.lsp.buf.implementation()")
    vim.cmd("command! LspDiagPrev lua vim.lsp.diagnostic.goto_prev()")
    vim.cmd("command! LspDiagNext lua vim.lsp.diagnostic.goto_next()")
    vim.cmd("command! LspDiagLine lua vim.lsp.diagnostic.show_line_diagnostics()")
    vim.cmd("command! LspSignatureHelp lua vim.lsp.buf.signature_help()")
    -- buf_map(bufnr, "n", "gd", ":LspDef<CR>")
    -- buf_map(bufnr, "n", "gr", ":LspRename<CR>")
    -- buf_map(bufnr, "n", "gy", ":LspTypeDef<CR>")
    -- buf_map(bufnr, "n", "K", ":LspHover<CR>")
    -- buf_map(bufnr, "n", "[a", ":LspDiagPrev<CR>")
    -- buf_map(bufnr, "n", "]a", ":LspDiagNext<CR>")
    -- buf_map(bufnr, "n", "ga", ":LspCodeAction<CR>")
    -- buf_map(bufnr, "n", "<Leader>a", ":LspDiagLine<CR>")
    -- buf_map(bufnr, "i", "<C-x><C-x>", "<cmd> LspSignatureHelp<CR>")
    if client.resolved_capabilities.document_formatting then
      vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
    end

    local ts_utils = require("nvim-lsp-ts-utils")

    -- required to fix code action ranges and filter diagnostics
    ts_utils.setup_client(client)

    -- no default maps, so you may want to define some here
    local opts = { silent = true }
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gs", ":TSLspOrganize<CR>", opts)
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gr", ":TSLspRenameFile<CR>", opts)
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gi", ":TSLspImportAll<CR>", opts)
end
lspconfig.tsserver.setup({
  -- Needed for inlayHints. Merge this table with your settings or copy
  -- it from the source if you want to add your own init_options.
  init_options = require("nvim-lsp-ts-utils").init_options,
  on_attach = function(client, bufnr)
    client.resolved_capabilities.document_formatting = true
    client.resolved_capabilities.document_range_formatting = true
    local ts_utils = require("nvim-lsp-ts-utils")
    ts_utils.setup({
      eslint_bin = "eslint_d",
      -- eslint_enable_diagnostics = true,
      eslint_enable_diagnostics = false,
      eslint_enable_code_actions = true,
      enable_formatting = true,
      debug = true,
      disable_commands = false,
      enable_import_on_completion = true,

      -- import all
      import_all_timeout = 5000, -- ms
      -- lower numbers = higher priority
      import_all_priorities = {
          same_file = 1, -- add to existing import statement
          local_files = 2, -- git files or files with relative path markers
          buffer_content = 3, -- loaded buffer content
          buffers = 4, -- loaded buffer names
      },
      import_all_scan_buffers = 100,
      import_all_select_source = false,

      -- filter diagnostics
      filter_out_diagnostics_by_severity = {},
      filter_out_diagnostics_by_code = {},

      -- inlay hints
      auto_inlay_hints = true,
      inlay_hints_highlight = "Comment",

      -- update imports on file move
      update_imports_on_move = true,
      require_confirmation_on_move = true,
      watch_dir = nil,
    })
    ts_utils.setup_client(client)
    -- buf_map(bufnr, "n", "gs", ":TSLspOrganize<CR>")
    -- buf_map(bufnr, "n", "gi", ":TSLspRenameFile<CR>")
    -- buf_map(bufnr, "n", "go", ":TSLspImportAll<CR>")
    -- on_attach(client, bufnr)
  end,
})
vim.lsp.handlers["textDocument/publishDiagnostics"] =
  vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics,
  {
    virtual_text = true,
  }
)
require'null-ls'.setup{ on_attach = on_attach }
require'lsp_signature'.setup{}
EOF

" nvim-dap: javascript
lua << EOF
local dap_install = require('dap-install')
local dap = require('dap')
dap_install.config('jsnode', {})
dap.configurations.typescript = {
  {
    name = 'Run',
    type = 'node2',
    request = 'launch',
    program = '${file}',
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = 'inspector',
    console = 'integratedTerminal',
    outFiles = {"${workspaceFolder}/build/**/*.js"},
  },
  {
    name = 'Attach to process',
    type = 'node2',
    request = 'attach',
    processId = require'dap.utils'.pick_process,
  },
}
EOF
au FileType dap-repl lua require('dap.ext.autocompl').attach()

" hop
lua << EOF
require'hop'.setup{}
EOF

" incsearch
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" neoterm
if g:os == 'Windows'
  let g:neoterm_shell="pwsh.exe"
endif

" nvim-tree
" let g:nvim_tree_quit_on_open = 1 "0 by default, closes the tree when you open a file
" let g:nvim_tree_indent_markers = 1 "0 by default, this option shows indent markers when folders are open
let g:nvim_tree_git_hl = 1 "0 by default, will enable file highlight for git attributes (can be used without the icons).
let g:nvim_tree_highlight_opened_files = 1 "0 by default, will enable folder and file icon highlight for opened files/directories.
let g:nvim_tree_root_folder_modifier = ':~' "This is the default. See :help filename-modifiers for more options
" let g:nvim_tree_add_trailing = 1 "0 by default, append a trailing slash to folder names
" let g:nvim_tree_group_empty = 1 " 0 by default, compact folders that only contain a single folder into one node in the file tree
" let g:nvim_tree_disable_window_picker = 1 "0 by default, will disable the window picker.
" let g:nvim_tree_icon_padding = ' ' "one space by default, used for rendering the space between the icon and the filename. Use with caution, it could break rendering if you set an empty string depending on your font.
" let g:nvim_tree_symlink_arrow = ' >> ' " defaults to ' ➛ '. used as a separator between symlinks' source and target.
let g:nvim_tree_respect_buf_cwd = 1 "0 by default, will change cwd of nvim-tree to that of new buffer's when opening nvim-tree.
let g:nvim_tree_create_in_closed_folder = 0 "1 by default, When creating files, sets the path of a file when cursor is on a closed folder to the parent folder when 0, and inside the folder when 1.
" let g:nvim_tree_refresh_wait = 500 "1000 by default, control how often the tree can be refreshed, 1000 means the tree can be refresh once per 1000ms.
let g:nvim_tree_window_picker_exclude = {
    \   'filetype': [
    \     'notify',
    \     'packer',
    \     'Outline',
    \     'qf'
    \   ],
    \   'buftype': [
    \   ]
    \ }
" Dictionary of buffer option names mapped to a list of option values that
" indicates to the window picker that the buffer's window should not be
" selectable.
let g:nvim_tree_special_files = { 'README.md': 1, 'Makefile': 1, 'MAKEFILE': 1 } " List of filenames that gets highlighted with NvimTreeSpecialFile
let g:nvim_tree_show_icons = {
    \ 'git': 1,
    \ 'folders': 1,
    \ 'files': 1,
    \ 'folder_arrows': 1,
    \ }
"If 0, do not show the icons for one of 'git' 'folder' and 'files'
"1 by default, notice that if 'files' is 1, it will only display
"if nvim-web-devicons is installed and on your runtimepath.
"if folder is 1, you can also tell folder_arrows 1 to show small arrows next to the folder icons.
"but this will not work when you set indent_markers (because of UI conflict)

" default will show icon by default if no icon is provided
" default shows no icon by default
" let g:nvim_tree_icons = {
"     \ 'default': '',
"     \ 'symlink': '',
"     \ 'git': {
"     \   'unstaged': "✗",
"     \   'staged': "✓",
"     \   'unmerged': "",
"     \   'renamed': "➜",
"     \   'untracked': "★",
"     \   'deleted': "",
"     \   'ignored': "◌"
"     \   },
"     \ 'folder': {
"     \   'arrow_open': "",
"     \   'arrow_closed': "",
"     \   'default': "",
"     \   'open': "",
"     \   'empty': "",
"     \   'empty_open': "",
"     \   'symlink': "",
"     \   'symlink_open': "",
"     \   }
"     \ }

" nnoremap <C-n> :NvimTreeToggle<CR>
" nnoremap <leader>r :NvimTreeRefresh<CR>
" nnoremap <leader>n :NvimTreeFindFile<CR>
" NvimTreeOpen, NvimTreeClose, NvimTreeFocus, NvimTreeFindFileToggle, and NvimTreeResize are also available if you need them

lua << EOF
-- following options are the default
-- each of these are documented in `:help nvim-tree.OPTION_NAME`
local tree_cb = require'nvim-tree.config'.nvim_tree_callback
require'nvim-tree'.setup{
  disable_netrw       = true,
  hijack_netrw        = true,
  open_on_setup       = false,
  ignore_ft_on_setup  = {},
  auto_close          = false,
  open_on_tab         = false,
  hijack_cursor       = false,
  update_cwd          = false,
  update_to_buf_dir   = {
    enable = true,
    auto_open = true,
  },
  diagnostics = {
    enable = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  update_focused_file = {
    enable      = false,
    update_cwd  = false,
    ignore_list = {}
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  filters = {
    dotfiles = false,
    custom = {}
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
  view = {
    width = 30,
    height = 30,
    hide_root_folder = false,
    side = 'left',
    auto_resize = false,
    mappings = {
      custom_only = true,
      list = {
        { key = {"<cr>", "o", "<2-LeftMouse>"}, cb = tree_cb("edit") },
        -- { key = {"<2-RightMouse>", "<C-]>"},    cb = tree_cb("cd") },
        -- { key = "<C-v>",                        cb = tree_cb("vsplit") },
        -- { key = "<C-x>",                        cb = tree_cb("split") },
        -- { key = "<C-t>",                        cb = tree_cb("tabnew") },
        { key = "<",                            cb = tree_cb("prev_sibling") },
        { key = ">",                            cb = tree_cb("next_sibling") },
        { key = "P",                            cb = tree_cb("parent_node") },
        { key = "<bs>",                         cb = tree_cb("close_node") },
        { key = "L",                            cb = tree_cb("open_node") },
        { key = "H",                            cb = tree_cb("close_node") },
        { key = "<tab>",                        cb = tree_cb("preview") },
        { key = "K",                            cb = tree_cb("first_sibling") },
        { key = "J",                            cb = tree_cb("last_sibling") },
        { key = "I",                            cb = tree_cb("toggle_ignored") },
        { key = "<c-h>",                            cb = tree_cb("toggle_dotfiles") },
        { key = "~",                            cb = tree_cb("refresh") },
        { key = "a",                            cb = tree_cb("create") },
        { key = "d",                            cb = tree_cb("remove") },
        -- { key = "D",                            cb = tree_cb("trash") },
        { key = "r",                            cb = tree_cb("rename") },
        { key = "<c-r>",                        cb = tree_cb("full_rename") },
        { key = "x",                            cb = tree_cb("cut") },
        { key = "c",                            cb = tree_cb("copy") },
        { key = "p",                            cb = tree_cb("paste") },
        { key = "y",                            cb = tree_cb("copy_name") },
        { key = "Y",                            cb = tree_cb("copy_absolute_path") },
        { key = "gy",                           cb = tree_cb("copy_path") },
        { key = "[c",                           cb = tree_cb("prev_git_item") },
        { key = "]c",                           cb = tree_cb("next_git_item") },
        { key = "-",                            cb = tree_cb("dir_up") },
        { key = "e",                            cb = tree_cb("system_open") },
        -- { key = "q",                            cb = tree_cb("close") },
        -- { key = "g?",                           cb = tree_cb("toggle_help") },
      }
    },
    number = false,
    relativenumber = false
  },
  trash = {
    cmd = "trash",
    require_confirm = true
  }
}
EOF

" vim-ultest
if g:os != 'Windows'
let g:ultest_use_pty = 1
let g:ultest_virtual_text = 1
let g:test#javascript#runner = "jest"
let g:test#typescript#runner = "jest"
let test#strategy = "terminal"
lua << EOF
  function fn (cmd)
    return {
      dap = {
        type = "node2",
        request = "launch",
        sourceMaps = true,
        args = {
          "--inspect-brk",
          "${workspaceFolder}/node_modules/.bin/jest.js",
          "--runInBand"
        },
        module = cmd[1],
        console = "integratedTerminal",
        internalConsoleOptions = "neverOpen",
        port = 9229
      }
    }
  end

  require'ultest'.setup{
    builders = {
      ['typescript#jest'] = fn,
      ['javascript#jest'] = fn,
    }
  }
EOF
endif

" nvim-web-devicons
lua require'nvim-web-devicons'.setup{ default = true; }

" telekasten
lua << END
local home = ''

if (vim.g.os == 'Windows') then
  home = vim.fn.expand("C:/Users/Administrator/sync/notes")
else
  home = vim.fn.expand("/home/user/sync/notes")
end

require('telekasten').setup({
  home         = home,

  -- if true, telekasten will be enabled when opening a note within the configured home
  take_over_my_home = true,

  dailies      = home .. '/' .. 'journal',
  -- weeklies     = home .. '/' .. 'weekly',
  templates    = home .. '/' .. 'templates',

  -- image subdir for pasting
  -- subdir name
  -- or nil if pasted images shouldn't go into a special subdir
  -- image_subdir = "img",


  -- markdown file extension
  extension    = ".md",

  -- following a link to a non-existing note will create it
  follow_creates_nonexisting = true,
  dailies_create_nonexisting = true,
  weeklies_create_nonexisting = true,

  -- template for new notes (new_note, follow_link)
  -- set to `nil` or do not specify if you do not want a template
  template_new_note = home .. '/' .. 'templates/new-note.md',

  -- template for newly created daily notes (goto_today)
  -- set to `nil` or do not specify if you do not want a template
  template_new_daily = home .. '/' .. 'templates/daily.md',

  -- template for newly created weekly notes (goto_thisweek)
  -- set to `nil` or do not specify if you do not want a template
  -- template_new_weekly= home .. '/' .. 'templates/weekly.md',

      -- image link style
      -- wiki:     ![[image name]]
      -- markdown: ![](image_subdir/xxxxx.png)
      image_link_style = "markdown",

  -- integrate with calendar-vim
  plug_into_calendar = true,
  calendar_opts = {
      -- calendar week display mode: 1 .. 'WK01', 2 .. 'WK 1', 3 .. 'KW01', 4 .. 'KW 1', 5 .. '1'
      weeknm = 4,
      -- use monday as first day of week: 1 .. true, 0 .. false
      calendar_monday = 1,
      -- calendar mark: where to put mark for marked days: 'left', 'right', 'left-fit'
      calendar_mark = 'left-fit',
  },

  -- telescope actions behavior
  close_after_yanking = false,
  insert_after_inserting = true,

  -- make syntax available to markdown buffers and telescope previewers
  install_syntax = true,

  -- tag notation: '#tag', ':tag:', 'yaml-bare'
  tag_notation = "#tag",

  -- command palette theme: dropdown (window) or ivy (bottom panel)
  command_palette_theme = "ivy",

  -- tag list theme:
  -- get_cursor: small tag list at cursor; ivy and dropdown like above
  show_tags_theme = "ivy",

  -- when linking to a note in subdir/, create a [[subdir/title]] link
  -- instead of a [[title only]] link
  subdirs_in_links = true,
})
END

" neoscroll
map <c-y> <nop>
lua << EOF
require'neoscroll'.setup{
    mappings = {'<c-u>', '<c-d>', '<c-b>', '<c-f>',
                '<c-y>', '<c-e>'},
    hide_cursor = true,          -- hide cursor while scrolling
    stop_eof = true,             -- stop at <EOF> when scrolling downwards
    use_local_scrolloff = false, -- use the local scope of scrolloff instead of the global scope
    respect_scrolloff = false,   -- stop scrolling when the cursor reaches the scrolloff margin of the file
    cursor_scrolls_alone = true, -- the cursor will keep on scrolling even if the window cannot scroll further
    easing_function = 'sine',    -- default easing function
    pre_hook = nil,              -- function to run before the scrolling animation starts
    post_hook = nil,             -- function to run after the scrolling animation ends
}

local t = {}

-- Syntax: t[keys] = {function, {function arguments}}
t['<c-u>'] = {'scroll', {'-vim.wo.scroll', 'true', '150'}}
t['<c-d>'] = {'scroll', { 'vim.wo.scroll', 'true', '150'}}
t['<c-b>'] = {'scroll', {'-vim.api.nvim_win_get_height(0)', 'true', '200'}}
t['<c-f>'] = {'scroll', { 'vim.api.nvim_win_get_height(0)', 'true', '200'}}
t['<c-y>'] = {'scroll', {'-0.10', 'false', '150'}}
t['<c-e>'] = {'scroll', { '0.10', 'false', '150'}}

require('neoscroll.config').set_mappings(t)
EOF

" prompt for user input
function! Prompt(prompt)
  let curline = getline('.')
  call inputsave()
  let input = input(a:prompt . ': ')
  call inputrestore()
  return input
endfunction

" create new note
function! NewNote()
  let name = Prompt("Enter name")
  if name != ''
    let date = strftime("%Y%m%d%H%M%S")
    execute 'e ~/sync/notes/' . name . '.md'
    write
  endif
endfunction

" is scratch buffer
function! IsScratchBuffer() abort
  if (bufname('%') == '__Scratch__')
    return 1
  endif

  return 0
endfunction

" is nvimtree buffer
function! IsNvimTreeBuffer() abort
  if (&filetype == 'NvimTree')
    return 1
  endif

  return 0
endfunction

" is outline buffer
function! IsOutlineBuffer() abort
  if (&filetype == 'Outline')
    return 1
  endif

  return 0
endfunction

" is pane buffer
function! IsPaneBuffer() abort
  if (IsScratchBuffer() == 1)
    return 1
  endif

  if (IsNvimTreeBuffer() == 1)
    return 1
  endif

  if (IsOutlineBuffer() == 1)
    return 1
  endif

  return 0
endfunction

" is terminal buffer
function! IsTerminalBuffer() abort
  if (&buftype == 'terminal')
    return 1
  endif
  if (&filetype == 'neoterm')
    return 1
  endif

  return 0
endfunction

" is new buffer
function! IsNewBuffer() abort
  if (bufname('%') == '')
    return 1
  endif

  return 0
endfunction

" is normal buffer
function! IsNormalBuffer() abort
  if (IsTerminalBuffer() == 1)
    return 0
  endif

  if (IsPaneBuffer() == 1)
    return 0
  endif

  if (bufname('%') == '')
    return 0
  endif

  if (IsNewBuffer() == 1)
    return 0
  endif

  if (bufname('%') == '')
    return 0
  endif

  if (&filetype == 'help')
    return 0
  endif

  if (&filetype == 'telescope')
    return 0
  endif

  return 1
endfunction

" is code buffer
function! IsCodeBuffer() abort
  if (&filetype == 'python')
    return 1
  endif

  if (&filetype == 'javascript')
    return 1
  endif

  if (&filetype == 'typescript')
    return 1
  endif

  if (&filetype == 'javascriptreact')
    return 1
  endif

  if (&filetype == 'typescriptreact')
    return 1
  endif

  " if (&filetype == 'vim')
  "   return 1
  " endif

  if (&filetype == 'json')
    return 1
  endif

  if (&filetype == 'cs')
    return 1
  endif

  if (&filetype == 'c')
    return 1
  endif

  if (&filetype == 'cpp')
    return 1
  endif

  if (&filetype == 'h')
    return 1
  endif

  if (&filetype == 'hpp')
    return 1
  endif

  if (&filetype == 'lua')
    return 1
  endif

  if (&filetype == 'html')
    return 1
  endif

  if (&filetype == 'less')
    return 1
  endif

  if (&filetype == 'sass')
    return 1
  endif

  if (&filetype == 'scss')
    return 1
  endif

  if (&filetype == 'css')
    return 1
  endif

  if (&filetype == 'text')
    return 1
  endif

  " if (&filetype == 'mdx')
  "   return 1
  " endif

  if (&filetype == 'markdown')
    return 1
  endif

  return 0
endfunction

" telescope find file
function! TelescopeFind() abort
  silent! !git rev-parse --is-inside-work-tree

  if v:shell_error == 0
    Telescope git_files
  else
    Telescope find_files
  endif
endfunction

" show documentation
function! ShowDocumentation() abort
  " if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  " else
  "   call CocAction('definitionHover')
  " endif
endfunction

function! NormalVisual(keys, rhs) abort
    execute 'nnoremap' a:keys a:rhs
    execute 'vnoremap' a:keys a:rhs
endfunction

" save and close
function! SaveClose() abort
  if (&filetype == 'neoterm')
    let l:name = bufname()
    bprev
    execute ':bdel! ' . l:name
  else
    if &modifiable && (IsTerminalBuffer() == 0)
      if IsNewBuffer() == 1
        write `=tempname()`
      else
        write
      endif
    endif
    BUN!
  endif
endfunction

" symbol or doc search
function! DocSearch() abort
  if IsCodeBuffer()
    lua require"telescope.builtin".lsp_document_symbols{ path_display = {"tail"} }
  else
    lua require"telescope.builtin".current_buffer_fuzzy_find{ path_display = {"tail"} }
  endif
endfunction

" delete empty buffers
function! DeleteEmptyBuffers()
  let [i, n; empty] = [1, bufnr('$')]
  while i <= n
    if bufexists(i) && bufname(i) == ''
      call add(empty, i)
      endif
      let i += 1
  endwhile
  if len(empty) > 0
    exe 'bdelete' join(empty)
  endif
endfunction

" close all but current buffer
function! CloseAllBuffersButCurrent() abort
  let l:view = winsaveview()
  :w
  %bd
  e#
  bd#
  echo l:view
  call winrestview(l:view)
endfunction

" send to terminal
lua << EOF
function get_first_terminal()
    terminal_chans = {}

    for _, chan in pairs(vim.api.nvim_list_chans()) do
        if chan["mode"] == "terminal" and chan["pty"] ~= "" then
            table.insert(terminal_chans, chan)
        end
    end

    table.sort(terminal_chans, function(left, right)
        return left["buffer"] < right["buffer"]
    end)

    return terminal_chans[1]["id"]
end

function _G.terminal_send(text)
    first_terminal_chan = get_first_terminal()

    vim.api.nvim_chan_send(first_terminal_chan, text)
end
EOF

" keybind: leader key
let g:mapleader = " "

" keybind: turn off j / k bell + fix wrap movement
nnoremap <expr> k ((line('.') == 1) ? '' : (v:count == 0 ? 'gk' : 'k'))
nnoremap <expr> j ((line('.') == line('$')) ? '' : (v:count == 0 ? 'gj' : 'j'))

" keybind: indent shifts
nnoremap > v><esc>
nnoremap < v<<esc>
vnoremap < <gv
vnoremap > >gv


" keybind: create windows
au BufEnter * if IsPaneBuffer() == 0
  \ | nnoremap <c-w><c-l> <cmd>wincmd v<cr><cmd>wincmd l<cr><cmd>call CreateEmptyBuffer()<cr>
  \ | nnoremap <c-w><c-j> <cmd>wincmd s<cr><cmd>wincmd j<cr><cmd>call CreateEmptyBuffer()<cr>
  \ | nnoremap <c-w>l <cmd>wincmd v<cr><cmd>wincmd l<cr><cmd>call CreateEmptyBuffer()<cr>
  \ | nnoremap <c-w>j <cmd>wincmd s<cr><cmd>wincmd j<cr><cmd>call CreateEmptyBuffer()<cr>
  \ | nnoremap <c-w><c-h> <cmd>wincmd v<cr><cmd>call CreateEmptyBuffer()<cr>
  \ | nnoremap <c-w><c-k> <cmd>wincmd s<cr><cmd>call CreateEmptyBuffer()<cr>
  \ | nnoremap <c-w>h <cmd>wincmd v<cr><cmd>call CreateEmptyBuffer()<cr>
  \ | nnoremap <c-w>k <cmd>wincmd s<cr><cmd>call CreateEmptyBuffer()<cr>
  \ | endif

" keybind: new terminal
if g:os == 'Windows'
  call NormalVisual('<silent> <m-a>', '<cmd>Tnew<cr>i')
  " call NormalVisual('<silent> <m-a>', '<cmd>setlocal shell=pwsh.exe<cr><cmd>terminal<cr><cmd>setlocal shell=cmd<cr><cmd>setlocal nonu<cr><cmd>setlocal nornu<cr><cmd>noh<cr>i')
else
  call NormalVisual('<silent> <m-a>', '<cmd>Tnew<cr>i')
endif
" call NormalVisual('<silent> <m-a>', '<cmd>Tnew<cr>i')

" keybind: toggle wrap
call NormalVisual('<silent> <c-s>w', ':set wrap!<cr>')

" keybind: toggle relative line numbers
call NormalVisual('<silent> <c-s>r', ':set rnu!<cr>')

" keybind: toggle line numbers
call NormalVisual('<silent> <c-s>n', ':set nu!<cr>')

" keybind: toggle cursorline
call NormalVisual('<silent> <c-s>l', ':set cursorline!<cr>')

" keybind: toggle columnline
call NormalVisual('<silent> <c-s>c', ':set cursorcolumn!<cr>')

" keybind: reload config
call NormalVisual('<leader>rr', ':source $MYVIMRC<cr><cmd>noh<cr>')

" keybind: open empty buffer
call NormalVisual('<silent> <leader>e', '<cmd>call CreateEmptyBuffer()<cr>:set filetype=markdown<cr>')

" keybind: clear search highlighting
call NormalVisual('<silent> <leader>c', '<cmd>NvimTreeRefresh<cr><cmd>noh<cr>:echo<cr>:<backspace>')

" keybind: open new tab
call NormalVisual('<silent> <m-e>', ':tabnew<cr>')

" keybind: close tab
call NormalVisual('<silent> <c-q>', ':tabclose<cr>')

" keybind: move to left tab
call NormalVisual('<silent> <m-q>', ':tabprev<cr>')

" keybind: move to right tab
call NormalVisual('<silent> <m-w>', ':tabnext<cr>')

" keybind: previous buffer
call NormalVisual('<silent> <m-i>', ':bp<cr>')

" keybind: next buffer
call NormalVisual('<silent> <m-o>', ':bn<cr>')

" keybind: escape terminal
tnoremap <silent> <c-a> <c-\><c-n>

" keybind: write and close vim
nnoremap <leader>qw :wqa!<cr>

" keybind: force close vim
nnoremap <leader>qa :qa!<cr>

" keybind: close all buffers but this one
noremap <silent> <leader>qb <cmd>call CloseAllBuffersButCurrent()<cr>

" keybind: bclose
nnoremap <silent> <leader>qq :call SaveClose()<cr>

" keybind: close all empty buffers
nnoremap <leader>qe :call DeleteEmptyBuffers()<cr>

" keybind: insert id
inoremap <silent> <c-s>i <c-r>=strftime("%Y%m%d%H%M%S")<cr>
nnoremap <silent> <c-s>i "=strftime("%Y%m%d%H%M%S")<cr>p
vnoremap <silent> <c-s>i "=strftime("%Y%m%d%H%M%S")<cr>p

" keybind: insert id with suffix
inoremap <silent> <c-s>I <c-r>=strftime("%Y%m%d%H%M%S-")<cr>
nnoremap <silent> <c-s>I "=strftime("%Y%m%d%H%M%S-")<cr>p
vnoremap <silent> <c-s>I "=strftime("%Y%m%d%H%M%S-")<cr>p

" keybind: insert short timestamp
inoremap <silent> <c-s>s <c-r>=strftime("%T")<cr>
nnoremap <silent> <c-s>s "=strftime("%T")<cr>p
vnoremap <silent> <c-s>s "=strftime("%T")<cr>p

" keybind: insert full timestamp
inoremap <silent> <c-s>S <c-r>=strftime("%Y-%m-%d %T")<cr>
nnoremap <silent> <c-s>S "=strftime("%Y-%m-%d %T")<cr>p
vnoremap <silent> <c-s>S "=strftime("%Y-%m-%d %T")<cr>p

" keybind: insert iso-8601 timestamp
inoremap <silent> <c-s>8 <c-r>=strftime("%FT%T%z")<cr>
nnoremap <silent> <c-s>8 "=strftime("%FT%T%z")<cr>p
vnoremap <silent> <c-s>8 "=strftime("%FT%T%z")<cr>p

" keybind: panels
nnoremap <silent> <leader>9 <cmd>NvimTreeRefresh<cr><cmd>NvimTreeToggle<cr><c-w>p
nnoremap <silent> <leader>0 <cmd>SymbolsOutline<cr><c-w>p

" keybind: telescope - files
call NormalVisual('<silent> <leader>f', ':call TelescopeFind()<cr>')

" keybind: telescope - tags
call NormalVisual('<silent> <leader>y', '<cmd>Telescope tags<cr>')

" keybind: telescope - frecency
if g:os == 'Windows'
  call NormalVisual('<silent> <leader>z', '<cmd>Telescope frecency<cr>')
endif

" keybind: telescope - live_grep
call NormalVisual('<silent> <leader>a', ':lua require"telescope.builtin".live_grep{ path_display = {"tail"} }<cr>')

" keybind: telescope - current_buffer_fuzzy_find
call NormalVisual('<silent> <leader>d', ':lua require"telescope.builtin".current_buffer_fuzzy_find{ path_display = {"tail"} }<cr>')

" keybind: telescope - help_tags
call NormalVisual('<leader>?', ' <cmd>Telescope help_tags<cr>')

" keybind: telescope - file browser
call NormalVisual('<silent> <leader>pp', ':lua require"telescope.builtin".file_browser{}<cr>')

" keybind: telescope - file browser: home
call NormalVisual('<silent> <leader>ph', ':lua require"telescope.builtin".file_browser{ cwd = "~/" }<cr>')

" keybind: telescope - file browser: sync
call NormalVisual('<silent> <leader>ps', ':lua require"telescope.builtin".file_browser{ cwd = "~/sync" }<cr>')

" keybind: telescope - file browser: inbox
call NormalVisual('<silent> <leader>pi', ':lua require"telescope.builtin".file_browser{ cwd = "~/inbox" }<cr>')

" keybind: telescope - file browser: downloads
call NormalVisual('<silent> <leader>pd', ':lua require"telescope.builtin".file_browser{ cwd = "~/Downloads" }<cr>')

" keybind: telescope - file browser: root
call NormalVisual('<silent> <leader>pr', ':lua require"telescope.builtin".file_browser{ cwd = "/" }<cr>')

" keybind: telescope - file browser: config
if g:os == 'Windows'
  call NormalVisual('<silent> <leader>pc', ':lua require"telescope.builtin".file_browser{ cwd = "~/AppData" }<cr>')
else
  call NormalVisual('<silent> <leader>pc', ':lua require"telescope.builtin".file_browser{ cwd = "~/.config" }<cr>')
endif

" keybind: telescope - file browser: windows c drive
if g:os == 'Windows'
  call NormalVisual('<silent> <leader>pwc', ':lua require"telescope.builtin".file_browser{ cwd = "C:/" }<cr>')
endif

" keybind: telescope - file browser: windows d drive
if g:os == 'Windows'
  call NormalVisual('<silent> <leader>pwd', ':lua require"telescope.builtin".file_browser{ cwd = "D:/" }<cr>')
endif

" keybind: telescope - file browser: windows e drive
if g:os == 'Windows'
  call NormalVisual('<silent> <leader>pwe', ':lua require"telescope.builtin".file_browser{ cwd = "E:/" }<cr>')
endif

" keybind: telescope - file browser: windows f drive
if g:os == 'Windows'
  call NormalVisual('<silent> <leader>pwf', ':lua require"telescope.builtin".file_browser{ cwd = "F:/" }<cr>')
endif

" keybind: telescope - file browser: windows y drive
if g:os == 'Windows'
  call NormalVisual('<silent> <leader>pwy', ':lua require"telescope.builtin".file_browser{ cwd = "Y:/" }<cr>')
endif

" keybind: telescope - file browser: windows x drive
if g:os == 'Windows'
  call NormalVisual('<silent> <leader>pwx', ':lua require"telescope.builtin".file_browser{ cwd = "X:/" }<cr>')
endif

" keybind: telescope - file browser: windows z drive
if g:os == 'Windows'
  call NormalVisual('<silent> <leader>pwz', ':lua require"telescope.builtin".file_browser{ cwd = "Z:/" }<cr>')
endif

" keybind: telescope - buffers
call NormalVisual('<silent> <leader>s', ':lua require"telescope.builtin".buffers{ path_display = {"tail"} }<cr>')

" keybind: telescope - keymaps
call NormalVisual('<silent> <leader>kk', '<cmd>Telescope keymaps<cr>')

" keybind: telescope - registers
call NormalVisual('<silent> <leader>ke', '<cmd>Telescope registers<cr>')

" keybind: telescope - marks
call NormalVisual('<silent> <leader>km', '<cmd>Telescope marks<cr>')

" keybind: telescope - command_history
call NormalVisual('<silent> <leader>kh', '<cmd>Telescope command_history<cr>')

" keybind: telescope - search_history
call NormalVisual('<silent> <leader>ks', '<cmd>Telescope search_history<cr>')

" keybind: telescope - colors
call NormalVisual('<silent> <leader>kc', ':lua require"telescope.builtin".colorscheme{ enable_preview = true }<cr>')

" keybind: telescope - jumplist
call NormalVisual('<silent> <leader>kj', ':lua require"telescope.builtin".jumplist{ path_display = {"tail"} }<cr>')

" keybind: telescope - filetypes
call NormalVisual('<silent> <leader>kf', '<cmd>Telescope filetypes<cr>')

" keybind: telescope - spell_suggest
call NormalVisual('<silent> <leader>kg', '<cmd>Telescope spell_suggest<cr>')

" keybind: telescope - oldfiles
call NormalVisual('<silent> <leader>ko', '<cmd>Telescope oldfiles<cr>')

" keybind: telescope - commands
call NormalVisual('<silent> <leader>kx', '<cmd>Telescope commands<cr>')

" keybind: telescope - git_commits
call NormalVisual('<silent> <leader>gl', '<cmd>Telescope git_commits<cr>')

" keybind: telescope - git_bcommits
call NormalVisual('<silent> <leader>gb', '<cmd>Telescope git_bcommits<cr>')

" keybind: telescope - git_branches
call NormalVisual('<silent> <leader>gr', '<cmd>Telescope git_branches<cr>')

" keybind: telescope - git_stash
call NormalVisual('<silent> <leader>gt', '<cmd>Telescope git_stash<cr>')

" keybind: telescope - git_status
call NormalVisual('<silent> <leader>gs', ':lua require"telescope.builtin".git_status{ path_display = {"tail"} }<cr>')

" keybind: telescope - lsp_definitions
call NormalVisual('<silent> <leader>jd', ':lua require"telescope.builtin".lsp_definitions{ path_display = {"tail"} }<cr>')

" keybind: telescope - lsp_type_definitions
call NormalVisual('<silent> <leader>jt', ':lua require"telescope.builtin".lsp_type_definitions{ path_display = {"tail"} }<cr>')

" keybind: telescope - lsp_implementations
call NormalVisual('<silent> <leader>jm', ':lua require"telescope.builtin".lsp_implementations{ path_display = {"tail"} }<cr>')

" keybind: telescope - lsp_references
call NormalVisual('<silent> <leader>jr', ':lua require"telescope.builtin".lsp_references{ path_display = {"tail"} }<cr>')

" keybind: telescope - lsp_workspace_diagnostics
call NormalVisual('<silent> <leader>jz', ':lua require"telescope.builtin".lsp_workspace_diagnostics{ path_display = {"tail"} }<cr>')

" keybind: telescope - lsp_document_diagnostics
call NormalVisual('<silent> <leader>jx', ':lua require"telescope.builtin".lsp_document_diagnostics{ path_display = {"tail"} }<cr>')

" keybind: telescope - lsp_code_actions
call NormalVisual('<silent> <leader>jc', ':lua require"telescope.builtin".lsp_code_actions{}<cr>')

" keybind: telescope - lsp_dynamic_workspace_symbols
call NormalVisual('<silent> <leader>w', ':lua require"telescope.builtin".lsp_dynamic_workspace_symbols{ path_display = {"tail"} }<cr>')

" keybind: telescope - lsp_workspace_symbols
call NormalVisual('<silent> <leader><space>', ':call DocSearch()<cr>')

" keybind: telescope - quickfix
call NormalVisual('<silent> <leader>oo', '<cmd>Telescope quickfix<cr>')

" keybind: telescope - saved lists - load
nnoremap <silent> <leader>oss <cmd>lua QFListPicker(require("telescope.themes").get_dropdown{})<cr>

" keybind: telescope - treesitter
call NormalVisual('<silent> <leader>jy', '<cmd>Telescope treesitter<cr>')

" keybind: telescope - reloader
call NormalVisual('<silent> <leader>re', '<cmd>Telescope reloader<cr>')

" keybind: format buffer
nnoremap <silent> <leader>jf <cmd>lua vim.lsp.buf.formatting()<cr>

" keybind: format range
vnoremap <silent> <leader>jf <cmd>lua vim.lsp.buf.range_formatting()<cr>

" keybind: ultest - previous fail
" call NormalVisual('<silent> <leader>up', '<plug>(ultest-next-fail)')

" keybind: ultest - next fail
" call NormalVisual('<silent> <leader>un', '<plug>(ultest-prev-fail)')

" keybind: ultest - run file
" call NormalVisual('<silent> <leader>uf', '<plug>(ultest-run-file)')
call NormalVisual('<silent> <leader>uf', '<cmd>Ultest<cr>')

" keybind: ultest - run nearest
" call NormalVisual('<silent> <leader>uu', '<plug>(ultest-run-nearest)')
call NormalVisual('<silent> <leader>uu', '<cmd>UltestNearest<cr>')

" keybind: ultest - run last
" call NormalVisual('<silent> <leader>ul', '<plug>(ultest-run-last)')
call NormalVisual('<silent> <leader>ul', '<cmd>UltestLast<cr>')

" keybind: ultest - toggle summary
" call NormalVisual('<silent> <leader>us', '<plug>(ultest-summary-toggle)')
call NormalVisual('<silent> <leader>us', '<cmd>UltestSummary<cr>')

" keybind: ultest - output show
" call NormalVisual('<silent> <leader>uo', '<plug>(ultest-output-show)')
call NormalVisual('<silent> <leader>uo', '<cmd>UltestOutput<cr>')

" keybind: ultest - output jump
" call NormalVisual('<silent> <leader>uj', '<plug>(ultest-output-jump)')

" keybind: ultest - attach
" call NormalVisual('<silent> <leader>ua', '<plug>(ultest-attach)')
call NormalVisual('<silent> <leader>ua', '<cmd>UltestAttach<cr>')

" keybind: ultest - debug nearest
" call NormalVisual('<silent> <leader>uU', '<plug>(ultest-debug-nearest)')
call NormalVisual('<silent> <leader>uU', '<cmd>UltestDebugNearest<cr>')

" keybind: ultest - debug file
" call NormalVisual('<silent> <leader>uF', '<plug>(ultest-debug)')
call NormalVisual('<silent> <leader>uF', '<cmd>UltestDebug<cr>')

" keybind: ultest - stop
" call NormalVisual('<silent> <leader>ux', '<plug>(ultest-stop-file)')
call NormalVisual('<silent> <leader>ux', '<cmd>UltestStop<cr>')

" keybind lsp - get info
inoremap <silent> <c-f> <cmd>lua vim.lsp.buf.hover()<cr>
nnoremap <silent> <leader>ji <cmd>lua vim.lsp.buf.hover()<cr>

" keybind: lsp - restart
call NormalVisual('<silent> <leader>rl', ':LspRestart<cr>')

" keybind: coc - info or autocomplete
" nnoremap <silent> <m-j> :call ShowDocumentation()<cr>
" vnoremap <silent> <m-j> :call ShowDocumentation()<cr>
" inoremap <silent> <m-j> <cmd>call coc#refresh()<cr>

" keybind: coc - show signature help
" nnoremap <silent> <m-k> :call CocAction("showSignatureHelp")<cr>
" vnoremap <silent> <m-k> :call CocAction("showSignatureHelp")<cr>
" inoremap <silent> <m-k> :call CocAction("showSignatureHelp")<cr>
"
" " keybind: coc - rename symbol
" nmap <silent> <leader>jl <Plug>(coc-rename)
" vmap <silent> <leader>jl <Plug>(coc-rename)
"
" " keyboard: coc - previous / next diagnostic
" nmap <silent> [g <Plug>(coc-diagnostic-prev)
" nmap <silent> ]g <Plug>(coc-diagnostic-next)
"
" " keybind: coc - actions
" nmap <silent> <leader>ja <Plug>(coc-codeaction-cursor)
" vmap <silent> <leader>ja <Plug>(coc-codeaction-selected)
"
" " keybind: coc - show incoming calls
" nmap <silent> <leader>ji :call CocAction("showIncomingCalls")<cr>
" vmap <silent> <leader>ji :call CocAction("showIncomingCalls")<cr>
"
" " keybind: coc - show outgoing calls
" nmap <silent> <leader>jo :call CocAction("showOutgoingCalls")<cr>
" vmap <silent> <leader>jo :call CocAction("showOutgoingCalls")<cr>
"
" " keybind: coc - refactor
" nmap <silent> <leader>jf :call CocAction("refactor")<cr>
" vmap <silent> <leader>jf :call CocAction("refactor")<cr>
"
" " keybind: coc - fixall
" nmap <silent> <leader>jv :call CocAction("fixAll")<cr>
" vmap <silent> <leader>jv :call CocAction("fixall")<cr>
"
" " keybind: coc - format
" nmap <silent> <leader>jy :call CocAction("format")<cr>
" vmap <silent> <leader>jy :call CocAction("format")<cr>

" keybind: vim-strip-trailing-whitespace
call NormalVisual('<silent> <space>jw', '<cmd>StripTrailingWhitespace<cr>')
" autocmd BufEnter * if (IsPaneBuffer() == 0) && (IsCodeBuffer() == 1) | silent! :StripTrailingWhitespace | endif

" keybind: coc - commands
" call NormalVisual('<silent> <leader>jc', ':CocCommand<cr>')

" keybind: symbols-outline
nmap <silent> <leader>jn <cmd>silent! SymbolsOutline<cr><c-w>p
vnoremap <silent> <leader>jn <cmd>silent! SymbolsOutline<cr><c-w>p

" keybind: nvim-tree - refresh
call NormalVisual('<silent> <leader>r9', ':NvimTreeRefresh<cr>')

" keybind: nvim-tree - focus
call NormalVisual('<silent> <leader>m', '<cmd>NvimTreeRefresh<cr><cmd>NvimTreeFocus<cr>')
au FileType Outline nnoremap <buffer> <silent> <leader>m <cmd>wincmd p<cr>
au FileType Outline vnoremap <buffer> <silent> <leader>m <cmd>wincmd p<cr>
au FileType NvimTree nnoremap <buffer> <silent> <leader>m <cmd>wincmd p<cr>
au FileType NvimTree vnoremap <buffer> <silent> <leader>m <cmd>wincmd p<cr>
au BufEnter * if IsPaneBuffer() == 1 | vnoremap <buffer> <silent> <leader>m <cmd>wincmd p<cr>| nnoremap <buffer> <silent> <leader>m <cmd>wincmd p<cr>| endif

" keybind: scratch - toggle
call NormalVisual("<leader>'", '<cmd>Scratch<cr>gg')
au FileType markdown silent! if IsScratchBuffer() == 1 | vnoremap <buffer> <silent> <leader>' <cmd>p<cr>| nnoremap <buffer> <silent> <leader>' <c-w>p<cr>| endif

" keybind: scratch - open file in current window
call NormalVisual('<silent> <leader>"', ':e ~/.scratch.vim<cr>:setfiletype markdown<cr>')

" keybind: scratch - disable window movement
au FileType markdown silent! if IsScratchBuffer() == 1 | nnoremap <buffer> <silent> <c-j> <c-w>p | nnoremap <buffer> <silent> <c-k> <c-w>p | nnoremap <buffer> <silent> <c-h> <c-w>p | nnoremap <buffer> <silent> <c-l> <c-w>p | endif
au FileType markdown silent! if IsScratchBuffer() == 1 | nnoremap <buffer> <silent> <c-w>j <c-w>p | nnoremap <buffer> <silent> <c-w>k <c-w>p | nnoremap <buffer> <silent> <c-w>h <c-w>p | nnoremap <buffer> <silent> <c-w>l <c-w>p | endif

" keybind: hop - s
nmap f <cmd>HopChar1CurrentLineAC<cr>
vmap f <cmd>HopChar1CurrentLineAC<cr>
nmap F <cmd>HopChar1CurrentLineBC<cr>
vmap F <cmd>HopChar1CurrentLineBC<cr>

" keybind: hop - s
nmap s <cmd>HopChar1AC<cr>
nmap S <cmd>HopChar1BC<cr>

" keybind: hop - t
nmap t <cmd>HopChar2AC<cr>
vmap t <cmd>HopChar2AC<cr>
nmap T <cmd>HopChar2BC<cr>
vmap T <cmd>HopChar2BC<cr>

" keybind: hop - m
nmap m <cmd>HopPattern<cr>
vmap m <cmd>HopPattern<cr>

" keybind: easyalign
xmap ga <plug>(EasyAlign)
nmap ga <plug>(EasyAlign)

" keybind: beacon
nmap n n:Beacon<cr>
nmap N N:Beacon<cr>
nmap * *:Beacon<cr>
nmap # #:Beacon<cr>

" keybind: speeddating
inoremap <c-s>d <esc>:SpeedDatingFormat<space>
nnoremap <c-s>d :SpeedDatingFormat<space>
vnoremap <c-s>d :SpeedDatingFormat<space>

" keybind: choosewin
nmap <silent> <leader>; <plug>(choosewin)

" keybind: camelcasemotion
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
map <silent> ge <Plug>CamelCaseMotion_ge

" keybind: dap
nnoremap <silent> <leader>vv <cr><cmd>lua require'dap'.continue()<cr>
nnoremap <silent> <leader>vd :execute 'silent !tsc -p .'<cr><cr><cmd>lua require'dap'.run_last()<cr>
nnoremap <silent> <leader>va :execute 'silent !tsc -p .'<cr><cr><cmd>lua require'dap'.continue()<cr>
nnoremap <silent> <leader>vx :execute 'silent !tsc -p .'<cr>
nnoremap <silent> <leader>vq <cmd>lua require'dap'.close()<cr><cmd>wincmd j<cr><cmd>wincmd q<cr>
nnoremap <silent> <leader>v; <cmd>lua require'dap'.step_over()<cr>
nnoremap <silent> <leader>vi <cmd>lua require'dap'.step_into()<cr>
nnoremap <silent> <leader>vh <cmd>lua require'dap'.attach()<cr>
nnoremap <silent> <leader>vo <cmd>lua require'dap'.step_out()<cr>
nnoremap <silent> <leader>vj <cmd>lua require'dap'.toggle_breakpoint()<cr>
nnoremap <silent> <leader>vk <cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<cr>
nnoremap <silent> <leader>vl <cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<cr>
nnoremap <silent> <leader>vs <cmd>lua require'dap'.repl.open()<cr>
" nnoremap <silent> <leader>v :lua require"dapui".open()<cr>
" nnoremap <silent> <leader>v :lua require"dapui".close()<cr>
nnoremap <silent> <leader>vn <cmd>lua require"dapui".toggle()<cr>

" keybind: toggle wrapping
function! ToggleWrap()
  set wrap!
  set linebreak!
endfunction
nnoremap <silent> <leader>/ :call ToggleWrap()<cr>

" keybind: tswow
nnoremap <silent> <leader>t? :lua terminal_send('help\r\n')<cr>
nnoremap <silent> <leader>tb :lua terminal_send('build database\r\n')<cr>
nnoremap <silent> <leader>tt :lua terminal_send('build all\r\n')<cr>
nnoremap <silent> <leader>td :lua terminal_send('build datascripts\r\n')<cr>
nnoremap <silent> <leader>tl :lua terminal_send('build livescripts\r\n')<cr>
nnoremap <silent> <leader>ta :lua terminal_send('build addon\r\n')<cr>
nnoremap <silent> <leader>tr :lua terminal_send('start realm\r\n')<cr>
nnoremap <silent> <leader>tc :lua terminal_send('start client\r\n')<cr>
nnoremap <silent> <leader>t; :lua terminal_send('build datascripts --client-only\r\n')<cr>

function! WoWNpcSearch()
  let l:query = Prompt('NPC search query')

  execute 'OpenURL "https://wotlkdb.com/?npcs\&filter=na=' . substitute(l:query, " ", "%20", "") . '"'
endfunction

function! WoWSpellSearch()
  let l:query = Prompt('Spell search query')
  execute 'OpenURL "https://wotlkdb.com/?spells\&filter=na=' . substitute(l:query, " ", "%20", "") . '#0-4"'
endfunction

function! WoW60ItemSearch()
  let l:query = Prompt('Item search query')
  execute 'OpenURL "https://wotlkdb.com/?items\&filter=na=' . substitute(l:query, " ", "%20", "") . '\;minle=1\;maxle=100\;minrl=1\;maxrl=60#0+2"'
endfunction

function! WoW60ConsumableSearch()
  let l:query = Prompt('Consumable search query')
  execute 'OpenURL "https://wotlkdb.com/?items=0\&filter=na=' . substitute(l:query, " ", "%20", "") . '\;minle=1\;maxle=100\;minrl=1\;maxrl=60#0+2"'
endfunction

function! WoW60ArmorSearch()
  let l:query = Prompt('Armor search query')
  execute 'OpenURL "https://wotlkdb.com/?items=4\&filter=na=' . substitute(l:query, " ", "%20", "") . '\;minle=1\;maxle=100\;minrl=1\;maxrl=60#0+2"'
endfunction

function! WoW60WeaponSearch()
  let l:query = Prompt('Weapon search query')
  execute 'OpenURL "https://wotlkdb.com/?items=2\&filter=na=' . substitute(l:query, " ", "%20", "") . '\;minle=1\;maxle=100\;minrl=1\;maxrl=60#0+2"'
endfunction

function! WoW70ItemSearch()
  let l:query = Prompt('TBC item search query')
  execute 'OpenURL "https://wotlkdb.com/?items\&filter=na=' . substitute(l:query, " ", "%20", "") . '\;minle=1\;maxle=100\;minrl=1\;maxrl=60#0+2"'
endfunction

function! WoW70ConsumableSearch()
  let l:query = Prompt('TBC consumable search query')
  execute 'OpenURL "https://wotlkdb.com/?items=0\&filter=na=' . substitute(l:query, " ", "%20", "") . '\;minle=1\;maxle=100\;minrl=1\;maxrl=60#0+2"'
endfunction

function! WoW70ArmorSearch()
  let l:query = Prompt('TBC armor search query')
  execute 'OpenURL "https://wotlkdb.com/?items=4\&filter=na=' . substitute(l:query, " ", "%20", "") . '\;minle=1\;maxle=100\;minrl=1\;maxrl=60#0+2"'
endfunction

function! WoW70WeaponSearch()
  let l:query = Prompt('TBC weapon search query')
  execute 'OpenURL "https://wotlkdb.com/?items=2\&filter=na=' . substitute(l:query, " ", "%20", "") . '\;minle=1\;maxle=100\;minrl=1\;maxrl=60#0+2"'
endfunction

function! WoW80ItemSearch()
  let l:query = Prompt('WOTLK item search query')
  execute 'OpenURL "https://wotlkdb.com/?items\&filter=na=' . substitute(l:query, " ", "%20", "") . '\;minle=1\;maxle=100\;minrl=1\;maxrl=60#0+2"'
endfunction

function! WoW80ConsumableSearch()
  let l:query = Prompt('WOTLK consumable search query')
  execute 'OpenURL "https://wotlkdb.com/?items=0\&filter=na=' . substitute(l:query, " ", "%20", "") . '\;minle=1\;maxle=100\;minrl=1\;maxrl=60#0+2"'
endfunction

function! WoW80ArmorSearch()
  let l:query = Prompt('WOTLK armor search query')
  execute 'OpenURL "https://wotlkdb.com/?items=4\&filter=na=' . substitute(l:query, " ", "%20", "") . '\;minle=1\;maxle=100\;minrl=1\;maxrl=60#0+2"'
endfunction

function! WoW80WeaponSearch()
  let l:query = Prompt('WOTLK weapon search query')
  execute 'OpenURL "https://wotlkdb.com/?items=2\&filter=na=' . substitute(l:query, " ", "%20", "") . '\;minle=1\;maxle=100\;minrl=1\;maxrl=60#0+2"'
endfunction

nnoremap <silent> <leader>tsn <cmd>call WoWNpcSearch()<cr>
nnoremap <silent> <leader>tss <cmd>call WoWSpellSearch()<cr>
nnoremap <silent> <leader>ts8i <cmd>call WoW80ItemSearch()<cr>
nnoremap <silent> <leader>ts8w <cmd>call WoW80WeaponSearch()<cr>
nnoremap <silent> <leader>ts8a <cmd>call WoW80ArmorSearch()<cr>
nnoremap <silent> <leader>ts8c <cmd>call WoW80ConsumableSearch()<cr>
nnoremap <silent> <leader>ts7i <cmd>call WoW70ItemSearch()<cr>
nnoremap <silent> <leader>ts7w <cmd>call WoW70WeaponSearch()<cr>
nnoremap <silent> <leader>ts7a <cmd>call WoW70ArmorSearch()<cr>
nnoremap <silent> <leader>ts7c <cmd>call WoW70ConsumableSearch()<cr>
nnoremap <silent> <leader>tsi <cmd>call WoW60ItemSearch()<cr>
nnoremap <silent> <leader>tsw <cmd>call WoW60WeaponSearch()<cr>
nnoremap <silent> <leader>tsa <cmd>call WoW60ArmorSearch()<cr>
nnoremap <silent> <leader>tsc <cmd>call WoW60ConsumableSearch()<cr>
vnoremap <silent> <leader>tsi y<cmd>execute 'OpenURL "https://wotlkdb.com/?item=' . @+ . '"'<cr>
vnoremap <silent> <leader>tss y<cmd>execute 'OpenURL "https://wotlkdb.com/?spell=' . @+ . '"'<cr>
vnoremap <silent> <leader>tsn y<cmd>execute 'OpenURL "https://wotlkdb.com/?npc=' . @+ . '"'<cr>

" keybind: quickfix - toggle open
nnoremap <silent> <leader>on <cmd>call ToggleList("Quickfix List", 'c')<cr>

" keybind: quickfix - toggle focus
nnoremap <silent> <leader>of <cmd>copen<cr>
autocmd FileType qf nnoremap <silent> <buffer> <leader>of <cmd>wincmd p<cr>

" keybind: quickfix - focus
nnoremap <silent> <leader>oF <cmd>copen<cr>

" keybind: quickfix - go
nnoremap <silent> <leader>og <cmd>copen<cr><cr>

" keybind: quickfix - first
nnoremap <silent> <leader>o0 <cmd>copen<cr>gg<cr>
autocmd FileType qf nnoremap <silent> <buffer> <leader>o0 gg<cr><cmd>wincmd p<cr>

" keybind: quickfix - last
nnoremap <silent> <leader>o$ <cmd>copen<cr>G<cr>
autocmd FileType qf nnoremap <silent> <buffer> <leader>o$ G<cr><cmd>wincmd p<cr>

" keybind: quickfix - previous
nnoremap <silent> <leader>oq <cmd>cprev<cr>

" keybind: quickfix - next
nnoremap <silent> <leader>ow <cmd>cnext<cr>

" keybind: quickfix - older
nnoremap <silent> <leader>oQ <cmd>cold<cr>

" keybind: quickfix - newer
nnoremap <silent> <leader>oW <cmd>cnew<cr>

" keybind: quickfix - done
nnoremap <silent> <leader>od <cmd>copen<cr><cmd>RemoveQFItem<cr><cr>
autocmd FileType qf nnoremap <silent> <buffer> <leader>od <cmd>copen<cr><cmd>RemoveQFItem<cr>

" keybind: quickfix - clear list
nnoremap <silent> <leader>oc <cmd>ClearQuickfixList<cr><cmd>cclose<cr>

" keybind: quickfix - remove highlighted
autocmd FileType qf map <silent> <buffer> dd <cmd>RemoveQFItem<cr>

" keybind: quickfix - select highlighted
autocmd FileType qf map <silent> <buffer> ; <cr><cmd>wincmd p<cr>

" keybind: quickfix - add line
nnoremap <silent> <leader>oa <cmd>QFAddLine<cr>

" keybind: quickfix - add todo
nnoremap <silent> <leader>ot <cmd>QFAddTodo<cr>

" keybind: quickfix - add fixme
nnoremap <silent> <leader>om <cmd>QFAddFixme<cr>

" keybind: quickfix - saved lists - fast save
nnoremap <silent> <leader>osf <cmd>QFFastSaveList<cr>

" keybind: quickfix - saved lists - save
nnoremap <silent> <leader>osa <cmd>QFSaveList<cr>

" keybind: quickfix - saved lists - clear
nnoremap <silent> <leader>osc <cmd>QFClearList<cr>

" telekasten
function! SaveBufferAsNote()
  let l:name = Prompt('Save current buffer as note')
  if (l:name != '')
    execute 'w ~/sync/notes/' . l:name . '.md'
    if g:os != 'Windows'
      set filetype=telekasten
    endif
  endif
endfunction

nnoremap <silent> <leader>n; <cmd>call SaveBufferAsNote()<cr>
if g:os == 'Windows'
  call NormalVisual('<silent> <leader>nn', ':lua require"telescope.builtin".file_browser{ cwd = "~/sync/notes" }<cr>')
  call NormalVisual('<silent> <leader>nc', ':call NewNote()')
else
  nnoremap <leader>nn :lua require('telekasten').find_notes()<cr>
  nnoremap <leader>nd :lua require('telekasten').find_daily_notes()<cr>
  nnoremap <leader>ng :lua require('telekasten').search_notes()<cr>
  nnoremap <leader>nz :lua require('telekasten').follow_link()<cr>
  nnoremap <leader>nT :lua require('telekasten').goto_today()<cr>
  " nnoremap <leader>nW :lua require('telekasten').goto_thisweek()<cr>
  " nnoremap <leader>nw :lua require('telekasten').find_weekly_notes()<cr>
  nnoremap <leader>nc :lua require('telekasten').new_note()<cr>
  nnoremap <leader>nC :lua require('telekasten').new_templated_note()<cr>
  nnoremap <leader>ny :lua require('telekasten').yank_notelink()<cr>
  nnoremap <leader>nx :lua require('telekasten').show_calendar()<cr>
  nnoremap <leader>nX :CalendarT<cr>
  nnoremap <leader>ni :lua require('telekasten').paste_img_and_link()<cr>
  nnoremap <leader>nt :lua require('telekasten').toggle_todo()<cr>
  nnoremap <leader>nb :lua require('telekasten').show_backlinks()<cr>
  nnoremap <leader>nN :lua require('telekasten').find_friends()<cr>
  nnoremap <leader>nI :lua require('telekasten').insert_img_link({ i=true })<cr>
  nnoremap <leader>np :lua require('telekasten').preview_img()<cr>
  nnoremap <leader>nm :lua require('telekasten').browse_media()<cr>
  nnoremap <leader>na :lua require('telekasten').show_tags()<cr>

  " telekasten - on wait - bring up the panel
  nnoremap <leader>z :lua require('telekasten').panel()<cr>

  " telekasten - insert mode
  inoremap [[ <cmd>:lua require('telekasten').insert_link{ i=true }<cr>
  inoremap <c-z>t <cmd>:lua require('telekasten').toggle_todo{ i=true }<cr>
  inoremap <c-z># <cmd>lua require('telekasten').show_tags{i = true}<cr>
endif

au FileType telekasten cd /home/user/sync/notes

" bufferize
nnoremap <leader>: :Bufferize<space>

" floaterm - ranger
if g:os == 'Windows'
  command FM FloatermNew --height=0.6 --width=0.6 --wintype=float --position=center --autoclose=2 wsl ranger --cmd="cd ~"
else
  command FM FloatermNew --height=0.6 --width=0.6 --wintype=float --position=center --autoclose=2 ranger --cmd="cd ~"
endif
nnoremap <silent> <leader>ir <cmd>FM<cr>

" floaterm - open twitch
function! OpenTwitch()
  let l:vod = Prompt("Enter livestream or VOD URL")
  if l:vod != ''
   if g:os == 'Windows'
      execute 'FloatermNew --height=0.6 --width=0.6 --wintype=float --position=center --autoclose=2 streamlink.exe --player-passthrough hls --default-stream best ' . l:vod . ' &'
    else
      execute 'FloatermNew --height=0.6 --width=0.6 --wintype=float --position=center --autoclose=2 pwsh.exe -c streamlink.exe --player-passthrough hls --default-stream best ' . l:vod . ' &'
    endif
  endif
endfunction
nnoremap <silent> <leader>it <cmd>call OpenTwitch()<cr>

" save current file
nnoremap <silent> <leader>l <cmd>w<cr>

" center current window
nnoremap <silent> <leader>k; <cmd>wincmd v<cr><cmd>call CreateEmptyBuffer()<cr><cmd>wincmd =<cr><cmd>wincmd l<cr><cmd>wincmd v<cr><cmd>wincmd l<cr><cmd>call CreateEmptyBuffer()<cr><cmd>wincmd h<cr><cmd>wincmd =<cr>

" edit config
if g:os == 'Windows'
  nnoremap <silent> <leader>rc <cmd>e \\wsl.localhost\Ubuntu\home\user\.config\nixpkgs\dots\config\nvim\init.vim<cr>
else
  nnoremap <silent> <leader>rc <cmd>e ~/.config/nixpkgs/dots/config/nvim/init.vim<cr>
endif

" windows copy config
if g:os == 'Windows'
  nnoremap <silent> <leader>rw <cmd>!wsl cp ~/.config/nixpkgs/dots/config/nvim/init.vim /mnt/c/Users/Administrator/AppData/Local/nvim/init.vim<cr>
else
  nnoremap <silent> <leader>rw <cmd>!cp ~/.config/nixpkgs/dots/config/nvim/init.vim /mnt/c/Users/Administrator/AppData/Local/nvim/init.vim<cr>
endif

" edit nix
if g:os == 'Windows'
  nnoremap <silent> <leader>rn <cmd>e \\wsl.localhost\Ubuntu\home\user\.config\nixpkgs\home.nix<cr>
else
  nnoremap <silent> <leader>rn <cmd>e ~/.config/nixpkgs/home.nix<cr>
endif

" switch nix
if g:os == 'Windows'
  command FS FloatermNew --height=0.6 --width=0.6 --wintype=float --position=center --autoclose=2 wsl home-manager switch
else
  command FS FloatermNew --height=0.6 --width=0.6 --wintype=float --position=center --autoclose=2 home-manager switch
endif
nnoremap <silent> <leader>rs <cmd>FS<cr>

" keybind: taboo - rename
nnoremap <m-r> :TabooRename<space>

" keybind: taboo - reset
nnoremap <silent> <leader>rt <cmd>TabooReset<cr>

" keybind: plug - reload
nnoremap <silent> <leader>rp <cmd>PlugInstall<cr><cmd>PlugUpdate<cr>

" keybind: plug - upgrade
nnoremap <silent> <leader>rP <cmd>PlugUpgrade<cr><cmd>PlugInstall<cr><cmd>PlugUpdate<cr>

" keybind: fugitive
nnoremap <leader>gg :Git<space>

" keybind: fugitive - add
nnoremap <leader>ga :Git add<space>

" keybind: fugitive - commit
nnoremap <leader>gc :Git commit -m '

" keybind: fugitive - push
nnoremap <leader>gp :Git push<space>

" keybind: fugitive - push origin
nnoremap <leader>go :Git push origin<space>

" keybind: fugitive - push origin
nnoremap <leader>g; :Git push origin main<cr>

" keybind: fugitive - move
nnoremap <leader>gm :Gmove<space>

