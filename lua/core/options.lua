vim.opt.termguicolors = true
-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

vim.opt.number = true
vim.wo.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

vim.g.clipboard = {
    name = 'unnamedplus',
    copy = {
        ["+"] = "xclip -i -selection clipboard",
        ["*"] = "xclip -i -selection clipboard",
    },
    paste = {
        ["+"] = "xclip -o -selection clipboard",
        ["*"] = "xclip -o -selection clipboard",
    },
}

vim.opt.undofile = true         -- Enables persistent undo
vim.opt.undodir = vim.fn.stdpath("data") .. "/undo"  -- Set a directory for undo files
