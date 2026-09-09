-- Aether ships each Omarchy-generated theme's `selection` color equal to
-- `foreground` (see colors.toml / neovim.lua.tpl). aether.nvim's LSP group
-- reuses that same value for both the background *and* the foreground of
-- LspReferenceText/Read (word-under-cursor highlighting), which makes the
-- highlighted word's text exactly the same color as its own highlight box.
--
-- This file survives `omarchy-theme-set` (unlike lua/plugins/theme.lua,
-- which is a symlink Omarchy regenerates on every theme switch), so it
-- applies across all current and future Omarchy themes, not just this one.
return {
  {
    "bjarneo/aether.nvim",
    name = "aether",
    opts = {
      on_highlights = function(hl, c)
        local ok, Util = pcall(require, "aether.utils")
        local bg = ok and Util.blend_bg(c.accent, 0.28) or c.selection

        -- Tint with the theme's accent color instead of the (here,
        -- identical-to-foreground) selection color, and drop the forced
        -- `fg` so the word's normal syntax color stays legible on top.
        hl.LspReferenceText = { bg = bg }
        hl.LspReferenceRead = { bg = bg }
        hl.LspReferenceWrite = { bg = bg, bold = true }
      end,
    },
  },
}
