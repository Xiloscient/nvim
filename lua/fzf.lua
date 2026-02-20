require('fzf-lua').setup({"ivy",
  winopts = function()
    local height = math.ceil(vim.o.lines / 3)
    return {
      split = ("botright %dnew +set\\ nobl"):format(height),
      preview = {
        layout   = "vertical",
        vertical = "up:60%",
        border   = "none",
        winopts = {
          number = false,
          relativenumber = false,
          signcolumn = "no",
        },
      },
    }
  end,
})
