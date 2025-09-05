return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "williamboman/mason.nvim",
    "neovim/nvim-lspconfig",
  },
  opts = {
    -- 确保这些 LSP 服务器自动配置
    ensure_installed = {
      -- "lua_ls",
      -- "pyright",
      -- "rust_analyzer",
      -- "tsserver",
      -- "gopls",
      -- "bashls",
      "jsonls",
      "html",
      "cssls",
    },
    -- 自动配置已安装的 LSP
    automatic_installation = true,
  },
}
