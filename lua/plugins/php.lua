-- lua/plugins/php.lua
return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      intelephense = {
        -- Intelephense 特定配置
        on_attach = function(client, bufnr)
          -- PHP 特定的快捷键映射
          local map = function(keys, func, desc)
            vim.keymap.set("n", keys, func, { buffer = bufnr, desc = "LSP: " .. desc })
          end

          map("gd", require("telescope.builtin").lsp_definitions, "[G]oto [D]efinition")
          map("gr", require("telescope.builtin").lsp_references, "[G]oto [R]eferences")
          map("gI", require("telescope.builtin").lsp_implementations, "[G]oto [I]mplementation")
          map("<leader>D", require("telescope.builtin").lsp_type_definitions, "Type [D]efinition")
          map("<leader>ds", require("telescope.builtin").lsp_document_symbols, "[D]ocument [S]ymbols")
          map("<leader>ws", require("telescope.builtin").lsp_dynamic_workspace_symbols, "[W]orkspace [S]ymbols")
          map("<leader>rn", vim.lsp.buf.rename, "[R]e[n]ame")
          map("<leader>ca", vim.lsp.buf.code_action, "[C]ode [A]ction")
          map("K", vim.lsp.buf.hover, "Hover Documentation")
        end,
        settings = {
          intelephense = {
            -- Intelephense 配置选项
            files = {
              maxSize = 5000000,
            },
            environment = {
              includePaths = {
                "/usr/share/php", -- 系统 PHP 路径
                "./vendor", -- Composer vendor 目录
              },
            },
            diagnostics = {
              enable = true,
              run = "onSave", -- 保存时运行诊断
            },
            format = {
              enable = true, -- 启用格式化
            },
            stubs = {
              "apache",
              "bcmath",
              "bz2",
              "calendar",
              "com_dotnet",
              "Core",
              "ctype",
              "curl",
              "date",
              "dba",
              "dom",
              "enchant",
              "exif",
              "FFI",
              "fileinfo",
              "filter",
              "fpm",
              "ftp",
              "gd",
              "gettext",
              "gmp",
              "hash",
              "iconv",
              "imap",
              "intl",
              "json",
              "ldap",
              "libxml",
              "mbstring",
              "meta",
              "mysqli",
              "oci8",
              "odbc",
              "openssl",
              "pcntl",
              "pcre",
              "PDO",
              "pdo_mysql",
              "pdo_pgsql",
              "pdo_sqlite",
              "pgsql",
              "Phar",
              "posix",
              "pspell",
              "readline",
              "Reflection",
              "session",
              "shmop",
              "SimpleXML",
              "snmp",
              "soap",
              "sockets",
              "sodium",
              "SPL",
              "sqlite3",
              "standard",
              "superglobals",
              "sysvmsg",
              "sysvsem",
              "sysvshm",
              "tidy",
              "tokenizer",
              "xml",
              "xmlreader",
              "xmlrpc",
              "xmlwriter",
              "xsl",
              "Zend OPcache",
              "zip",
              "zlib",
            },
          },
        },
        -- 自动检测 PHP 文件
        filetypes = { "php" },
        -- 根目录识别模式（用于寻找 composer.json）
        root_dir = function(fname)
          return require("lspconfig.util").root_pattern("composer.json", ".git", "index.php")(fname) or vim.fn.getcwd()
        end,
      },
    },
  },
}
