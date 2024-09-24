return {
    "kawre/leetcode.nvim",
    build = ":TSUpdate html",
    dependencies = {
        "nvim-telescope/telescope.nvim",
        "nvim-lua/plenary.nvim", -- required by telescope
        "MunifTanjim/nui.nvim",

        -- optional
        "nvim-treesitter/nvim-treesitter",
        "rcarriga/nvim-notify",
        "nvim-tree/nvim-web-devicons",
    },
    opts = {
        -- configuration goes here
    },
    keys = {
      { "<leader>lr", "<cmd>Leet run<cr>", desc = "Run leetcode test"  },
      { "<leader>ls", "<cmd>Leet<cr>", desc = "Start Leetcode plugin"},
  }
}
