local fn = vim.fn

if fn.has("win32") then
  current_os = "windows"
elseif fn.hax("unix") then
  current_os = "linux"
elseif fn.has("macunix") then
  current_os = "macos"
else
  current_os = "other"
end
