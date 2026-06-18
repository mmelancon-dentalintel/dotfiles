return {
  {
    "michaelmelancon/snacks-compact-paths",
    dependencies = { "folke/snacks.nvim" },
    config = function()
      require("snacks-compact-paths").setup({
        min_path_length = 4, -- Minimum path length to trigger compaction
        preserve_dirs = { -- Directories to never compact
          "src",
          "lib",
          "include",
          "test",
          "tests",
          "java",
        },
        acronym_style = "first", -- "first" or "vowels" for acronym generation
        enabled = true, -- Enable/disable the plugin
      })
    end,
  },
}
