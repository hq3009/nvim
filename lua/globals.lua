local fn = vim.fn
local has = vim.fn.has

is_mac = has "macunix"
is_win = has "win32"
is_linux = has "unix"
