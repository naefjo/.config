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
        program = "lualatex",
        options = {
          "-pdflua",
          "-verbose",
          "-file-line-error",
          "-synctex=1",
          "-interaction=nonstopmode",
        },
      }
    end,
  },
  {
    "andymass/vim-matchup",
  },
}
