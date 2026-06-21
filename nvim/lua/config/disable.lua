-- ~/.config/nvim/lua/config/disable.lua
-- Deshabilita plugins de LazyVim que generan sugerencias, snippets, pares automáticos o ayudas visuales

-- Autocompletado
vim.g.loaded_cmp = 1
vim.g.loaded_cmp_luasnip = 1

-- Snippets
vim.g.loaded_friendly_snippets = 1

-- Pares automáticos
vim.g.loaded_mini_pairs = 1

-- Mini AI o helpers de texto
vim.g.loaded_mini_ai = 1

-- Mensajes y hints
vim.g.loaded_noice = 1
vim.g.loaded_which_key = 1

-- Opcional: deshabilitar flash.nvim si muestra resaltado al buscar
vim.g.loaded_flash = 1
