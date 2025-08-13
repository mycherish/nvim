-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")({
  "williamboman/mason.nvim",
  config = function()
    require("mason").setup()
  end,
})
-- 确保已安装 mason.nvim
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "intelephense" }, -- 自动安装 PHP 的 LSP 服务器
})
