local function get_cwd()
  -- This gets the last part of the path (the folder name)
  return " " .. vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
end

return {
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      sections = {
        lualine_a = { "mode" },
        lualine_b = { {
          get_cwd,
          color = { gui = "bold" },
        }, "filename" },

        lualine_c = { "branch", "diff", "diagnostics" },
        lualine_x = { "encoding", "fileformat", "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
    },
  },
}
