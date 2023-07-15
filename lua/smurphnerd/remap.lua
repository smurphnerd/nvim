vim.g.mapleader = " "

-- general keymaps
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

vim.keymap.set("n", "x", '"_x')

vim.keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
vim.keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

vim.keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
vim.keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
vim.keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab

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
