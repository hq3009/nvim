require("which-key").setup {
  -- add operators that will trigger motion and text object completion
  -- to enable all native operators, set the preset / operators plugin above
  key_labels = {
    ["<space>"] = "SPC",
    ["<cr>"] = "RET",
    ["<tab>"] = "TAB"
  },
  popup_mappings = {
    scroll_down = '<M-j>', -- binding to scroll down inside the popup
    scroll_up = '<M-k>', -- binding to scroll up inside the popup
  },
  window = {
    border = "none", -- none, single, double, shadow
    position = "bottom", -- bottom, top
    margin = {0, 0, 0, 0}, -- extra window margin [top, right, bottom, left]
    padding = {1, 0, 1, 0} -- extra window padding [top, right, bottom, left]
  },
  show_help = false, -- show help message on the command line when the popup is visible
}
