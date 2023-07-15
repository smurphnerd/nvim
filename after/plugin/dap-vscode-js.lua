local status, dap_vscode_js = pcall(require, "dap-vscode-js")
if not status then
	return
end

dap_vscode_js.setup({
	-- node_path = "node", -- Path of node executable. Defaults to $NODE_PATH, and then "node"
	-- debugger_path = vim.fn.stdpath("data") .. "/site/pack/packer/opt/", -- Path to vscode-js-debug installation.
	-- debugger_cmd = { "extension" }, -- Command to use to launch the debug server. Takes precedence over `node_path` and `debugger_path`.
	adapters = {
		"pwa-node",
		"pwa-chrome",
		"pwa-msedge",
		"node-terminal",
		"pwa-extensionHost",
	}, -- which adapters to register in nvim-dap
	-- log_file_path = "(stdpath cache)/dap_vscode_js.log" -- Path for file logging
	-- log_file_level = false -- Logging level for output to file. Set to false to disable file logging.
	-- log_console_level = vim.log.levels.ERROR -- Logging level for output to console. Set to false to disable console output.
})

local js_based_languages = { "typescript", "javascript", "javascriptreact", "typescriptreact" }

for _, lang in ipairs(js_based_languages) do
	require("dap").configurations[lang] = {
		{
			type = "pwa-node",
			request = "launch",
			name = "Launch file",
			program = "${file}",
			cwd = vim.fn.getcwd(),
		},
		{
			type = "pwa-chrome",
			request = "launch",
			name = "Launch Chrome",
			url = "http://localhost:3000",
			webRoot = vim.fn.getcwd(),
			userDataDir = vim.fn.stdpath("cache") .. "/chrome",
		},
		{
			type = "pwa-chrome",
			request = "attach",
			name = "Attach to Chrome",
			url = "http://localhost:3000",
			webRoot = vim.fn.getcwd() .. "/out",
			port = 9222,
		},
		{
			type = "pwa-msedge",
			request = "launch",
			name = "Launch Edge",
			url = "http://localhost:3000",
			webRoot = vim.fn.getcwd(),
			userDataDir = vim.fn.stdpath("cache") .. "/edge",
		},
	}
end
