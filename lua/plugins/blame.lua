return {
  "FabijanZulj/blame.nvim",
  config = function()
    vim.keymap.set('n', '<leader>b', ':ToggleBlame virtual<CR>', {})
  end
}
