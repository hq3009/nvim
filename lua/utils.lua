local cmd = vim.cmd
local fn = vim.fn

local M = {}

M.notify = function(message, level, title)
  local notify_options = {
    title = title,
    timeout = 2000
  }
  require("notify")(message, level, notify_options)
end

-- check if a variable is not empty nor nil
M.is_not_empty = function(s)
  return s ~= nil and s ~= ""
end

--- Check if a directory exists in this path
M.isdir = function(path)
  local ok = vim.loop.fs_stat(path)
  return ok
end

function M.map(mode, l, r, opts)
  opts = opts or {}
  vim.keymap.set(mode, l, r, opts)
end

return M
