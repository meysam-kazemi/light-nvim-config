local comment = require('mini.comment')

comment.setup({
  options = {
    custom_commentstring = function()
      return require('ts_context_commentstring').calculate_commentstring() or vim.bo.commentstring
    end,
  },
})

-- Works on one line OR on a visual selection
vim.keymap.set({ 'n', 'v' }, 'cmm', function()
  local line1 = vim.fn.line('v')
  local line2 = vim.fn.line('.')
  if line1 > line2 then line1, line2 = line2, line1 end
  comment.toggle_lines(line1, line2)
end, { desc = 'Toggle comment' })
