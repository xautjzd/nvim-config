return {
   'nvim-telescope/telescope.nvim',
   branch = '0.1.x',
   dependencies = { 'nvim-lua/plenary.nvim' },
   config = function()
      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
      vim.keymap.set('n', '<leader>fc', builtin.grep_string, {})   
      vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
      vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

      vim.keymap.set('n', '<leader>vo', builtin.vim_options, {})
      vim.keymap.set('n', '<leader>vr', builtin.registers, {})
      vim.keymap.set('n', '<leader>vk', builtin.keymaps, {})
      vim.keymap.set('n', '<leader>vc', builtin.commands, {})
  end
}
