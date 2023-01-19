local map = vim.keymap.set
local wk = require "which-key"
local opt = {
  silent = true
}
local expr = {
  expr = true,
  silent = true
}

-- Remap space as leader key
map({"n", "v"}, "<space>", "<nop>", opt)

-- Mimic some emacs keybindings
-- map("i", "<C-a", "<esc>^i", opt)
map("i", "jk", "<esc>", opt)
map("i", "kj", "<esc>", opt)

-- Remap for dealing with visual line wraps
map("n", "k", "v:count == 0 ? 'gk' : 'k'", expr)
map("n", "j", "v:count == 0 ? 'gj' : 'j'", expr)

-- Goto start/end of visual line
map("n", "gl", "g$", opt)
map("n", "gh", "g^", opt)

-- Better indenting
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)

-- Cancel search highlighting with esc
map("n", "<esc>", ":nohlsearch<Bar>:echo<cr>", opt)
map("n", "<C-l>", "zz", opt)

-- Go to the beginning and end of current line
map("i", "<C-a>", "<home>", opt)
map("i", "<C-e>", "<end>", opt)

-- Go to beginning of command in command-line mode
map("c", "<C-a>", "<home>")

-- Delete the character to the right of the cursor
map("i", "<C-d>", "<del>", opt)

-- Autocorrect spelling from previous error
map("i", "<C-n>", "<down>", opt)
map("i", "<C-p>", "<up>", opt)
map("i", "<C-h>", "<left>", opt)
map("i", "<C-l>", "<right>", opt)
map("i", "<M-h>", "<s-left>", opt)
map("i", "<M-l>", "<s-right>", opt)

-- Select window
map("n", "<M-h>", "<c-w>h", opt)
map("n", "<M-j>", "<c-w>j", opt)
map("n", "<M-k>", "<c-w>k", opt)
map("n", "<M-l>", "<c-w>l", opt)

-- register non leader based mappings
wk.register {
  sa = "Add surrounding",
  sd = "Delete surrounding",
  sh = "Highlight surrounding",
  sn = "Surround update n lines",
  sr = "Replace surrounding",
  sF = "Find left surrounding",
  sf = "Replace right surrounding"
}

-- Register leader based mappings
wk.register({
  ["<leader>"] = {
    ["<tab>"] = {"<cmd>e#<cr>", "Prev buffer"},
    k = {"<cmd>bd<cr>", "Delete Buffer"},
    b = {
      name = "Buffers",
      a = {"<cmd>Alpha<cr>", "Dashboard"},
      b = {"<cmd>buffer<cr>", "Buffers"},
      k = {"<cmd>bd<cr>", "Delete Buffer"},
      K = {"<cmd>bd!<cr>", "Delete Buffer Forcefully"},
      n = {"<cmd>bn", "Next Buffer"},
      p = {"<cmd>bp", "Previous Buffer"},
      o = {"<cmd>%bd|e#|bd#<cr>", "Only This Buffer"}
    },
    f = {
      name = "Files",
      b = {"<cmd>Telescope file_browser grouped=true<cr>", "File browser"},
      -- f = {"<cmd>" .. require("utils").telescope_find_files() .. "<cr>", "Find File"},
      f = {"<cmd>Telescope find_files<cr>", "Find File"},
      -- f = {"require('telescope.builtin').find_files", "Find File"},
      p = {"<cmd>Neotree reveal toggle<cr>", "Toggle Filetree"},
      r = {"<cmd>Telescope oldfiles<cr>", "Recent File"},
      s = {"<cmd>w<cr>", "Save Buffer"}
    },
    j = {
      name = "Jump/Show",
      s = {"<cmd>SymbolsOutline<cr>", "Toggle SymbolsOutline"}
    },
    q = {
      name = "quit",
      a = {"<cmd>qa<cr>", "quit all"},
      k = {"<cmd>q<cr>", "quit"},
      K = {"<cmd>q!<cr>", "quit anyway"}
    },
    u = {
      name = "Misc utils",
      p = {"<cmd>PackerSync --preview<cr>", "PackerSync"}
    },
    v = {
      name = "visual/view",
      b = {"C-v", "Block"},
      h = {"ggVG", "Select All"},
      n = {"<cmd>nohlsearch<cr>", "No Hilight"}
    },
    w = {
      name = "Window",
      -- - = {"<C-w>-", "Decrease Height"},
      -- + = {"<C-w>+", "Increase Height"},
      -- = = {"<C-w>=", "Balance Window"},
      h = {"<C-w>h", "Switch Left"},
      l = {"<C-w>l", "Switch Right"},
      j = {"<C-w>j", "Switch Down"},
      k = {"<C-w>k", "Switch Up"},
      H = {"<C-w>H", "Move Left"},
      L = {"<C-w>L", "Move Right"},
      J = {"<C-w>J", "Move Down"},
      K = {"<C-w>K", "Move Up"},
      s = {"<C-w>s", "Split"},
      v = {"<C-w>v", "Split Vertically"}
    },
    x = {
      name = "Quickfix",
      n = {"<cmd>cnext<cr>", "Next Quickfix Item"},
      p = {"<cmd>cprevious<cr>", "Previous Quickfix Item"},
      q = {"<cmd>lua require('utils').toggle_qf()<cr>", "Toggle quickfix list"},
      t = {"<cmd>TodoQuickFix<cr>", "Show TODOs"}
    },
    y = {
      name = "Snippets",
      r = {"<cmd>source ~/.config/nvim/snippets/*<cr>", "Reload snippets"}
    }
  }
})
