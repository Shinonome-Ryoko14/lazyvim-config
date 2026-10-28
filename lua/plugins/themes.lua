return {
  -- TokyoNight 主题配置
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "storm",
      transparent = true, -- 告诉主题允许透明
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  -- 你的其他备用主题保持原样即可...
  { "catppuccin/nvim", name = "catppuccin" },
  { "rose-pine/neovim", name = "rose-pine" },
  { "rebelot/kanagawa.nvim" },
}
