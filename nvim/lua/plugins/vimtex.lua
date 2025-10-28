return {
  {
    "lervag/vimtex",
    lazy = false, -- we don't want to lazy load VimTeX
    init = function()
      if vim.fn.executable("texshop") == 1 then
        vim.g.vimtex_view_method = "texshop"
      else
        vim.g.vimtex_view_method = "general"
      end
      vim.g.vimtex_compiler_latexmk = {
        out_dir = "build",
      }
    end,
  },
  {
    "andymass/vim-matchup",
  },
}
