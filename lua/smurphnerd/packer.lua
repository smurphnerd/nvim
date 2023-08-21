return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use("nvim-lua/plenary.nvim")

	-- navigation
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- dependency for better sorting performance
	use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" })

	-- treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	})
	use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- autoclose tags
	use("nvim-treesitter/nvim-treesitter-context")

	-- appearance
	use({
		"rose-pine/neovim",
		as = "rose-pine",
		config = function()
			vim.cmd("colorscheme rose-pine")
		end,
	})
	use("xiyaowong/transparent.nvim")
	use("nvim-lualine/lualine.nvim")

	-- utils
	use("christoomey/vim-tmux-navigator")
	use("szw/vim-maximizer")
	use("tpope/vim-surround")
	use("vim-scripts/ReplaceWithRegister") -- replace with register contents using motion (gr + motion)
	use("numToStr/Comment.nvim")
	use("mbbill/undotree")

	-- git
	use("tpope/vim-fugitive")
	use("ThePrimeagen/git-worktree.nvim")

	-- formatting & linting
	use("jose-elias-alvarez/null-ls.nvim")
	use("jayp0521/mason-null-ls.nvim")
	use("windwp/nvim-autopairs") -- autoclose parens, brackets, quotes, etc...
	use("lewis6991/gitsigns.nvim")
	use("github/copilot.vim")

	-- dap
	use("mfussenegger/nvim-dap")
	use("rcarriga/nvim-dap-ui")
	use("theHamsta/nvim-dap-virtual-text")
	use("leoluz/nvim-dap-go") -- dap for go
	use("mxsdev/nvim-dap-vscode-js") -- dap for javascript
	use({
		"microsoft/vscode-js-debug",
		opt = true,
		run = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out",
	})
	use({
		"akinsho/flutter-tools.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
			"stevearc/dressing.nvim",
		},
	})

	-- markdown preview
	use("iamcco/markdown-preview.nvim")

	use("rest-nvim/rest.nvim")

	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v1.x",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" },
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "saadparwaiz1/cmp_luasnip" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-nvim-lua" },

			-- Snippets
			{ "L3MON4D3/LuaSnip" },
			{ "rafamadriz/friendly-snippets" },
		},
	})
end)
