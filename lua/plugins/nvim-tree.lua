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
    keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" }) -- toggle file explorer on current file
    keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer
    keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) -- refresh file explorer
	end,
}
