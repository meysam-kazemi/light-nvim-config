-- ~/.config/nvim/after/plugin/nvim-tree.lua
local api = require("nvim-tree.api")

vim.keymap.set("n", "<leader>e", function()
  api.tree.toggle({ find_file = true, focus = true })
end, { desc = "Toggle file explorer (left)" })

-- Auto-open on startup (optional)
-- vim.api.nvim_create_autocmd("VimEnter", {
--   callback = function() api.tree.open() end
-- })
