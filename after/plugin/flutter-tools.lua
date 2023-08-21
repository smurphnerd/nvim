require("flutter-tools").setup({
	-- debugger = {
	-- 	enabled = true,
	-- 	run_via_dap = true,
	-- },
	lsp = {
		settings = {
			renameFilesWithClasses = "always",
		},
	},
})

require("flutter-tools").setup_project({
	{
		name = "Beta Flavor",
		flavor = "beta",
		target = "lib/main_beta.dart",
	},
	{
		name = "Default",
	},
})

vim.keymap.set("n", "<leader>FC", ":FlutterCopyProfilerUrl<CR>")
vim.keymap.set("n", "<leader>Fd", ":FlutterDevTools<CR>")
vim.keymap.set("n", "<leader>FD", ":FlutterDevices<CR>")
vim.keymap.set("n", "<leader>FE", ":FlutterEmulators<CR>")
vim.keymap.set("n", "<leader>FQ", ":FlutterQuit<CR>")
vim.keymap.set("n", "<leader>rn", ":FlutterRename<CR>")
vim.keymap.set("n", "<leader>FR", ":FlutterRestart<CR>")
vim.keymap.set("n", "<leader>Fr", ":FlutterRun<CR>")
