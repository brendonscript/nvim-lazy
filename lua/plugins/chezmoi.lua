return {
  'xvzc/chezmoi.nvim',
  lazy = 'VeryLazy',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'ibhagwan/fzf-lua',
  },
  opts = {},
  keys = {
    {
      '<leader>fd',
      function()
        require('fzf-lua').fzf_exec(require('chezmoi.commands').list(), {
          actions = {
            ['default'] = function(selected, opts)
              require('chezmoi.commands').edit({
                targets = { '~/' .. selected[1] },
                args = { '--watch' },
              })
            end,
          },
        })
      end,
      desc = 'Chezmoi',
    },
  },
  config = function(_, opts)
    require('chezmoi').setup(opts)

    vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
      pattern = { os.getenv('HOME') .. '/.local/share/chezmoi/*' },
      callback = function()
        vim.schedule(require('chezmoi.commands.__edit').watch)
      end,
    })
  end,
}