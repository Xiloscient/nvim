-- LSP stuff
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, bufopts)
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, bufopts)
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, bufopts)
vim.keymap.set('n', '<leader>D', function() vim.diagnostic.setloclist({ open = true }) end, bufopts)


vim.lsp.enable('lua_ls')
vim.lsp.enable('basedpyright')
vim.lsp.enable('rust_analyzer')
vim.lsp.enable('clangd')

vim.diagnostic.config({
  virtual_text = { severity = { min = vim.diagnostic.severity.ERROR } },
  signs        = { severity = { min = vim.diagnostic.severity.ERROR } },
  underline    = { severity = { min = vim.diagnostic.severity.ERROR } },
  severity_sort = true,   -- nicer ordering in lists
  update_in_insert = false,
})
