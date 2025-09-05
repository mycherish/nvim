return {
  "williamboman/mason.nvim",
  cmd = { "Mason", "MasonInstall", "MasonUninstall", "MasonUninstallAll", "MasonLog" },
  opts = {
    -- Mason 的配置选项（根据你的需求调整）
    ui = {
      icons = {
        package_installed = "✓",
        package_pending = "➜",
        package_uninstalled = "✗",
      },
    },
    -- 自动安装的 LSP/DAP/Linter/Formatter 列表（可选）
    ensure_installed = {
      -- LSP
      -- "lua_ls", -- Lua
      -- "pyright", -- Python
      -- "rust_analyzer", -- Rust
      -- "tsserver", -- TypeScript/JavaScript
      -- "gopls", -- Go
      "bashls", -- Bash
      "jsonls", -- JSON
      "html", -- HTML
      "cssls", -- CSS
      "intelephense", -- php
      "php-cs-fixer", -- PHP 代码风格修复工具

      -- 格式化工具
      -- "stylua", -- Lua 格式化
      -- "black", -- Python 格式化
      -- "prettier", -- Web 格式化
      "shfmt", -- Shell 格式化

      -- Linter 工具
      -- "eslint_d", -- JavaScript 检查
      -- "flake8", -- Python 检查
    },
  },
  -- Mason 加载后自动设置（可选）
  config = function(_, opts)
    require("mason").setup(opts)
    -- 自动安装 Mason-nexus（管理工具链）
    -- vim.schedule(function()
    --   local registry = require("mason-registry")
    --   registry.refresh(function()
    --     if not registry.is_installed("mason-nexus") then
    --      vim.cmd("MasonInstall mason-nexus")
    --     end
    --   end)
    -- end)
  end,
}
