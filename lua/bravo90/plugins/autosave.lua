return {
	-- plugin: auto-save.nvim
	-- function: auto save changes
	-- src: https://github.com/pocco81/auto-save.nvim
	"Pocco81/auto-save.nvim", 
  config = function()
  -- Override vim.notify to suppress autosave notifications
    local original_notify = vim.notify  -- Backup original notify function

    vim.notify = function(msg, log_level, opts)
                -- Suppress notifications containing "autosave"
      if string.match(msg, "autosave") then
        return  -- Do not show autosave-related notifications
      end
      original_notify(msg, log_level, opts)  -- Show other notifications
    end

      -- Configure auto-save.nvim
      require("auto-save").setup({
        notify = false,  -- Turn off autosave-specific notifications
      })

      -- Optionally restore the original notify function after autosave configuration
      vim.notify = original_notify
    end,
}
