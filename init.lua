-- ~/.config/nvim/init.lua
vim.g.mapleader = " "

require("plugins")

-- Basic options
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = "a"
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.wrap = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.termguicolors = true
vim.opt.splitright = true
vim.opt.splitbelow = true
-- vim.g.clipboard = {
--   name = "OSC52",
--   copy = {
--     ["+"] = require("vim.ui.clipboard.osc52").copy("+"),
--     ["*"] = require("vim.ui.clipboard.osc52").copy("*"),
--   },
--   paste = {
--     ["+"] = require("vim.ui.clipboard.osc52").paste("+"),
--     ["*"] = require("vim.ui.clipboard.osc52").paste("*"),
--   },
--   cache_enabled = 1,
-- }

-- OSC52 clipboard that works on minimal Neovim builds
local function copy(lines, _)
  require('osc52').copy(table.concat(lines, '\n'))
end

local function paste()
  return { vim.fn.getreg('+'), vim.fn.getregtype('+') }
end

-- OSC52 clipboard – 100% working on minimal Neovim + lazy.nvim in 2025
vim.g.clipboard = {
  name = "osc52",
  copy = {
    ["+"] = require("osc52").copy,
    ["*"] = require("osc52").copy,
  },
  paste = {
    ["+"] = require("osc52").paste,
    ["*"] = require("osc52").paste,
  },
  cache_enabled = true,
}

-- Auto-copy every yank to system clipboard over SSH (fixed version)
vim.api.nvim_create_autocmd("TextYankPost", {
  group = vim.api.nvim_create_augroup("osc52", { clear = true }),
  callback = function()
    local lines = vim.v.event.regcontents
    if type(lines) == "table" then
      lines = table.concat(lines, "\n")
    end
    require("osc52").copy(lines)
  end,
})

vim.cmd[[colorscheme tokyonight-moon]]
-- vim.opt.background = "light"
-- vim.api.nvim_set_hl(50, "Normal", { bg = "none" })   -- transparent bg (optional)
