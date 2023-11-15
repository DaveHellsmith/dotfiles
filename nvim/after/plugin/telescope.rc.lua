local status, telescope = pcall(require, "telescope")

if (not status) then return end
local builtin = require("telescope.builtin")

telescope.setup({
  defaults = {
    initial_mode = "normal",
  },
})

vim.keymap.set('n', '<leader>ff', function()
  builtin.find_files()
end)
vim.keymap.set('n', '<leader>fg', function()
  builtin.live_grep()
end)

vim.keymap.set('n', '<leader>fb', function()
  builtin.buffers()
end)

vim.keymap.set('n', '<leader>fh', function()
  builtin.help_tags()
end)

vim.keymap.set('n', '<leader>fn', function()
  builtin.current_buffer_fuzzy_find()
end)


