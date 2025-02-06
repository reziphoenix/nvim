return {
  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    config = function()
      local bufferline = require("bufferline")

      bufferline.setup({
        options = {
          diagnostics = "nvim_lsp",
          diagnostics_update_on_insert = true,
          diagnostics_indicator = function(count, level, diagnostics_dict, context)
            return "(" .. count .. ")"
          end,
          show_buffer_icons = true, -- Show filetype icons for buffers
		  separator_style = "slant", -- "slant" | "slope" | "thick" | "thin" | { 'any', 'any' },
            indicator = {
                style = 'underline',
						},
		  offsets = {
                {
                    filetype = "NvimTree",
                    text = "File Explorer" ,
                    text_align = "center",
                    separator = true,
				}
		            }
        },
      })

      -- Keymaps
	local opts = { noremap = true, silent = true }
	vim.keymap.set('n', '<leader>b', '<nop>', { desc = "Buffer" })
	vim.keymap.set("n", "<leader>bj", "<cmd>BufferLinePick<cr>", opts) -- Jump to a buffer
	vim.keymap.set("n", "<leader>bf", "<cmd>Telescope buffers previewer=false<cr>", opts) -- Find buffer
	vim.keymap.set("n", "<leader>bb", "<cmd>BufferLineCyclePrev<cr>", opts) -- Previous buffer
	vim.keymap.set("n", "<leader>bn", "<cmd>BufferLineCycleNext<cr>", opts) -- Next buffer
	vim.keymap.set("n", "<leader>BW", "<cmd>noautocmd w<cr>", opts) -- Save without formatting (noautocmd)
	vim.keymap.set("n", "<leader>be", "<cmd>BufferLinePickClose<cr>", opts) -- Pick buffer to close
	vim.keymap.set("n", "<leader>bh", "<cmd>BufferLineCloseLeft<cr>", opts) -- Close all buffers to the left
	vim.keymap.set("n", "<leader>bl", "<cmd>BufferLineCloseRight<cr>", opts) -- Close all buffers to the right
	vim.keymap.set("n", "<leader>bD", "<cmd>BufferLineSortByDirectory<cr>", opts) -- Sort buffers by directory
	vim.keymap.set("n", "<leader>bL", "<cmd>BufferLineSortByExtension<cr>", opts) -- Sort buffers by file type (language)
    end,
  },
}

