return {
  {
    "folke/snacks.nvim",
    ---@type snacks.Config
    opts = {
      dashboard = {
        enabled = true,
        sections = {
          { section = "header" },
          { section = "keys", gap = 1, padding = 1 },
          { section = "startup" },
          {
            section = "terminal",
            cmd = "pokemon-colorscripts -r --no-title; sleep .1",
            random = 10,
            pane = 2,
            indent = 4,
            height = 30,
          },
        },
      },
      picker = {
        enabled = true,
      },
      image = {
        enabled = true,
      },
      statuscolumn = {
        enabled = true,
      },
      words = {
        enabled = true,
      },
    },
    config = function(_, opts)
      require("snacks").setup(opts)
      -- Configure vim.ui.select to use Snacks.picker.select
      vim.ui.select = Snacks.picker.select
    end,
  },
}
