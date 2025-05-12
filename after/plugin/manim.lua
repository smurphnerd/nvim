local function find_class_name()
	-- Get current cursor position
	local cur_line = vim.fn.line(".")
	local lines = vim.api.nvim_buf_get_lines(0, 0, cur_line, false)

	-- Search backwards from current line to find class definition
	for i = #lines, 1, -1 do
		local line = lines[i]
		local class_match = line:match("^class%s+(%w+).*:")
		if class_match then
			return class_match
		end
	end
	return nil
end

local function manim_end_scene()
	local cmd = string.format('tmux send-keys -t 1 "exit" Enter')
	vim.fn.system(cmd)
end

local function manim_run_scene()
	local line = vim.fn.line(".")
	local file = vim.fn.expand("%:p")
	local scene = find_class_name()

	if scene then
		-- Run manim with PYGAME_HIDE_SUPPORT_PROMPT to reduce noise
		local cmd = string.format("PYGAME_HIDE_SUPPORT_PROMPT=1 manimgl %s %s -se %s", file, scene, line)
		vim.fn.system(string.format('tmux send-keys -t 1 "%s" Enter', cmd))
	else
		print("No scene class found")
	end
end

-- local cmd = string.format("manimgl %s %s -se %s", file, scene, line)
-- vim.fn.system(string.format('tmux send-keys -t 1 "%s" Enter', cmd))

local function manim_checkpoint_paste()
	local visual_selection = vim.fn.getreg('"')
	vim.fn.setreg("+", visual_selection)
	vim.fn.system('tmux send-keys -t 1 "checkpoint_paste()" Enter')
end

local function manim_recorded_checkpoint_paste()
	local visual_selection = vim.fn.getreg('"')
	vim.fn.setreg("+", visual_selection)
	vim.fn.system('tmux send-keys -t 1 "checkpoint_paste(record=True)" Enter')
end

local function manim_skipped_checkpoint_paste()
	local visual_selection = vim.fn.getreg('"')
	vim.fn.setreg("+", visual_selection)
	vim.fn.system('tmux send-keys -t 1 "checkpoint_paste(skip=True)" Enter')
end

-- Keymaps
vim.keymap.set("n", "<Leader>mr", manim_run_scene, { desc = "Manim Run Scene" })
vim.keymap.set("n", "<Leader>mc", manim_checkpoint_paste, { desc = "Manim Checkpoint Paste" })
vim.keymap.set("n", "<Leader>mR", manim_recorded_checkpoint_paste, { desc = "Manim Recorded Checkpoint" })
vim.keymap.set("n", "<Leader>ms", manim_skipped_checkpoint_paste, { desc = "Manim Skip Checkpoint" })
vim.keymap.set("n", "<Leader>me", manim_end_scene, { desc = "Manim End Scene" })

vim.keymap.set("v", "<Leader>mc", manim_checkpoint_paste, { desc = "Manim Checkpoint Paste" })
vim.keymap.set("v", "<Leader>mR", manim_recorded_checkpoint_paste, { desc = "Manim Recorded Checkpoint" })
vim.keymap.set("v", "<Leader>ms", manim_skipped_checkpoint_paste, { desc = "Manim Skip Checkpoint" })
