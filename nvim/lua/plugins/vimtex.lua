return {
  {
    "lervag/vimtex",
    lazy = false, -- we don't want to lazy load VimTeX
    init = function()
      vim.g.vimtex_view_method = "texshop"
      vim.g.vimtex_compiler_latexmk = {
        out_dir = "build",
      }
    end,
  },
  {
    "andymass/vim-matchup",
  },
}
