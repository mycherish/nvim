return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = false, -- 当设置为 true 时，隐藏的项目会以半透明等方式显示
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
