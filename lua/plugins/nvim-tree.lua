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
		})
	
		-- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
	end,
}
