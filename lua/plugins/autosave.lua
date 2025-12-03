return {
	"Pocco81/auto-save.nvim",
	lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000,
	config = function()
		require("auto-save").setup {}
	end,
}
