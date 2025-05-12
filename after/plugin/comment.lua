local setup, comment = pcall(require, "Comment")
if not setup then
	return
end

-- Basic setup
comment.setup()

-- Add MiniZinc comment configuration
local ft = require("Comment.ft")
ft.set("minizinc", "%%s")
