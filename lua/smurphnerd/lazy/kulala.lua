return {
	"mistweaverco/kulala.nvim",
	ft = { "http", "rest" },
	opts = {
		global_keymaps = false,
		global_keymaps_prefix = "<leader>R",
		kulala_keymaps_prefix = "",
	},
	config = function()
		require("kulala").setup({
			global_keymaps = false,
			global_keymaps_prefix = "<leader>R",
			kulala_keymaps_prefix = "",
		})

		-- Keymaps
		vim.keymap.set("n", "<leader>Rs", function()
			require("kulala").run()
		end, { desc = "Send request" })
		vim.keymap.set("n", "<leader>Ra", function()
			require("kulala").run_all()
		end, { desc = "Send all requests" })
		vim.keymap.set("n", "<leader>Rb", function()
			require("kulala").scratchpad()
		end, { desc = "Open scratchpad" })
	end,
}
