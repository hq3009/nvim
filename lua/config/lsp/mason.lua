require("mason").setup({
  ui = {
    icons = {
      server_installed = "✓",
      server_pending = "➜",
      server_uninstalled = "✗"
    }
  }
})

require("mason-lspconfig").setup({
  ensure_installed = {"tsserver", -- for javascript
  "jsonls", -- for json
  "texlab", -- for latex
  "sqlls", -- for sql
  "sumneko_lua", -- for lua
  "gopls", -- for go
  "yamlls", "bashls", "html", "cssls", "marksman"}
})

require("mason-lspconfig").setup_handlers {
  -- default handler - setup with default settings
  function(server_name)
    require("lspconfig")[server_name].setup {}
  end,
  -- you can override the default handler by providing custom handlers per server
  ["jdtls"] = function()
  end,
  ["sumneko_lua"] = function()
    require("lspconfig").sumneko_lua.setup {
      settings = {
        Lua = {
          diagnostics = {
            globals = {"vim"}
          }
        }
      }
    }
  end,
  ["texlab"] = function()
    require("lspconfig").texlab.setup {
      settings = {
        texlab = {
          auxDirectory = "build/pdf",
          chktex = {
            onEdit = true
          },
          build = {
            executable = "latexmk",
            forwardSearchAfter = false,
            onSave = false
          }
        }
      }
    }
  end,
  ["ltex"] = function()
    require("lspconfig").ltex.setup({
      settings = {
        ltex = {
          enabled = {"latex", "tex", "bib", "markdown", "text", "txt"},
          diagnosticSeverity = "information",
          setenceCacheSize = 2000,
          additionalRules = {
            enablePickyRules = true,
            motherTongue = "de"
          },
          trace = {
            server = "verbose"
          },
          dictionary = {},
          disabledRules = {},
          hiddenFalsePositives = {}
        }
      }
    })
  end
}