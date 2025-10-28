return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      table.insert(opts.ensure_installed, "usort")
      table.insert(opts.ensure_installed, "black")
      table.insert(opts.ensure_installed, "flake8")
      table.insert(opts.ensure_installed, "hadolint")
      table.insert(opts.ensure_installed, "beautysh")
    end,
  },
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        python = { "usort", "black" },
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
}
