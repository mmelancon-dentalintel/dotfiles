return {
  {
    "rcasia/neotest-java",
    ft = "java",
    dependencies = {
      "mfussenegger/nvim-jdtls",
      "mfussenegger/nvim-dap", -- for the debugger
      "rcarriga/nvim-dap-ui", -- recommended
      "theHamsta/nvim-dap-virtual-text", -- recommended
    },
    keys = {
      {
        "<leader>tt",
        function()
          require("neotest").run.run(vim.fn.expand("%"))
        end,
        desc = "Run test file",
        mode = "n",
      },
      {
        "<leader>tr",
        function()
          require("neotest").run.run()
        end,
        desc = "Run nearest test",
        mode = "n",
      },
      {
        "<leader>tD",
        function()
          require("neotest").run.run({
            strategy = "dap",
            suite = true,
          })
        end,
        desc = "Debug test file",
        mode = "n",
      },
      {
        "<leader>td",
        function()
          require("neotest").run.run({
            vim.fn.expand("%"),
            strategy = "dap",
            suite = true,
          })
        end,
        desc = "Debug nearest test",
        mode = "n",
      },
    },
  },
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    opts = {
      adapters = {
        ["neotest-java"] = {
          {
            junit_jar = nil, -- default: stdpath("data") .. /nvim/neotest-java/junit-platform-console-standalone-[version].jar
            incremental_build = true,
          },
        },
      },
    },
  },
}
