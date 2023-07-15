local setup, rest = pcall(require, "rest-nvim")
if not setup then
	return
end

rest.setup({
	result_split_horizontal = false,
	skip_ssl_verification = false,
	encode_url = true,
	highlight = {
		enabled = true,
		timeout = 150,
	},
	result = {
		show_url = true,
		show_curl_command = true,
		show_http_info = true,
		show_headers = true,
		formatters = {
			json = "jq",
		},
	},
})

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

keymap("n", "<leader>rs", ":lua require('rest-nvim').run()<CR>", opts)
keymap("n", "<leader>rsl", ":lua require('rest-nvim').last()<CR>", opts)
