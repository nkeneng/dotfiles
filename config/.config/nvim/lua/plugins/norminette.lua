return {
  {
    "hardyrafael17/norminette42.nvim",
    lazy = false,
    opts = {
      runOnSave = true,
      maxErrorsToShow = 5,
      active = true,
    },
  },
  {
    "pandark/42header.vim",
	lazy = false,
    keys = {
      {
        "<leader>^",
        "<cmd>FortyTwoHeader<cr>",
        desc = "Adds 42 Header",
      },
    },
  },
}
