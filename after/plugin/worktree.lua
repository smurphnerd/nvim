local setup, worktree = pcall(require, "git-worktree")
if not setup then
	return
end

worktree.setup()
