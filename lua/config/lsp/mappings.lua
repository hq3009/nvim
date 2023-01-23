local map = vim.keymap.set

map("n", "<Leader>c.", "<cmd>lua vim.lsp.buf.definition()<CR>", {
  desc = "Definition"
})
map("n", "<Leader>c?", "<cmd>lua vim.lsp.buf.references()<CR>", {
  desc = "Reference"
})
map("n", "<Leader>ci", "<cmd>lua vim.lsp.buf.implementation()<CR>", {
  desc = "Implementation"
})
map("n", "<Leader>cs", "<cmd>lua vim.lsp.buf.signature_help()<CR>", {
  desc = "Signature"
})
map("n", "<Leader>cr", "<cmd>lua vim.lsp.buf.rename()<CR>", {
  desc = "Rename"
})
map("n", "<Leader>ch", "<cmd>lua vim.lsp.buf.hover()<CR>", {
  desc = "Hover"
})
map("n", "<Leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", {
  desc = "Action"
})
map("n", "<Leader>cf", "<cmd>Format<CR>", {
  desc = Format
})
map("n", "<Leader>xl", "<cmd>lua vim.diagnostic.open_float({scope='line'})<CR>", {
  desc = "Diagnostics"
})
map("n", "<Leader>xn", "<cmd>lua vim.diagnostic.goto_next()<CR>", {
  desc = "Next Diagnostic"
})
map("n", "<Leader>xp", "<cmd>lua vim.diagnostic.goto_prev()<CR>", {
  desc = "Prev Diagnostic"
})
