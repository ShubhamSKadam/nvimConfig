return {
  {
    'numToStr/Comment.nvim',
    opts = {
      -- add any options here
    },
    lazy = false,
  },
  {
    'JoosepAlviste/nvim-ts-context-commentstring',
    dependencies = {
      'numToStr/Comment.nvim', -- Make sure Comment.nvim is loaded
    },
    config = function()
      require('ts_context_commentstring').setup {
        enable_autocmd = false, -- Important for perf
      }

      -- This is the critical part that connects the two plugins
      local comment = require('Comment')
      local ts_context = require('ts_context_commentstring.integrations.comment_nvim')

      comment.setup {
        -- This tells Comment.nvim to ask ts_context_commentstring
        -- what comment string to use *before* it comments.
        pre_hook = ts_context.create_pre_hook(),
      }
    end,
  },
}
