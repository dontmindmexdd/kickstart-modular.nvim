return {
  {
    'echasnovski/mini.nvim',
    config = function()
      require('mini.ai').setup { n_lines = 500, search_method = 'cover' }

      require('mini.surround').setup()

      local statusline = require 'mini.statusline'
      -- set use_icons to true if you have a Nerd Font
      statusline.setup { use_icons = vim.g.have_nerd_font }

      -- You can configure sections in the statusline by overriding their
      -- default behavior. For example, here we set the section for
      -- cursor location to LINE:COLUMN
      ---@diagnostic disable-next-line: duplicate-set-field
      statusline.section_location = function()
        return '%2l:%-2v'
      end

      require('mini.icons').setup()
      MiniIcons.mock_nvim_web_devicons()
      MiniIcons.tweak_lsp_kind()

      require('mini.misc').setup()
      MiniMisc.setup_termbg_sync()
      MiniMisc.setup_restore_cursor()

      require('mini.jump').setup()
      require('mini.jump2d').setup()

      require('mini.pairs').setup()

      require('mini.tabline').setup()
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
