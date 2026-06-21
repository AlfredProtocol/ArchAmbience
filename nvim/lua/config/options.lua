-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--- ~/.config/nvim/lua/config/options.lua

-- =========================
-- DESACTIVAR DIAGNÓSTICOS
-- =========================
vim.diagnostic.enable(false) -- quita triángulos, subrayados, virtual text, flotantes

-- =========================
-- OPCIONES BÁSICAS DE NEOVIM
-- =========================
vim.opt.number = true -- número de línea absoluto
vim.opt.relativenumber = false -- números relativos
vim.opt.cursorline = true -- resaltar línea actual
vim.opt.wrap = false -- no ajustar líneas
vim.opt.tabstop = 4 -- ancho de tabulación
vim.opt.shiftwidth = 4 -- ancho de indentación
vim.opt.expandtab = true -- usar espacios en tabs
vim.opt.smartindent = true -- indentación inteligente
vim.opt.scrolloff = 8 -- mantener 8 líneas visibles arriba/abajo del cursor
vim.opt.signcolumn = "yes" -- siempre mostrar columna de signos

-- =========================
-- LEADER KEY
-- =========================
vim.g.mapleader = " " -- líder = espacio
vim.g.maplocalleader = " " -- líder local = espacio

-- =========================
-- APARIENCIA MINIMALISTA
-- =========================
vim.opt.termguicolors = true -- colores 24-bit
vim.opt.background = "dark" -- fondo oscuro por defecto
vim.opt.laststatus = 3 -- statusline global

-- =========================
-- DESECHAR AUTOSUGERENCIAS / UI EXTRA
-- =========================
vim.g.loaded_cmp = 1
vim.g.loaded_cmp_luasnip = 1
vim.g.loaded_friendly_snippets = 1
vim.g.loaded_mini_pairs = 1
vim.g.loaded_mini_ai = 1
vim.g.loaded_noice = 1
vim.g.loaded_which_key = 1
vim.g.loaded_flash = 1

vim.opt.list = false

require("config.diagnostics")
