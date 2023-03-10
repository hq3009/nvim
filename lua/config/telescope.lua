require("telescope").load_extension("project")

require("telescope").setup {
  defaults = {
    file_ignore_patterns = {"node_modules", ".git", "dist", ".next", "out", "pnpm-lock.yaml"},
    vimgrep_arguments = {"rg", "--color=never", "--no-heading", "--with-filename", "--line-number", "--column",
                         "--hidden", "--iglob", "!yarn.lock", "--smart-case", "-u"},
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<M-?>"] = "which_key"
      }
    }
  },
  pickers = {
    find_files = {
      find_command = {"rg", "--files", "--hidden", "--ignore-file", ".next", "--ignore-file", "out", "--ignore-file",
                      "pnpm-lock.yaml"}
    },
    file_browser = {
      hidden = true
    }
  },
  extensions = {
    project = {
      fzf = {
        fuzzy = true, -- false will only do exact matching
        override_generic_sorter = true, -- override the generic sorter
        override_file_sorter = true, -- override the file sorter
        case_mode = "smart_case" -- or "ignore_case" or "respect_case"
      },
      hidden_files = true
    }
  }
}
