return {
  "rcarriga/nvim-notify",
  config = function()
    -- Set up nvim-notify
    require("notify").setup({
      stages = "fade_in_slide_out",  -- Animation style
      timeout = 2000,                -- Notification display time (ms)
      background_colour = "#000000",
      render = "minimal",            -- Use minimal rendering
      on_open = function(win)
      vim.api.nvim_win_set_config(win, { focusable = false })  -- Prevent focus on notifications
      end,
    })

    -- Set nvim-notify as the default notification handler
    vim.notify = require("notify")
  end,
}
