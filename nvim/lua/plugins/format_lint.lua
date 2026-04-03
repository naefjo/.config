return {
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      table.insert(opts.ensure_installed, "ruff")
      table.insert(opts.ensure_installed, "ty")
      table.insert(opts.ensure_installed, "hadolint")
      table.insert(opts.ensure_installed, "beautysh")
    end,
  },
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        python = { "ruff_format", "ruff_organize_imports" },
        dockerfile = { "dockerfmt" },
        yaml = { "yamlfmt", "yamllint" },
        sh = { "beautysh" },
        bash = { "beautysh" },
      },
      formatters = {
        dockerfmt = {
          command = "dockerfmt",
          stdin = true,
        },
      },
    },
  },
  {
    {
      "mfussenegger/nvim-lint",
      config = function()
        require("lint").linters_by_ft = {
          dockerfile = { "hadolint" },
          python = { "ruff" }, -- Note: ty cant be used here as it is alredy used as an lsp
        }
      end,
    },
  },
}
