-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "跳转到定义" })
vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "查找引用" })
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "显示文档" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "代码操作" })
vim.keymap.set("n", "gt", ":tabnext", { desc = "Next Tab" })
vim.keymap.set("n", "gT", ":tabprevious", { desc = "Previous Tab" })

-- 映射 Alt+Left 后退，Alt+Right 前进（类似浏览器导航）
vim.keymap.set("n", "<A-Left>", "<C-o>", { desc = "Go Backward" })
vim.keymap.set("n", "<A-Right>", "<C-i>", { desc = "Go Forward" })

-- 下移当前行
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==gv", { noremap = true, silent = true, desc = "Move line down" })

-- 上移当前行（配套操作）
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==gv", { noremap = true, silent = true, desc = "Move line up" })
