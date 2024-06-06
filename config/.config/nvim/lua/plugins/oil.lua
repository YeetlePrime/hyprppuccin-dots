return {
	"stevearc/oil.nvim",
	opts = {
		view_options = {
			show_hidden = true,
		},
	},
	config = function(_PluginSpec, opts)
		vim.keymap.set("n", "<leader>e", "<cmd>Oil<CR>", { desc = "Open Oil Explorer" })
		require("oil").setup(opts)
	end,
}
