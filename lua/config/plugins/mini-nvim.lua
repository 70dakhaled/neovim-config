return {
	{
		"nvim-mini/mini.nvim",
		enabled = true,
		version = false,
		config = function()
			require("mini.statusline").setup({ use_icons = true })
			require("mini.basics").setup({ extra_ui = true })
			require("mini.icons").setup()

			--- separate "plugin" for global config (optional but clean)---
			vim.diagnostic.config({
				virtual_text = true,
				signs = true,
				underline = true,
				update_in_insert = false,
				severity_sort = true,
			})
		end,
	},
}
