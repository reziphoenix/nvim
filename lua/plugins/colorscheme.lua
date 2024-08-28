return {
    'folke/tokyonight.nvim',
    config = function()
		  vim.cmd[[colorscheme tokyonight]]
        require('tokyonight').setup({
            disable_background = true
        })
    end
}
