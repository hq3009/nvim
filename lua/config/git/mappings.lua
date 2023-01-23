local gs = package.loaded.gitsigns
local map = vim.keymap.set

M = {}
function M.setup()
  map("n", "<space>ga", "gs.stage_buffer", {
    silent = True,
    desc = "Stage Buffer"
  })
  map("n", "<space>gb", "<cmd>Telescope git_branches<cr>", {
    silent = True,
    desc = "Branches"
  })
  map("n", "<space>gc", "<cmd>G commit %<cr>", {
    silent = True,
    desc = "Commit buffer"
  })
  map("n", "<space>gd", gs.diffthis, {
    silent = True,
    desc = "Diff"
  })
  map("n", "<space>gp", "<cmd>G push<cr>", {
    silent = True,
    desc = "Push"
  })
  map("n", "<space>gr", gs.reset_buffer, {
    silent = True,
    desc = "Reset buffer"
  })
  map("n", "<space>gs", "<cmd>Telescope git_status<cr>", {
    silent = True,
    desc = "Status"
  })
  map("n", "<space>gU", gs.undo_stage_hunk, {
    silent = True,
    desc = "Undo Stage Hunk"
  })
  map("n", "<space>gn", gs.next_hunk, {
    silent = True,
    desc = "Next Hunk"
  })
  map("n", "<space>gN", gs.preview_hunk, {
    silent = True,
    desc = "Preview Hunk"
  })
  map("n", "<space>gfB", gs.blame_line, {
    silent = True,
    desc = "Blame full"
  })
  map("n", "<space>gfb", gs.toggle_current_line_blame, {
    silent = True,
    desc = "Blame line"
  })
  map("n", "<space>gx", gs.toggle_deleted, {
    silent = True,
    desc = "Show deleted"
  })
end

return M
