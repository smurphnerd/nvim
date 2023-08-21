vim.g.mapleader = " "

-- general keymaps
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

vim.keymap.set("n", "x", '"_x')

vim.keymap.set("n", "<C-Up>", ":resize +2<CR>") -- increase window height
vim.keymap.set("n", "<C-Down>", ":resize -2<CR>") -- decrease window height
vim.keymap.set("n", "<C-Left>", ":vertical resize +2<CR>") -- increase window width
vim.keymap.set("n", "<C-Right>", ":vertical resize -2<CR>") -- decrease window width

-- plugin keymaps

-- vim-maximizer
vim.keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- telescope
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>")
vim.keymap.set("n", "<leader>fg", ":Telescope git_files<CR>")
vim.keymap.set("n", "<leader>fs", ":Telescope live_grep<CR>")
vim.keymap.set("n", "<leader>fc", ":Telescope grep_string<CR>")
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>")
vim.keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>")
vim.keymap.set("n", "<leader>fd", ":Telescope diagnostics<CR>")
vim.keymap.set(
	"n",
	"<leader>fw",
	"<cmd>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>",
	{ noremap = true, silent = true }
)
vim.keymap.set(
	"n",
	"<leader>fW",
	"<cmd>lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>",
	{ noremap = true, silent = true }
)
