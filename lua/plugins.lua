local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git", lazypath
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  { "folke/tokyonight.nvim", lazy = false, priority = 1000, opts = {} },
  -------------------------------------------------
  -- 1. Left file tree
  { "nvim-tree/nvim-tree.lua", keys = "<leader>e", config = true },

  -- 2. Auto-close ( [ { " '
  { "windwp/nvim-autopairs", event = "InsertEnter", config = true },

  { "akinsho/bufferline.nvim", dependencies = "nvim-tree/nvim-web-devicons" },
  
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",          -- important in 2025
    dependencies = {
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" }, -- optional but recommended
    },
    config = function()
      require("telescope").setup{}
      -- optional: load fzf extension if you want it faster
      pcall(require("telescope").load_extension, "fzf_native")
    end,
  },
})
