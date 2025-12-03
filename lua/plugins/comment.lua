-- dont forect to TSInstall vue, TSInstall scss
return {
  "numToStr/Comment.nvim",
  config = function()
    require('Comment').setup {
      pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
    }
  end,
  event = "BufReadPre",
  lazy = false,
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "JoosepAlviste/nvim-ts-context-commentstring",
  },
}
