return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",

  config = function()
    require("nvim-treesitter").setup({
      ensure_installed = { "cpp", "lua", "python", "cuda" },

      auto_install = true,
    })
  end,
}
