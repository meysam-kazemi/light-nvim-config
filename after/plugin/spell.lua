-- ~/.config/nvim/after/plugin/spell.lua
vim.keymap.set("n", "<leader>s", function()
  vim.cmd("set spell!")
  print("Spell check: " .. (vim.wo.spell and "ON" or "OFF"))
end, { desc = "Toggle spell check" })

-- Use ]s / [s to jump errors, z= for suggestions
