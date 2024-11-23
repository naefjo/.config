-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- -- Resize window using <ctrl> arrow keys
vim.keymap.set("n", "<C-M-Up>", "<cmd>resize +2<cr>", { remap = true, desc = "Increase Window Height" })
vim.keymap.set("n", "<C-M-Down>", "<cmd>resize -2<cr>", { remap = true, desc = "Decrease Window Height" })
vim.keymap.set("n", "<C-M-Left>", "<cmd>vertical resize -2<cr>", { remap = true, desc = "Decrease Window Width" })
vim.keymap.set("n", "<C-M-Right>", "<cmd>vertical resize +2<cr>", { remap = true, desc = "Increase Window Width" })

-- Move Lines
vim.keymap.set("n", "º", "<cmd>m .+1<cr>==", { desc = "Move Down" })
vim.keymap.set("n", "∆", "<cmd>m .-2<cr>==", { desc = "Move Up" })
vim.keymap.set("i", "º", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
vim.keymap.set("i", "∆", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
vim.keymap.set("v", "º", ":m '>+1<cr>gv=gv", { desc = "Move Down" })
vim.keymap.set("v", "∆", ":m '<-2<cr>gv=gv", { desc = "Move Up" })

vim.keymap.set("n", "<leader>ch", "<cmd>ClangdSwitchSourceHeader<cr>", { desc = "Switch Source/Header (clangd)" })

local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>a", function()
  harpoon:list():add()
end, { desc = "Add to the Harpoon List" })
vim.keymap.set("n", "<leader>ha", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end, { desc = "Open Harpoon list" })

vim.keymap.set("n", "<leader>hh", function()
  harpoon:list():select(1)
end, { desc = "Jump to first 1st in List" })
vim.keymap.set("n", "<leader>hj", function()
  harpoon:list():select(2)
end, { desc = "Jumpt to 2nd position in List" })
vim.keymap.set("n", "<leader>hk", function()
  harpoon:list():select(3)
end, { desc = "Jump to 3rd position in List" })
vim.keymap.set("n", "<leader>hl", function()
  harpoon:list():select(4)
end, { desc = "Jump to first 4th in List" })

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<S-h>", function()
  harpoon:list():prev()
end, { remap = true })
vim.keymap.set("n", "<S-l>", function()
  harpoon:list():next()
end, { remap = true })

vim.keymap.set("n", "<leader>be", function()
  require("neo-tree.command").execute({ source = "buffers", toggle = true, position = "float" })
end, {
  desc = "Buffer Explorer",
})

-- LazyVim.format.snacks_toggle():map("<leader>ut", {
--   get = function()
--     local is_enabled = #vim.opt.colorcolumn:get()
--     return is_enabled ~= 0
--   end,
--   set = function(state)
--     if state then
--       vim.opt.colorcolumn = "120"
--     else
--       vim.opt.colorcolumn = ""
--     end
--   end,
--   name = "Max Column Hint",
-- })
