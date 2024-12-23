-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`

-- Ensure a unique group name
local highlight_yank_group = vim.api.nvim_create_augroup('highlight_yank', { clear = true })

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight text on yank',
  group = highlight_yank_group,
  callback = function()
    vim.highlight.on_yank({
      higroup = 'IncSearch', -- Use 'IncSearch' or any other highlight group
      timeout = 200,         -- Highlight duration in ms
    })
  end,
})
