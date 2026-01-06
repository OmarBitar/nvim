return {
  "APZelos/blamer.nvim",
  lazy = false,
init = function()
  vim.g.blamer_enabled = 1
  vim.g.blamer_delay = 0
  vim.g.blamer_show_in_visual_modes = 0
  vim.g.blamer_show_in_insert_modes = 0
  vim.g.blamer_prefix = "  "
end
}
