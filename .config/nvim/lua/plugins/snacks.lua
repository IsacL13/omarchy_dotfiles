return {
	"folke/snacks.nvim",
	opts = {
		scroll = {
			enabled = false, -- Disable scrolling animations
		},
		terminal = {
			enabled = true,
			win = {
				style = "terminal",
				border = "rounded",
				height = 0.8,
				width = 0.8,
			},
		},
		picker = {
			win = {
				input = {
					keys = {
						["<Tab>"] = { "list_down", mode = { "i", "n" } },
						["<S-Tab>"] = { "list_up", mode = { "i", "n" } },
						["<Space>"] = { "select", mode = { "i", "n" } },
					},
				},
			},
		},
	},
}
