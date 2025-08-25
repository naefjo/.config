return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      table.insert(opts.ensure_installed, "usort")
      table.insert(opts.ensure_installed, "black")
      table.insert(opts.ensure_installed, "hadolint")
    end,
  },
  {
    "nvimtools/none-ls.nvim",
    optional = true,
    opts = function(_, opts)
      local nls = require("null-ls")
      opts.sources = opts.sources or {}
      table.insert(opts.sources, nls.builtins.formatting.usort)
      table.insert(opts.sources, nls.builtins.formatting.black)
    end,
  },
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        ["python"] = { "usort", "black" },
        ["dockerfile"] = { "dockerfmt" },
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
