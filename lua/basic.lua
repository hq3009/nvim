local o = vim.opt
local g = vim.g
local fn = vim.fn

g.mapleader = " "

-- Encoding
g.encoding = "UTF-8"
o.fileencoding = "utf-8"

-- UI
o.guifont = "Source Code Pro:h13"
o.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50"
o.showmode = false
o.showtabline = 1
o.laststatus = 3
o.ruler = false
o.number = true
o.relativenumber = true
o.cursorline = true
o.shortmess = o.shortmess + "c"

-- Keep lines below cursor when scrolling
o.scrolloff = 3
o.sidescrolloff = 5

-- Times
o.updatetime = 300
o.timeoutlen = 400
o.ttimeoutlen = 0

-- File
o.backup = false
o.writebackup = false
o.swapfile = false
o.dir = fn.stdpath("data") .. "/swp"

-- Undo
o.undofile = true
o.undodir = fn.stdpath("data") .. "/undo"

-- History
o.history = 500

-- Edit
o.clipboard = "unnamedplus"
o.conceallevel = 0 -- show `` in markdown files
o.list = false
o.listchars = "eol:¬,tab:→·,trail:~,extends:>,precedes:<"

-- Enable mouse support
o.mouse = "a"

-- Searching
o.ignorecase = true
o.smartcase = true
o.hlsearch = true

-- Set grep default grep command with ripgrep
o.grepprg = "rg --hidden --vimgrep --smart-case"

-- Split window right and below
o.splitbelow = true
o.splitright = true

-- Indenting
o.expandtab = true
o.shiftwidth = 2
o.smartindent = true
o.tabstop = 2
o.softtabstop = 2

-- Terminal
o.termguicolors = true

-- Fold
o.foldcolumn = "1"
o.foldlevelstart = 99

-- Completion
o.completeopt = {"menu", "menuone", "noselect", "noinsert"}
o.wildmode = "full"
o.wildignorecase = true
o.wildignore = [[
*/.git,*/.svn,*/build/**,*/__pycache__/*,*/node_modules/*,
*.aux,*.out,*.toc,
*.o,*.obj,*.exe,*.dll,*.manifest,*.rbc,*.class,
*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png,*.psd,*.webp,
*.avi,*.divx,*.mp4,*.webm,*.mov,*.mkv,*.mpg,*.mpeg,
*.mp3,*.oga,*.ogg,*.wav,*.flac,
*.eot,*.otf,*.ttf,*.woff,
*.doc,*.pdf,
*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,
*.swp,.lock,.DS_Store,._*,
*/tmp/*,*.so,*.swp,**/node_modules/**,**/target/**
]]

-- Disable loading certain plugins
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
if current_os == "windows" then
  g.netrw_http_cmd = "curl --ssl-no-revoke -Lo"
end
g.loaded_sql_completion = 1
