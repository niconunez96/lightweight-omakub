return {
	"ellisonleao/gruvbox.nvim",
	lazy = false,
	name = "gruvbox",
	config = function()
		vim.o.background = "dark"
		vim.cmd.colorscheme("gruvbox")
	end,
}
