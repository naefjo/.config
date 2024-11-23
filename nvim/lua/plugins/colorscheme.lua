local everforest_settings = {
  background = "soft",
  transparent_background_level = 0,
  italics = true,
  disable_italic_comments = false,
  ui_contrast = "high",
}
return {
  -- {
  --   "Shatur/neovim-ayu",
  --   name = "ayu",
  --   opts = function()
  --     local colors = require("ayu.colors")
  --     colors.generate(true)
  --     return {
  --       overrides = { LineNr = { fg = colors.special } },
  --     }
  --   end,
  -- },
  {
    "neanias/everforest-nvim",
    name = "everforest",
    version = false,
    lazy = false,
    priority = 1000, -- make sure to load this before all the other start plugins
    opts = everforest_settings,
    -- config = function()
    --   require("everforest").setup(everforest_settings)
    -- end,
  },
  {
    "b0o/incline.nvim",
    event = "BufReadPre",
    enabled = true,
    -- Setup Filename label at the top
    config = function()
      local colourscheme = require("everforest")
      colourscheme.setup(everforest_settings)
      local colours = require("everforest.colours").generate_palette(colourscheme.config, "dark")

      require("incline").setup({
        highlight = {
          groups = {
            InclineNormal = { guibg = colours.aqua, guifg = colours.bg0 },
            InclineNormalNC = { guifg = colours.aqua, guibg = colours.bg0 },
          },
        },
        window = { margin = { vertical = 0, horizontal = 1 } },
        render = function(props)
          local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
          local modified = vim.bo[props.buf].modified
          -- local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":.")
          local icon, color = require("nvim-web-devicons").get_icon_color(filename)
          return {
            { icon, guifg = color },
            { "  " },
            { modified and { "M", guifg = colours.grey0, gui = "bold" } or "" },
            { " " },
            { filename },
          }
        end,
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "everforest",
      --colorscheme = "ayu-mirage",
    },
  },
}
