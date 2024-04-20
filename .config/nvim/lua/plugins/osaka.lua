return {
  {
    "vermdeep/darcula_dark.nvim",
    lazy = false,
    priority = 1002,
    config = function(_, opts)
      -- enable colorscheme
      vim.cmd("set termguicolors")
      vim.cmd([[colorscheme darcula_dark]])
    end,
  },
  {
    "rktjmp/lush.nvim",
    lazy = false,
    priority = 1000,
    dependencies = {
      "vermdeep/darcula_dark.nvim",
    },
  },
}
