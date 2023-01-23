-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- empty setup using defaults
require("nvim-tree").setup()

require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {{
        key = "h",
        action = "dir_up"
      }}
    }
  },
  renderer = {
    group_empty = true
  },
  filters = {
    dotfiles = true
  }
})

vim.keymap.set("n", "<leader>ft", "<cmd>NvimTreeToggle<cr>", {desc="Toggle Tree"})
