return {
    "benlubas/molten-nvim",
    version = "^1.0.0", -- use version <2.0.0 to avoid breaking changes
    dependencies = { "3rd/image.nvim" },
    build = ":UpdateRemotePlugins",
    init = function()
        vim.g.molten_output_win_max_height = 20
        vim.g.molten_auto_open_output = false
        vim.g.molten_image_provider = "image.nvim"
        vim.g.molten_wrap_output = true
        vim.g.molten_virt_text_output = true
        vim.g.molten_virt_lines_off_by_1 = true
        vim.g.molten_enter_output_behavior = "open_and_enter"
    end,
    keys = {
      { "<localleader>mi", ":MoltenInit<CR>",              mode = "n", desc = "Initialize the plugin" },
      { "<localleader>e",  ":MoltenEvaluateOperator<CR>",  mode = "n", desc = "Run operator selection" },
      { "<localleader>rl", ":MoltenEvaluateLine<CR>",      mode = "n", desc = "Evaluate line" },
      { "<localleader>rr", ":MoltenReevaluateCell<CR>",    mode = "n", desc = "Re-evaluate cell" },
      { "<localleader>ri", ":MoltenInterrupt<CR>",         mode = "n", desc = "Interrupt cell" },
      { "<localleader>r",  ":<C-u>MoltenEvaluateVisual<CR>gv", mode = "v", desc = "Evaluate visual selection" },
      { "<localleader>os", ":noautocmd MoltenEnterOutput<CR>", mode = "n", desc = "Open output window" },
      { "<localleader>oh", ":MoltenHideOutput<CR>",            mode = "n", desc = "Close output window" },
      { "<localleader>md", ":MoltenDelete<CR>",                mode = "n", desc = "Delete Molten cell" },
      { "<localleader>mx", ":MoltenOpenInBrowser<CR>",         mode = "n", desc = "Open output in browser" },
    },
}
