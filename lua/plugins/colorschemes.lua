return {
  {
    'vague-theme/vague.nvim',
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'vague'
    end,
  },
  {
    'p00f/alabaster.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
  },
}
-- vim: ts=2 sts=2 sw=2 et
