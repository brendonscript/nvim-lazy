return {
  'epwalsh/obsidian.nvim',
  version = '*', -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = 'markdown',
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
  --   -- refer to `:h file-pattern` for more examples
  --   "BufReadPre path/to/my-vault/*.md",
  --   "BufNewFile path/to/my-vault/*.md",
  -- },
  cmd = { 'ObsidianSearch', 'ObsidianQuickSwitch' },
  dependencies = {
    'nvim-lua/plenary.nvim',
    'hrsh7th/nvim-cmp',
    'ibhagwan/fzf-lua',
    -- 'nvim-telescope/telescope.nvim'
  },
  opts = {
    disable_frontmatter = true,
    picker = {
      name = 'fzf-lua',
      -- name = 'telescope.nvim'
    },
    workspaces = {
      {
        name = 'personal-windows',
        path = '/mnt/c/Users/Brendon/Documents/Notes',
      },
    },
    daily_notes = {
      folder = 'Daily',
      date_format = '%Y-%m-%d',
      template = nil,
    },
    completion = {
      nvim_cmp = true,
    },
    ui = {
      enable = false, -- set to false to disable all additional syntax features
      checkboxes = {
        [' '] = { char = '', hl_group = 'ObsidianTodo' },
        ['x'] = { char = '', hl_group = 'ObsidianDone' },
        ['>'] = { char = '', hl_group = 'ObsidianRightArrow' },
        ['~'] = { char = '󰰱', hl_group = 'ObsidianTilde' },
        ['!'] = { char = '', hl_group = 'ObsidianImportant' },
        ['/'] = { char = '', hl_group = 'ObsidianWip' },
      },
    },
  },
}

-- if vim.g.brendonscript.picker == 'fzf' then
--   picker = 'fzf-lua'
-- else
--   picker = 'telescope'
-- end
