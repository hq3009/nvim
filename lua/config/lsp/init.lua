-- options for lsp diagnostic
vim.lsp.handlers["textDocument/publishDiagnostics"] =
  vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = true,
    signs = true,
    update_in_insert = true,
    virtual_text = {
      true,
      spacing = 6
      -- severity_limit='Error'  -- Only show virtual text on error
    }
  })

require("config.lsp.mappings")