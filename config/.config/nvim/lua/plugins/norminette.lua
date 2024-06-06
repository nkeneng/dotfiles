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
	"pbondoer/vim-42header",
	   keys = {
	     {
	       "<leader>^",
	       "<cmd>Stdheader<cr>",
	       desc = "Adds 42 Header",
	     },
	   },
	 },
}
