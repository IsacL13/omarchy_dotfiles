return {
  "stevearc/conform.nvim",
  opts = {
    format_on_save = {
      timeout_ms = 3000,
      lsp_fallback = true,
    },
    formatters_by_ft = {
      cs = { "lsp" },
      typescript = { "prettier" },
      javascript = { "prettier" },
      html = { "prettier" },
      css = { "prettier" },
      json = { "prettier" },
    },
  },
}
