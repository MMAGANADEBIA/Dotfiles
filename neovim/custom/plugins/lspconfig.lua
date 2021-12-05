local M = {}

M.setup_lsp = function(attach, capabilities)
  local lspconfig = require "lspconfig"

  local servers = { "html", "cssls", "jsonls", "tsserver", "pyright", "csharp_ls" }
  --csharp_ls

  lspconfig.html.setup {
    on_attach = attach,
    capabilities = capabilities,
    filetypes = { "html", "ejs" }
  }

  lspconfig.cssls.setup {
    on_attach = attach,
    capabilities = capabilities,
    filetypes = { "css" }
  }

  lspconfig.tsserver.setup {
    on_attach = function(client, bufnr)
      client.resolved_capabilities.document_formatting = false
      vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>fm", "<cmd>lua vim.lsp.buf.formatting()<CR>", {})
    end,
    capabilities = capabilities,
    cmd = { "typescript-language-server", "--stdio" },
    filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
    root_dir = lspconfig.util.root_pattern("package.json", "tsconfig.json", "index.html"),
  }

  lspconfig.pyright.setup {
    on_attach = attach,
    capabilities = capabilities,
    filetypes = {"py", "python"}
  }

  lspconfig.jsonls.setup {
    on_attach = attach,
    capabilities = capabilities,
  }


  lspconfig.omnisharp.setup {
    capabilities = capabilities,
    on_attach = function(_, bufnr)
      vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
    end,
    cmd = { "/home/mmaganadebia/.config/nvim/lua/custom/plugins/download_plugins/omnisharp_plugin/run", "--languageserver", "--hostPID", tostring(pid) },
    filetypes = {"cs"},
    root_dir = lspconfig.util.root_pattern("*.cs")
  }

end
return M
