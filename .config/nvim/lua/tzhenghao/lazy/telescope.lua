return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    { '<leader>ff', '<cmd>Telescope find_files<cr>', desc = 'Find files' },
    { '<leader>fg', '<cmd>Telescope git_files<cr>', desc = 'Find Git files' },
    { '<leader>fl', '<cmd>Telescope live_grep<cr>', desc = 'Search file contents' },
    { '<leader>fb', '<cmd>Telescope buffers<cr>', desc = 'Find buffers' },
    { '<leader>fh', '<cmd>Telescope help_tags<cr>', desc = 'Find help' },
  },
  opts = {},
}
