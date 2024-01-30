return {
	{
		{
			"nvim-treesitter/nvim-treesitter",
			build = ":TSUpdate",
			event = { "BufReadPre", "BufNewFile" },
			dependencies = {
				"nvim-treesitter/nvim-treesitter-textobjects",
			},
			config = function()
				local treesitter = require("nvim-treesitter.configs")

				-- configure treesitter
				treesitter.setup({ -- enable syntax highlighting
					highlight = {
						enable = true,
					},
					auto_install = true,

					-- enable indentation
					indent = { enable = true },
					-- ensure these language parsers are installed
					ensure_installed = {
						"json",
						"javascript",
						"typescript",
						"tsx",
						"yaml",
						"html",
						"css",
						"prisma",
						"markdown",
						"markdown_inline",
						"svelte",
						"graphql",
						"bash",
						"lua",
						"vim",
						"dockerfile",
						"gitignore",
						"query",
					},
					incremental_selection = {
						enable = true,
						keymaps = {
							init_selection = "<C-space>",
							node_incremental = "<C-space>",
							scope_incremental = false,
							node_decremental = "<bs>",
						},
					},
				})
			end,
		},
		{
			"windwp/nvim-ts-autotag",
			opts = {},
		},
	},
	{
		"nvim-treesitter/nvim-treesitter-textobjects",
		lazy = true,
		config = function()
			require("nvim-treesitter.configs").setup({
				textobjects = {
					select = {
						enable = true,

						-- automatically jump forward to textobj, similar to targets.vim
						lookahead = true,

						keymaps = {
							-- you can use the capture groups defined in textobjects.scm
							["a="] = { query = "@assignment.outer", desc = "select outer part of an assignment" },
							["i="] = { query = "@assignment.inner", desc = "select inner part of an assignment" },
							["l="] = { query = "@assignment.lhs", desc = "select left hand side of an assignment" },
							["r="] = { query = "@assignment.rhs", desc = "select right hand side of an assignment" },

							["aa"] = { query = "@parameter.outer", desc = "select outer part of a parameter/argument" },
							["ia"] = { query = "@parameter.inner", desc = "select inner part of a parameter/argument" },

							["ai"] = { query = "@conditional.outer", desc = "select outer part of a conditional" },
							["ii"] = { query = "@conditional.inner", desc = "select inner part of a conditional" },

							["al"] = { query = "@loop.outer", desc = "select outer part of a loop" },
							["il"] = { query = "@loop.inner", desc = "select inner part of a loop" },

							["af"] = { query = "@call.outer", desc = "select outer part of a function call" },
							["if"] = { query = "@call.inner", desc = "select inner part of a function call" },

							["am"] = {
								query = "@function.outer",
								desc = "select outer part of a method/function definition",
							},
							["im"] = {
								query = "@function.inner",
								desc = "select inner part of a method/function definition",
							},

							["ac"] = { query = "@class.outer", desc = "select outer part of a class" },
							["ic"] = { query = "@class.inner", desc = "select inner part of a class" },
						},
					},
				},
			})
		end,
	},
}
