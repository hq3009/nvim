local wk = require("which-key")
local map = require("utils").map
local gs = package.loaded.gitsigns

M = {}

function M.setup()
  wk.register({
    g = {
      name = "Git",
      ["<Enter>"] = {"<cmd>Neogit<cr>", "Neogit"},
      a = {gs.stage_buffer, "Stage buffer"},
      b = {"<cmd>Telescope git_branches<cr>", "Branches"},
      c = {"<cmd>G commit %<cr>", "Commit buffer"},
      C = {"<cmd>Telescope git_commits<cr>", "Commits"},
      d = {gs.diffthis, "Diff"},
      p = {"<cmd>G push<cr>", "Push"},
      r = {
        name = "Reset",
        R = {gs.reset_buffer, "Reset buffer"}
      },
      s = {"<cmd>Telescope git_status<cr>", "Status"},
      u = {gs.undo_stage_hunk, "Undo stage hunk"},
      P = {gs.preview_hunk, "Preview hunk"},
      B = {function()
        gs.blame_line({
          full = true
        })
      end, "Blame full"},
      L = {gs.toggle_current_line_blame, "Blame line"},
      x = {gs.toggle_deleted, "Show deleted"}
    }
  }, {
    prefix = "<leader>",
    mode = "n",
    silent = true
  })

  -- TODO with german qwertz this bindings are awful
  map("n", "]c", function()
    if vim.wo.diff then
      return "]c"
    end
    vim.schedule(function()
      gs.next_hunk()
    end)
    return "<Ignore>"
  end, {
    desc = "Next hunk",
    expr = true
  })

  map("n", "[c", function()
    if vim.wo.diff then
      return "[c"
    end
    vim.schedule(function()
      gs.prev_hunk()
    end)
    return "<Ignore>"
  end, {
    desc = "Previous hunk",
    expr = true
  })

  map({"n", "v"}, "<leader>gR", "<cmd>Gitsigns reset_hunk<cr>", {
    desc = "Reset hunk"
  })
  map({"n", "v"}, "<leader>gA", "<cmd>Gitsigns stage_hunk<cr>", {
    desc = "Stage hunk"
  })
  map({"o", "x"}, "<leader>gS", "<cmd><C-U>Gitsigns select_hunk<cr>", {
    desc = "Select hunk"
  })
end

return M
