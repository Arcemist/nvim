-- [Lazydev]
-- Configures the Lua LSP for the Config, Runtime, and Plugins.
-- Used for Completion, Annotations and Signatures of Neovim apis.

return {
  'folke/lazydev.nvim',
  ft = 'lua',
  opts = {
    library = {
      -- Load luvit types when the `vim.uv` word is found
      { path = '${3rd}/luv/library', words = { 'vim%.uv' } },
    },
  },
}
