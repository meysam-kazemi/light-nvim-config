require('bufferline').setup{
  options = {
    diagnostics = "nvim_lsp",
    offsets = {{filetype = "NvimTree", text = "Files", highlight = "Directory"}},
    separator_style = "thin",
  },
}

-- ←←← NEW: give gt and gT back!
vim.keymap.set('n', 'gt',   '<Cmd>BufferLineCycleNext<CR>', {desc = "Next buffer"})
vim.keymap.set('n', 'gT',   '<Cmd>BufferLineCyclePrev<CR>', {desc = "Prev buffer"})

