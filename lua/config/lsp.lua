vim.lsp.enable("pylsp")
vim.lsp.enable("ts_ls")
vim.lsp.enable("clangd")
vim.lsp.enable("gopls")


vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', 'go', vim.diagnostic.open_float, opts)

	vim.api.nvim_set_keymap('i', '<C-f>', '<C-x><C-o>', { noremap = true })

    local format_filetypes = { "go" }
    vim.api.nvim_create_autocmd('BufWritePre', {
      group = vim.api.nvim_create_augroup("lsp_format_" .. ev.buf, { clear = true }),
      buffer = ev.buf,
      callback = function()
        if vim.tbl_contains(format_filetypes, vim.bo.filetype) then
          vim.lsp.buf.format({ async = false, timeout_ms = 60000 })
        end
      end,
    })
  end,
})
