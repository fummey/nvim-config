return {

	-- Comments
	{ "numToStr/Comment.nvim", event = { "BufReadPost", "BufNewFile" }, opts = {} },

	-- Auto Pairs
	{
		"altermo/ultimate-autopair.nvim",
		event = { "InsertEnter", "CmdlineEnter" },
		branch = "v0.6",
		opts = {},
	},

	-- Auto-closing tags for HTML/XML
	{ "windwp/nvim-ts-autotag", event = "InsertEnter", opts = {} },

	-- Surround
	{
		"nvim-mini/mini.surround",
		version = "*",
		event = { "BufReadPost", "BufNewFile" },
		opts = {},
	},

	-- Color picker
	{
		"uga-rosa/ccc.nvim",
		cmd = "CccPick",
		keys = {
			{ "<M-c>", "<cmd>CccPick<cr>", mode = "n", desc = "Color picker" },
		},
		config = function()
			local ccc = require("ccc")

			ccc.setup({
				bar_len = 45,
				preserve = true,
				inputs = {
					ccc.input.rgb,
					ccc.input.hsl,
					ccc.input.cmyk,
					ccc.input.lab,
					ccc.input.lch,
					ccc.input.oklab,
					ccc.input.oklch,
				},
				outputs = {
					ccc.output.hex,
					ccc.output.hex_short,
					ccc.output.css_rgb,
					ccc.output.css_hsl,
					ccc.output.css_hwb,
					ccc.output.css_lab,
					ccc.output.css_lch,
					ccc.output.css_oklab,
					ccc.output.css_oklch,
				},
				pickers = {
					ccc.picker.hex,
					ccc.picker.css_rgb,
					ccc.picker.css_hsl,
					ccc.picker.css_hwb,
					ccc.picker.css_lab,
					ccc.picker.css_lch,
					ccc.picker.css_oklab,
					ccc.picker.css_oklch,
					ccc.picker.css_name,
				},
			})
		end,
	},

	-- Indent
	{
		"nmac427/guess-indent.nvim",
		event = { "BufReadPost", "BufNewFile" },
		opts = {
			auto_cmd = true,
			override_editorconfig = false,
		},
	},

	-- Emmet abbreviation
	{
		"olrtg/nvim-emmet",
		keys = {
			{
				"<leader>xe",
				'<cmd>lua require("nvim-emmet").wrap_with_abbreviation()<cr>',
				mode = { "n", "v" },
				desc = "Emmet abbreviations",
			},
		},
	},
}
