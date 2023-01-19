local o = vim.opt
local g = vim.g
local fn = vim.fn

g.mapleader = " "

-- UI
o.guifont = "Source Code Pro:h13"
o.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50" -- cursor shape in different modes
o.showmode = false -- we don't need to see things like -- INSERT -- anymore
o.showtabline = 1
o.laststatus = 3
o.ruler = false
o.number = true
o.relativenumber = true
o.cursorline = true -- highlight the current line
o.scrolloff = 3 -- Minimal number of screen lines to keep above and below the cursor
o.sidescrolloff = 5 -- The minimal number of columns to scroll horizontally
o.shortmess = o.shortmess + "c" -- prevent "pattern not found" messages

-- Times
o.updatetime = 300 -- faster completion
o.timeoutlen = 400 -- time to wait for a mapped sequence to complete (in milliseconds)
o.ttimeoutlen = 0 -- Time in milliseconds to wait for a key code sequence to complete

-- File
o.fileencoding = "utf-8" -- the encoding written to a file
o.backup = false -- creates a backup file
o.swapfile = true -- enable/disable swap file creation
o.dir = fn.stdpath("data") .. "/swp" -- swap file directory

-- Undo
o.undofile = true -- enable/disable undo file creation
o.undodir = fn.stdpath("data") .. "/undo" -- set undo directory

-- History
o.history = 500 -- number of commands mode that are remembered.

-- Edit
o.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
o.conceallevel = 0 -- so that `` is visible in markdown files
o.mouse = "nv"
o.list = false
o.listchars = "eol:¬,tab:→·,trail:~,extends:>,precedes:<" -- which list chars to show

-- Searching
o.ignorecase = true -- ignore case in search patterns
o.smartcase = true -- smart case
o.hlsearch = true -- highlight all matches on previous search pattern
o.grepprg = "rg --hidden --vimgrep --smart-case --"

-- Window
o.splitbelow = true -- force all horizontal splits to go below current window
o.splitright = true -- force all vertical splits to go to the right of current window

-- Indenting
o.expandtab = true -- convert tabs to spaces
o.shiftwidth = 2 -- the number of spaces inserted for each indentation
o.smartindent = true -- make indenting smarter again
o.tabstop = 2 -- how many columns a tab counts for
o.softtabstop = 2

-- Terminal
o.termguicolors = true -- set term gui colors (most terminals support this)

-- Fold
o.foldenable = false -- disable folding; TODO: wait for https://github.com/neovim/neovim/pull/17446
o.foldcolumn = "1"
o.foldlevelstart = 99 -- Using ufo provider need a large value, feel free to decrease the value

-- Completion
o.completeopt = {"menu", "menuone", "noselect", "noinsert"} -- A comma separated list of options for Insert mode completion
o.wildmode = "full"
o.wildignorecase = true -- When set case is ignored when completing file names and directories
o.wildignore = [[
.git,.hg,.svn
*.aux,*.out,*.toc
*.o,*.obj,*.exe,*.dll,*.manifest,*.rbc,*.class
*.ai,*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png,*.psd,*.webp
*.avi,*.divx,*.mp4,*.webm,*.mov,*.m2ts,*.mkv,*.vob,*.mpg,*.mpeg
*.mp3,*.oga,*.ogg,*.wav,*.flac
*.eot,*.otf,*.ttf,*.woff
*.doc,*.pdf,*.cbr,*.cbz
*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,*.kgb
*.swp,.lock,.DS_Store,._*
*/tmp/*,*.so,*.swp,*.zip,**/node_modules/**,**/target/**,**.terraform/**"
]]

g.loaded_gzip = 1
g.loaded_tar = 1
g.loaded_tarPlugin = 1
g.loaded_zip = 1
g.loaded_zipPlugin = 1
g.loaded_getscript = 1
g.loaded_getscriptPlugin = 1
g.loaded_vimball = 1
g.loaded_vimballPlugin = 1
g.loaded_matchit = 1
g.loaded_matchparen = 1
g.loaded_2html_plugin = 1
g.loaded_logiPat = 1
g.loaded_rrhelper = 1
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
g.loaded_netrwSettings = 1
g.loaded_netrwFileHandlers = 1