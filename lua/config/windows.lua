require("windows").setup({
  autowidth = {
    enable = false,
    winwidth = 5,
    filetype = {
      help = 2
    }
  },
  ignore = {
    buftype = {"quickfix"},
    filetype = {"NvimTree", "NeogitStatus"}
  },
  animation = {
    enable = false,
    duration = 300,
    fps = 30,
    easing = "in_out_sine"
  }
})
