-- 定义函数：获取当前文件相对于 Git 根目录的路径
local function get_git_relative_path()
  local git_root = vim.fn.system("git rev-parse --show-toplevel 2>/dev/null"):gsub("\n", "")
  if git_root == "" then
    vim.notify("Not in a Git repository!", vim.log.levels.ERROR)
    return ""
  end
  local file_path = vim.fn.expand("%:p")
  local relative_path = file_path:gsub(git_root .. "/", "")
  return relative_path
end

-- 创建自定义命令
vim.api.nvim_create_user_command("CopyGitRelPath", function()
  local path = get_git_relative_path()
  if path ~= "" then
    vim.fn.setreg("+", path) -- 复制到系统剪贴板
    vim.notify("Copied: " .. path, vim.log.levels.INFO)
  end
end, {})
