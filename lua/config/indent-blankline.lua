require("indent_blankline").setup({
  indentLine_enabled = 1,
  char = "▏",
  char_list = {"|", "¦", "┆", "┊"},
  space_char = " ",
  filetype_exclude = {"startify", "dashboard", "log", "fugitive", "gitcommit", "packer", "markdown",
                      "json", "txt", "help", "NvimTree", "neo-tree", "git", "TelescopePrompt",
                      "undotree", "flutterToolsOutline", ""},
  buftype_exclude = {"terminal", "nofile"},
  show_trailing_blankline_indent = false,
  show_first_indent_level = true,
  show_current_context = true,
  context_patterns = {"class", "function", "method", "block", "list_literal", "selector", "^if",
                      "^table", "if_statement", "while", "for"}
})
