return {
  "nvim-tree/nvim-tree.lua",
  event = "VeryLazy",
  config = function()
    require("nvim-tree").setup({
      view = {
        width = 30,
      },
      renderer = {
        group_empty = true,
      },
      actions = {
        open_file = {
          resize_window = true,
          window_picker = {
            enable = false, -- Ensures files open in the correct tab instead of a split
          },
        },
      },
    })

    -- Automatically close NvimTree when a file is opened
    vim.api.nvim_create_autocmd("BufEnter", {
      nested = true,
      callback = function()
        if vim.bo.filetype == "NvimTree" then
          vim.cmd("setlocal bufhidden=wipe")
        end
      end,
    })

    -- Set keymaps
    local keymap = vim.keymap -- for conciseness
    keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- Toggle file explorer

    -- Open files in a new tab when selected from NvimTree
    keymap.set("n", "<CR>", ":lua require('nvim-tree').on_keypress('edit')<CR>:tabedit %<CR>", { noremap = true, silent = true })
  end,
}

