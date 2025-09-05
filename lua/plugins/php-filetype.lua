-- lua/plugins/php-filetype.lua
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "php", -- 确保 PHP 语法解析器已安装
    },
  },
}
