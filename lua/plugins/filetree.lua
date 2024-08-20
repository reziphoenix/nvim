return {
	"nvim-tree/nvim-tree.lua",
	config = function()
		require("nvim-tree").setup({
		  view = {
		    width = 30,
		  },
		  renderer = {
		    group_empty = true,
		  },
		  filters = {
		    dotfiles = true,
		  },
		})
	end,
}
