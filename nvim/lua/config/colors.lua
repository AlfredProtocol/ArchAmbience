-- ~/.config/nvim/lua/config/colors.lua
return {
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "night",
      transparent = true,
      terminal_colors = true,
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = { bold = true },
        variables = {},
        sidebars = "transparent",
        floats = "transparent",
      },
      sidebars = { "qf", "help", "terminal", "NvimTree", "toggleterm" },
      day_brightness = 0.3,
      hide_inactive_statusline = false,
      dim_inactive = true,
      lualine_bold = true,
    },
  },
}
