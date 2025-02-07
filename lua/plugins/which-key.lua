return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		icons = {
			mappings = false,
		},
		defaults = {
			["<leader>e"] = { name = "+test" },
		},
		-- your configuration comes here
		-- or leave it empty to use the default settings
	},
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer Local Keymaps (which-key)",
		},
		mode = { "n", "v" }, -- NORMAL and VISUAL mode
		{ "<leader>q", "<cmd>q<cr>", desc = "Quit" }, -- no need to specify mode since it's inherited
		{ "<leader>w", "<cmd>w<cr>", desc = "Write" },
	},
}
