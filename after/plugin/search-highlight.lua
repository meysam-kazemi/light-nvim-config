-- Make EVERY search match glow with a soft blue background
vim.api.nvim_create_autocmd("CmdlineEnter", {
  pattern = "[/\\?]",
  callback = function()
    vim.api.nvim_set_hl(0, "Search", { bg = "#5c7aea", fg = "#ffffff", bold = true })
    vim.api.nvim_set_hl(0, "IncSearch", { bg = "#ff6e6e", fg = "#000000", bold = true })
  end,
})
