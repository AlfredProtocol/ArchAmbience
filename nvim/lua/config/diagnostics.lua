-- Desactivar diagnósticos completamente
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function()
    vim.diagnostic.disable() -- Desactiva todos los diagnósticos al conectar cualquier LSP
  end,
})
