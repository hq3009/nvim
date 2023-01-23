local hop = require("hop")
local directions = require("hop.hint").HintDirection
local map = vim.keymap.set

require("hop").setup {
  keys = "asdfghjkqwertyuiopzxcvbnml"
}

map("n", "f", function()
  hop.hint_char1({
    direction = directions.AFTER_CURSOR,
    current_line_only = true
  })
end, {
  remap = true
})
map("n", "F", function()
  hop.hint_char1({
    direction = directions.BEFORE_CURSOR,
    current_line_only = true
  })
end, {
  remap = true
})
map("n", "t", function()
  hop.hint_char1({
    direction = directions.AFTER_CURSOR,
    current_line_only = true,
    hint_offset = -1
  })
end, {
  remap = true
})
map("n", "T", function()
  hop.hint_char1({
    direction = directions.BEFORE_CURSOR,
    current_line_only = true,
    hint_offset = 1
  })
end, {
  remap = true
})
map({"n", "v"}, "<leader>,", "<cmd>HopWord<cr>")
map({"n", "v"}, "<leader>.", "<cmd>HopChar1<cr>")
map({"n", "v"}, "<leader>jc", "<cmd>HopChar2<cr>")
map({"n", "v"}, "<leader>l", "<cmd>HopLineStart<cr>")
map({"n", "v"}, "<leader>ja", "<cmd>HopAnywhere<cr>")
