-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    {
      '<leader>e',
      function()
        require('neo-tree.command').execute { toggle = true }
      end,
      desc = 'NeoTree reveal',
      silent = true,
    },
    {
      '<leader>ge',
      function()
        require('neo-tree.command').execute { source = 'git_status', toggle = true }
      end,
      desc = 'Git Explorer',
    },
    {
      '<leader>be',
      function()
        require('neo-tree.command').execute { source = 'buffers', toggle = true }
      end,
      desc = 'Buffer Explorer',
    },
    {
      '<leader>o',
      function()
        if vim.bo.filetype == 'neo-tree' then
          vim.cmd.wincmd 'p'
        else
          vim.cmd.Neotree 'focus'
        end
      end,
      desc = 'Focus Neotree',
    },
  },
  opts = {
    filesystem = {
      filtered_items = { hide_gitignored = true, hide_hidden = false, hide_dotfiles = false },
    },
    window = {
      position = 'right',
    },
  },
}
