-- ~/.config/nvim/lua/config/transparency.lua
return {
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
    },
  },
}
-- ~/.config/nvim/lua/user/transparency.lua
local set_transparency = function()
  vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
  vim.cmd("hi NormalNC guibg=NONE ctermbg=NONE")
  vim.cmd("hi FloatBorder guibg=NONE")
  vim.cmd("hi NormalFloat guibg=NONE")
end

-- Aplica al iniciar cualquier colorscheme
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = set_transparency,
})

-- Aplica al entrar a Neovim
vim.api.nvim_create_autocmd("VimEnter", {
  callback = set_transparency,
  })
  -- ~/.config/nvim/lua/config/transparency.lua

local set_transparency = function()
  -- Fondo principal
  vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
  vim.cmd("hi NormalNC guibg=NONE ctermbg=NONE")

  -- Ventanas flotantes
  vim.cmd("hi NormalFloat guibg=NONE")
  vim.cmd("hi FloatBorder guibg=NONE")

  -- LSP Hover / Signature
  vim.cmd("hi LspInfoBorder guibg=NONE")
  vim.cmd("hi LspFloatWinNormal guibg=NONE")

  -- Telescope
  vim.cmd("hi TelescopeNormal guibg=NONE")
  vim.cmd("hi TelescopeBorder guibg=NONE")

  -- NvimTree o Sidebar
  vim.cmd("hi NvimTreeNormal guibg=NONE")
  vim.cmd("hi NvimTreeNormalNC guibg=NONE")
end

-- Aplica al iniciar cualquier colorscheme
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = set_transparency,
})

-- Aplica al entrar a Neovim
vim.api.nvim_create_autocmd("VimEnter", {
  callback = set_transparency,
})

