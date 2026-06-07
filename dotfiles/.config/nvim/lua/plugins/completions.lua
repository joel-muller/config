return {
	{
		"L3MON4D3/LuaSnip",
		version = "2.*",
	},
	{
		"saghen/blink.cmp",
		version = "1.*",
		opts = {
			keymap = { preset = "default" },
			sources = {
				default = { "lsp", "path", "snippets" },
			},
			snippets = { preset = "luasnip" },
			signature = { enabled = true },
		},
	},
}
