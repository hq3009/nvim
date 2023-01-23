local o = vim.opt
local cmd = vim.cmd
local command = vim.api.nvim_create_user_command
local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

--- Remove all trailing whitespace on save
local TrimWhiteSpaceGrp = augroup("TrimWhiteSpaceGrp", {
  clear = true
})

autocmd("BufWritePre", {
  command = [[:%s/\s\+$//e]],
  group = TrimWhiteSpaceGrp
})

-- don't auto comment new line
autocmd("BufEnter", {
  command = [[set formatoptions-=cro]]
})

-- wrap words "softly" (no carriage return) in mail buffer
autocmd("Filetype", {
  pattern = "mail",
  callback = function()
    o.textwidth = 0
    o.wrapmargin = 0
    o.wrap = true
    o.linebreak = true
    o.columns = 80
    o.colorcolumn = "80"
  end
})

-- Highlight on yank
local yankGrp = augroup("YankHighlight", {
  clear = true
})
autocmd("TextYankPost", {
  command = "silent! lua vim.highlight.on_yank()",
  group = yankGrp
})
-- go to last loc when opening a buffer
autocmd("BufReadPost", {
  command = [[if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g`\"" | endif]]
})
-- windows to close with "q"
autocmd("FileType", {
  pattern = {"help", "startuptime", "qf", "fugitive", "null-ls-info", "dap-float"},
  command = [[nnoremap <buffer><silent> q :close<CR>]]
})
autocmd("FileType", {
  pattern = "man",
  command = [[nnoremap <buffer><silent> q :quit<CR>]]
})

-- disable list option in certain filetypes
autocmd("FileType", {
  pattern = {"NeoGitStatus"},
  command = [[setlocal list!]]
})

-- show cursor line only in active window
local cursorGrp = augroup("CursorLine", {
  clear = true
})
autocmd({"InsertLeave", "WinEnter"}, {
  pattern = "*",
  command = "set cursorline",
  group = cursorGrp
})
autocmd({"InsertEnter", "WinLeave"}, {
  pattern = "*",
  command = "set nocursorline",
  group = cursorGrp
})

-- when there is no buffer left show Alpha dashboard
-- requires "famiu/bufdelete.nvim" and "goolord/alpha-nvim"
local alpha_on_empty = augroup("alpha_on_empty", {
  clear = true
})

autocmd("User", {
  pattern = "BDeletePost*",
  group = alpha_on_empty,
  callback = function(event)
    local fallback_name = vim.api.nvim_buf_get_name(event.buf)
    local fallback_ft = vim.api.nvim_buf_get_option(event.buf, "filetype")
    local fallback_on_empty = fallback_name == "" and fallback_ft == ""

    if fallback_on_empty then
      -- require("neo-tree").close_all()
      cmd("Alpha")
      cmd(event.buf .. "bwipeout")
    end
  end
})

-- Enable spell checking for certain file types
autocmd({"BufRead", "BufNewFile"}, {
  pattern = {"*.txt", "*.md", "*.tex"},
  callback = function()
    o.spell = true
    o.spelllang = "en,de"
  end
})
