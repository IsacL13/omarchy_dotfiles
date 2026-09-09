return {
  {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "VeryLazy",
    priority = 1000,
    opts = {},
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = { virtual_text = false },
      -- Roslyn's inlay hints trigger an upstream Neovim decoration-provider
      -- crash (nvim.lsp.inlayhint "win") when fast edits race the hint
      -- response. Excluding these filetypes stops LazyVim from ever
      -- re-enabling hints for them. https://github.com/neovim/neovim/issues/36318
      inlay_hints = { exclude = { "vue", "cs", "razor", "cshtml" } },
    },
  },
}
