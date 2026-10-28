return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "storm", -- 或者 "night", "moon", "day"
      transparent = false,
      styles = {
        comments = { italic = true },
      },
      --- @param hl highlights.Highlights
      --- @param c palette.Palette
      on_highlights = function(hl, c)
        -- 这里把注释颜色改成了较亮的蓝绿色 (Teal)
        hl.Comment = { fg = c.cyan, italic = true } 
      end,
    },
  },
}
