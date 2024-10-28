return {
  'NeogitOrg/neogit',
  dependencies = {
    'nvim-lua/plenary.nvim', -- required
    'sindrets/diffview.nvim', -- optional
    'nvim-telescope/telescope.nvim',
    -- 'ibhagwan/fzf-lua', -- optional
  },
  cmd = 'Neogit',
  keys = {
    { '<leader>gG', '<cmd>Neogit<cr>', desc = 'Neogit' },
  },
  opts = {
    integrations = {
      telescope = true,
      fzf_lua = false,
      diffview = true,
    },
  },
}
