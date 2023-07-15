local status, dap = pcall(require, "dap-go")
if not status then
	return
end

dap.setup({
	dap_configurations = {
		{
			type = "go",
			name = "Debug iLearn API",
			request = "launch",
			program = vim.fn.getcwd() .. "/cmd/api/main.go",
			cwd = vim.fn.getcwd() .. "/cmd/api",
		},
	},
	delve = {
		-- the path to the executable dlv which will be used for debugging.
		-- by default, this is the "dlv" executable on your PATH.
		path = "dlv",
		-- time to wait for delve to initialize the debug session.
		-- default to 20 seconds
		initialize_timeout_sec = 20,
		-- a string that defines the port to start delve debugger.
		-- default to string "${port}" which instructs nvim-dap
		-- to start the process in a random available port
		port = "${port}",
		-- additional args to pass to dlv
		args = {},
	},
})
