-- Toggle inlay hints
local function toggle_diagnostics()
  vim.diagnostic.enable(not vim.diagnostic.is_enabled())
end

return {
  vim.diagnostic.enable(false), -- disable by default
  vim.keymap.set('n', '<leader>td', toggle_diagnostics, { noremap = true, silent = true, desc = '[T]oggle [D]iagnostics' }),
}
