local map = vim.keymap.set

-- Mimic some emacs keybindings
-- map("i", "<C-a", "<esc>^i", {silent = true})
map("i", "jk", "<esc>")
map("i", "kj", "<esc>")

map({"n", "v"}, "<leader>;", ":", {
  desc = "Execute"
})

-- Remap for dealing with visual line wraps
map("n", "k", "v:count == 0 ? 'gk' : 'k'", {
  expr = true
})
map("n", "j", "v:count == 0 ? 'gj' : 'j'", {
  expr = true
})

-- Goto start/end of visual line
map("n", "gl", "g$", {
  silent = true
})
map("n", "gh", "g^", {
  silent = true
})

-- Better indenting
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Cancel search highlighting with esc
map("n", "<esc>", ":nohlsearch<Bar>:echo<cr>")
map("n", "<C-l>", "zz")

-- Go to the beginning and end of current line
map("i", "<C-a>", "<home>")
map("i", "<C-e>", "<end>")

-- Go to beginning of command in command-line mode
map("c", "<C-a>", "<home>")

-- Delete the character to the right of the cursor
map("i", "<C-d>", "<del>")

-- Autocorrect spelling from previous error
map("i", "<C-n>", "<down>")
map("i", "<C-p>", "<up>")
map("i", "<C-h>", "<left>")
map("i", "<C-l>", "<right>")
map("i", "<M-h>", "<s-left>")
map("i", "<M-l>", "<s-right>")

-- Window
map("n", "<leader>-", "<cmd>resize -10<cr>")
map("n", "<leader>+", "<cmd>resize +10<cr>")
map("n", "<leader><", "<cmd>vertical resize -10<cr>")
map("n", "<leader>>", "<cmd>vertical resize +10<cr>")

map("n", "<M-h>", "<c-w>h")
map("n", "<M-j>", "<c-w>j")
map("n", "<M-k>", "<c-w>k")
map("n", "<M-l>", "<c-w>l")
map("n", "<leader>wh", "<c-w>h")
map("n", "<leader>wj", "<c-w>j")
map("n", "<leader>wk", "<c-w>k")
map("n", "<leader>wl", "<c-w>l")

map("n", "<leader>ww", "<C-W>p", {
  desc = "Other window"
})
map("n", "<leader>wd", "<C-W>c", {
  desc = "Delete window"
})

-- Buffer
map("n", "<leader><tab>", "<cmd>e#<cr>", {
  desc = "Prev Buffer"
})
map("n", "<leader>ba", "<cmd>Alpha<cr>", {
  desc = "Dashboard"
})
map("n", "<Leader>bb", "<cmd>Telescope buffers<cr>", {
  desc = "Buffers"
})
map("n", "<leader>k", "<cmd>bd<cr>", {
  desc = "Delete Buffer"
})
map("n", "<leader>bk", "<cmd>bd<cr>", {
  desc = "Delete Buffer"
})
map("n", "<leader>K", "<cmd>bd!<cr>", {
  desc = "Delete Buffer"
})
map("n", "<leader>bK", "<cmd>bd!<cr>", {
  desc = "Delete Buffer Forcefully"
})
map("n", "<leader>bn", "<cmd>bn", {
  desc = "Next Buffer"
})
map("n", "<leader>bp", "<cmd>bp", {
  desc = "Previous Buffer"
})
map("n", "<leader>bo", "<cmd>%bd|e#|bd#<cr>", {
  desc = "Only This Buffer"
})

-- File
map('n', '<leader>ff', "<cmd>Telescope find_files<cr>", {
  desc = "Find File"
})
map('n', '<leader>sg', "<cmd>Telescope live_grep<cr>", {
  desc = "Live Grep"
})
map('n', '<leader>fh', "<cmd>Telescope help_tags<cr>", {
  desc = "Help Tags"
})
map("n", "<leader>fb", "<cmd>Telescope file_browser<cr>", {
  desc = "File Browser"
})
map("n", "<leader>fp", "<cmd>Neotree reveal toggle<cr>", {
  desc = "Toggle Filetree"
})
map("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", {
  desc = "Recent File"
})
map("n", "<leader>fs", "<cmd>w<cr>", {
  desc = "Save Buffer"
})

-- Specific Folder
-- map("n", "<leader>foh", function() require("Telescope").cd('$HOME') end, {})

-- Switch to the directory of the open buffer
map("n", "<leader>fj", "<cmd>lcd %:p:h<cr><cmd>pwd<cr>")

-- Tab
map("n", "<leader>td", "<cmd>tabclose<cr>", {
  desc = "Close Tab"
})
map("n", "<leader>th", "<cmd>tabprevious<cr>", {
  desc = "Previous Tab"
})
map("n", "<leader>tl", "<cmd>tabnext<cr>", {
  desc = "Next Tab"
})
map("n", "<leader>tH", "<cmd>tabfirst<cr>", {
  desc = "First Tab"
})
map("n", "<leader>tL", "<cmd>tablast<cr>", {
  desc = "Last Tab"
})
map("n", "<leader>tN", "<cmd>tabnew<cr>", {
  desc = "New Tab"
})

-- Jump/Show
map("n", "<leader>jo", "<cmd>SymbolsOutline<cr>", {
  desc = "Toggle SymbolsOutline"
})

-- Quit
map("n", "<leader>qk", "<cmd>qa<cr>", {
  desc = "quit"
})
map("n", "<leader>qK", "<cmd>qa!<cr>", {
  desc = "quit all"
})

-- Misc/Utils
map("n", "<leader>up", "<cmd>PackerSync --preview<cr>", {
  desc = "PackerSynck"
})

-- View
map("n", "<leader>vb", "C-v", {
  desc = "Block"
})
map("n", "<leader>vh", "gg<S-v>G", {
  desc = "Select All"
})
map("n", "<leader>vn", "<cmd>nohlsearch<cr>", {
  desc = "No Hilight"
})

-- Winodw
map("n", "<leader>wh", "<C-w>h", {
  desc = "Switch Left"
})
map("n", "<leader>wl", "<C-w>l", {
  desc = "Switch Right"
})
map("n", "<leader>wj", "<C-w>j", {
  desc = "Switch Down"
})
map("n", "<leader>wk", "<C-w>k", {
  desc = "Switch Up"
})
map("n", "<leader>wH", "<C-w>H", {
  desc = "Move Left"
})
map("n", "<leader>wL", "<C-w>L", {
  desc = "Move Right"
})
map("n", "<leader>wJ", "<C-w>J", {
  desc = "Move Down"
})
map("n", "<leader>wK", "<C-w>K", {
  desc = "Move Up"
})
map("n", "<leader>ws", "<C-w>s", {
  desc = "Split"
})
map("n", "<leader>wv", "<C-w>v", {
  desc = "Split Vertically"
})

-- Terminal
map("n", "<leader>tt", "<cmd>terminal<cr>")

-- Error
map("n", "<leader>xn", "<cmd>cnext<cr>", {
  desc = "Next Quickfix Item"
})
map("n", "<leader>xp", "<cmd>cprevious<cr>", {
  desc = "Previous Quickfix Item"
})
map("n", "<leader>xt", "<cmd>TodoQuickFix<cr>", {
  desc = "Show TODOs"
})

-- Toggle
map("n", "<leader>zn", "<cmd>set invnumber<cr>") -- Line number
map("n", "<leader>zr", "<cmd>set invrelativenumber<cr>") -- Relative number

-- Snippet
-- map("n", "<leader>yr", "<cmd>source ~/.config/nvim/snippets/*<cr>", {silent = true, desc ="Reload snippets"})
