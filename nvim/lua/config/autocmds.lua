-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- TODO(@naefjo): formatter autocmd
vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    -- try_lint without arguments runs the linters defined in `linters_by_ft`
    -- for the current filetype
    require("lint").try_lint()
  end,
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = { "*.tpp" },
  command = "set filetype=cpp",
})

-- Create latex diff
-- vim.api.nvim_create_autocmd({ "BufWritePost" }, {
--   pattern = { "*.tex" },
--   callback = function(env)
--     local file_name = vim.api.nvim_buf_get_name(0)
--     vim.api.nvim_exec2("!yes y | latexdiff-vc --git -r " .. file_name, {})
--   end,
-- })
