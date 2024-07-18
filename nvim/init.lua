-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
-- clangd fix
    local cmp_nvim_lsp = require "cmp_nvim_lsp"
    require("lspconfig").clangd.setup {
      capabilities = cmp_nvim_lsp.default_capabilities(),
      cmd = {
        "clangd",
        "--offset-encoding=utf-16",
      },
    }

vim.g.gruvbox_material_transparent_background = 2 -- or 2 for more transparency

-- Set colorscheme
vim.cmd('colorscheme gruvbox-material')
