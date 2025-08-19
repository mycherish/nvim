-- lua/plugins/git-blame.lua
return {
  "f-person/git-blame.nvim",
  opts = {
    enabled = true,
    delay = 1000,
    format = function(blame, _)
      return blame.author .. " (" .. blame.commit .. ") " .. blame.summary
    end,
  },
  -- 可选：设置插件加载条件（仅当在 Git 仓库中启用）
  cond = function()
    return vim.fn.system("git rev-parse --is-inside-work-tree 2>/dev/null") == "true\n"
  end,
}
