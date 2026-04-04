return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		vim.o.background = "dark"
		vim.cmd.colorscheme("catppuccin-nvim")
	end,
}
