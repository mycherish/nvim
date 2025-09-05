return {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- 可选，用于图标显示
    "MunifTanjim/nui.nvim",
  },
  opts = {
    close_if_last_window = true, -- 当它是最后一个窗口时自动关闭
    enable_git_status = true, -- 显示Git状态
    enable_diagnostics = true, -- 显示诊断信息（如LSP）
    filesystem = {
      follow_current_file = true, -- 在文件中导航时自动聚焦当前文件
      use_libuv_file_watcher = true, -- 使用libuv的文件监视器，可能更稳定
      filtered_items = {
        visible = true, -- 当设置为 true 时，隐藏的项目会以半透明等方式显示
        hide_dotfiles = false, -- 这是显示隐藏文件的关键设置，确保为 false
        hide_gitignored = false, -- 如果你也希望显示被 .gitignore 忽略的文件，设为 false
        hide_hidden = false, -- 完全隐藏的文件 (仅 Windows 系统有效)
        -- 你可以根据需要隐藏特定名称的文件或目录
        hide_by_name = {
          -- "node_modules",
          -- ".DS_Store",
        },
        -- 也可以使用通配符模式来隐藏文件
        hide_by_pattern = {
          -- "*.meta",
          -- "*/src/*/tsconfig.json",
        },
        -- 始终显示的文件，即使它们匹配了上面的隐藏规则
        always_show = {
          -- ".gitignore",
          -- ".github",
        },
      },
    },
  },
}
