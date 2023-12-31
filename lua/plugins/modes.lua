return {
	"mvllow/modes.nvim",
	dependencies = {
		"RRethy/nvim-base16",
	},
	tag = "v0.2.0",
	config = function()
		require("modes").setup({
			colors = {
				copy = "#C1C1C1",
				delete = "#E78A52",
				visual = "#FBCB96",
				insert = "#5F8787",
			},
		})
	end,
}
