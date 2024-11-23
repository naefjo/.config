return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {
          cmd = { "clangd" },
          mason = false,
        },
      },
    },
  },
}
