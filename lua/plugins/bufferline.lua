return {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    opts = {
      options = {
        diagnostics = "nvim_lsp",
        diagnostics_update_on_insert = true,
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
          return "(" .. count .. ")"
        end,
        show_buffer_icons = true,
        separator_style = "slant", -- "slant" | "slope" | "thick" | "thin" |
        indicator = { style = "underline" },
        offsets = {
          {
            filetype = "NvimTree",
            text = "File Explorer",
            text_align = "center",
            separator = true,
          },
        },
      },
    },
    config = function(_, opts)
      require("bufferline").setup(opts) -- Uses opts from Lazy.nvim

      local keymap = vim.keymap.set
	  opts = { noremap = true, silent = true }

      keymap("n", "<leader>b", "<nop>", { desc = "Buffer" })
      keymap("n", "<leader>bj", "<cmd>BufferLinePick<cr>", { desc = "Jump to buffer", unpack(opts) })
      keymap("n", "<leader>bf", "<cmd>Telescope buffers previewer=false<cr>", { desc = "Find buffer", unpack(opts) })
      keymap("n", "<leader>bb", "<cmd>BufferLineCyclePrev<cr>", { desc = "Previous buffer", unpack(opts) })
      keymap("n", "<leader>bn", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer", unpack(opts) })
      keymap("n", "<leader>BW", "<cmd>noautocmd w<cr>", { desc = "Save without formatting", unpack(opts) })
      keymap("n", "<leader>be", "<cmd>BufferLinePickClose<cr>", { desc = "Close picked buffer", unpack(opts) })
      keymap("n", "<leader>bh", "<cmd>BufferLineCloseLeft<cr>", { desc = "Close buffers to the left", unpack(opts) })
      keymap("n", "<leader>bl", "<cmd>BufferLineCloseRight<cr>", { desc = "Close buffers to the right", unpack(opts) })
      keymap("n", "<leader>bD", "<cmd>BufferLineSortByDirectory<cr>", { desc = "Sort buffers by directory", unpack(opts) })
      keymap("n", "<leader>bL", "<cmd>BufferLineSortByExtension<cr>", { desc = "Sort buffers by file type", unpack(opts) })
    end,
}

