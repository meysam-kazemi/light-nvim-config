local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git", lazypath
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate", opts = {
    ensure_installed = { "python" },
    highlight = { enable = true },
    indent = { enable = true },
  }},
  
  { "folke/tokyonight.nvim", lazy = false, priority = 1000, opts = {} },
  -------------------------------------------------
  -- 1. Left file tree
  { "nvim-tree/nvim-tree.lua", keys = "<leader>e", config = true },

  -- 2. Auto-close ( [ { " '
  { "windwp/nvim-autopairs", event = "InsertEnter", config = true },

  -- 3. Spell check
  { "lewis6991/spellsitter.nvim", config = true },

  -- 4. Fuzzy finder
  -- { "nvim-telescope/telescope.nvim", dependencies = "nvim-lua/plenary.nvim" },

  -------------------------------------------------
  -- 5. COMMENT PLUGIN (Ctrl+/ or Cmd+/)
  { "echasnovski/mini.comment", config = true },

  -- 6. Smart # // -- detection
  { "JoosepAlviste/nvim-ts-context-commentstring", lazy = true },

  -- 7. Treesitter (syntax + smart comments)
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup{
        ensure_installed = { "python", "lua", "bash", "markdown" },
        highlight = { enable = true },
      }
    end
  },
  
  { "akinsho/bufferline.nvim", dependencies = "nvim-tree/nvim-web-devicons", config = true },
  
  { "ojroques/nvim-osc52", config = true },

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
