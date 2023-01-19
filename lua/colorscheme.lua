vim.o.background = "dark"

-- local colorscheme = "onedark"
local colorscheme = "tokyonight"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme: " .. colorscheme .. " is not exist.")
  return
end
