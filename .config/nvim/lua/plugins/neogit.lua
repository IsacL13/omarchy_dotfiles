return {
  "NeogitOrg/neogit",
  lazy = true,
  dependencies = {
    -- Only one of these is needed.
    "sindrets/diffview.nvim", -- optional
    "esmuellert/codediff.nvim", -- optional

    -- For a custom log pager
    "m00qek/baleia.nvim", -- optional

    -- Only one of these is needed.
    "nvim-telescope/telescope.nvim", -- optional
    "ibhagwan/fzf-lua", -- optional
    "nvim-mini/mini.pick", -- optional
    "folke/snacks.nvim", -- optional
  },
  cmd = "Neogit",
  keys = {
    { "<leader>gg", "<cmd>Neogit<cr>", desc = "Show Neogit UI" },
    { "<leader>gc", "<cmd>Neogit commit<cr>", desc = "Show Neogit commit popup" },
    { "<leader>gp", "<cmd>Neogit pull<cr>", desc = "Neogit pull" },
    { "<leader>gP", "<cmd>Neogit push<cr>", desc = "Neogit push" },
  },
}
