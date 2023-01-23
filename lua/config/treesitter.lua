require("nvim-treesitter.configs").setup {
  -- ensure_installed = {"c", "lua", "python", "javascript"},
  auto_install = true,
  ignore_install = {}, -- List of parsers to ignore installing
  sync_install = false,
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = {"help"} -- list of language that will be disabled
  }
}
