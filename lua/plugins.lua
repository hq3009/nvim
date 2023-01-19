local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
local ensure_packer = function()
  if fn.empty(fn.glob(install_path)) > 0 then
    print("Installing packer...")
    fn.system({"git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim",
               install_path})
    vim.cmd "packadd packer.nvim"
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

return packer.startup(function(use)
  use "wbthomason/packer.nvim"

  -- Edit --

  -- Pair
  use {
    "windwp/nvim-autopairs",
    config = [[ require("nvim-autopairs").setup {} ]]
  }

  -- Coding --

  -- Built-in LSP
  use {
    "neovim/nvim-lspconfig",
    wants = {"williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim"},
    requires = {"williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim"},
    config = [[ require("config.lsp") ]]
  }

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    config = [[ require("config.treesitter") ]]
  }

  use {
    "hrsh7th/nvim-cmp", -- Completion engine
    config = [[ require("config.cmp") ]]
  }

  use "hrsh7th/cmp-path" -- path completions

  -- Snippets
  use {
    "L3MON4D3/LuaSnip",
    after = "nvim-cmp",
    requires = "rafamadriz/friendly-snippets", -- Snippets collection
    config = [[ require("config.luasnip") ]]
  }

  -- Git --
  use {
    "TimUntersberger/neogit",
    requires = {
      "nvim-lua/plenary.nvim",
      {
        "sindrets/diffview.nvim",
      },
      cmd = "Neogit",
      config = [[ require("config.git.neogit") ]]
    }
  }

  use {
    "lewis6991/gitsigns.nvim",
    requires = {"nvim-lua/plenary.nvim"},
    config = [[ require("config.git.gitsigns") ]]
  }

  -- File / Buffer --

  -- Fuzzy finder
  use {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    requires = "nvim-lua/plenary.nvim"
    -- config = [[ require("config.telescope") ]]
  }

  -- Fuzzy finder syntax support
  use {
    "nvim-telescope/telescope-fzf-native.nvim",
    after = "telescope.nvim",
    disable = fn.executable "make" + fn.executable "cmake" == 0,
    run = fn.executable "cmake" == 1 and
      "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build" or
      "make"
  }

  -- Project management
  use "nvim-telescope/telescope-project.nvim"

  -- File explorer
  use {"nvim-tree/nvim-tree.lua" -- requires = "nvim-tree/nvim-web-devicons"
  }

  -- Keymaps
  use {
    "folke/which-key.nvim",
    config = [[ require("config.which-key") ]]
  }

  -- UI --

  -- Color Theme
  use "navarasu/onedark.nvim"
  use "folke/tokyonight.nvim"

  -- use { "ellisonleao/gruvbox.nvim" }

  -- Dashboard
  use {
    "goolord/alpha-nvim",
    requires = {"kyazdani42/nvim-web-devicons"},
    config = [[ require("config.alpha") ]]
  }

  -- Windows manager
  use {
    "anuvyklack/windows.nvim",
    event = "VimEnter",
    requires = {"anuvyklack/middleclass", "anuvyklack/animation.nvim"},
    config = [[ require("config.windows") ]]
  }

  -- Notification
  use {
    "rcarriga/nvim-notify",
    event = "BufEnter",
    config = function()
      vim.defer_fn(function()
        require("config.notify")
      end, 2000)
    end
  }

  -- Color highlighter
  use {
    "norcalli/nvim-colorizer.lua",
    ft = {"scss", "css", "html"},
    config = [[ require("colorizer").setup() ]]
  }

  use {
    "lukas-reineke/indent-blankline.nvim",
    config = [[ require("config.indent-blankline") ]]
  }

  if packer_bootstrap then
    require("packer").sync()
  end

end)
