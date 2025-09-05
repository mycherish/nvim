-- lua/plugins/init.lua
return {
  { import = "plugins.git-blame" },
  { import = "plugins.mason" }, -- 加载 mason
  { import = "plugins.mason-lspconfig" },
  { import = "plugins.mason-null-ls" },
  { import = "plugins.php" }, -- PHP LSP 配置
  { import = "plugins.php-filetype" }, -- PHP 文件类型支持
}
