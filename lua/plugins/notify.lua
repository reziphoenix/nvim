return {
	"folke/noice.nvim",
	event = "VeryLazy",
	opts = {
		-- add any options here
	},
	dependencies = {
		"MunifTanjim/nui.nvim",
		"rcarriga/nvim-notify",
	},
	config = function()
		require("notify").setup({
			background_colour = "#000000",
		})

		local noice = require("noice")
		noice.setup({
			lsp = {
				-- override markdown rendering so that **cmp** and other plugins use **Treesitter**
				override = {
					["vim.lsp.util.convert_input_to_markdown_lines"] = true,
					["vim.lsp.util.stylize_markdown"] = true,
					["cmp.entry.get_documentation"] = true,
				},
			},
			-- you can enable a preset for easier configuration
			presets = {
				bottom_search = false, -- use a classic bottom cmdline for search
				command_palette = true, -- position the cmdline and popupmenu together
				long_message_to_split = true, -- long messages will be sent to a split
				inc_rename = false, -- enables an input dialog for inc-rename.nvim
				lsp_doc_border = false, -- add a border to hover docs and signature help
			},
			background_colour = "#000000",
		})

		vim.keymap.set("n", "<leader>nl", function()
			noice.cmd("last")
		end, { desc = "Noice: show last message" })

		vim.keymap.set("n", "<leader>nh", function()
			noice.cmd("history")
		end, { desc = "Noice: show history" })

		vim.keymap.set("n", "<leader>nt", function()
			noice.cmd("telescope")
		end, { desc = "Noice: Telescope" })

		vim.keymap.set("n", "<leader>nd", function()
			noice.cmd("dismiss")
		end, { desc = "Noice: dismiss all messages" })

		require("telescope").load_extension("noice")
	end,
}
