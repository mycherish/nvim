return {
  "jay-babu/mason-null-ls.nvim",
  dependencies = {
    "williamboman/mason.nvim",
    "jose-elias-alvarez/null-ls.nvim",
  },
  opts = {
    -- 确保这些工具自动配置
    ensure_installed = {
      "stylua",
      -- "black",
      -- "prettier",
      -- "shfmt",
      -- "eslint_d",
      -- "flake8",
    },
    -- 自动注册工具
    automatic_installation = true,
  },
}
