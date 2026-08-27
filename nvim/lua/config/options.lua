-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#51B3EC", bold = true })
-- vim.api.nvim_set_hl(0, "LineNr", { fg = "white", bold = true })
-- vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#FB508F", bold = true })

-- disbale automatic root detection (annoying if workspace contains a lot of different packages)
vim.g.root_spec = { "cwd", "lsp", { ".git", "lua" } }

vim.opt.scrolloff = 10

vim.opt.colorcolumn = "120"

vim.filetype.add({
  extension = {
    launch = "xml",
    urdf = "xml",
  },
})

vim.lsp.enable("ty")
