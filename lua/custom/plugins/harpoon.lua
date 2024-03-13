return {
  'ThePrimeagen/harpoon',
  config = function()

    local function map(mode, lhs, rhs, opts)
      opts = vim.tbl_extend('force', {noremap = true, silent = true}, opts or {})
      vim.api.nvim_set_keymap(mode, lhs, rhs, opts)
    end

    map('n', '<Leader>hm', '<Cmd>lua require("harpoon.mark").add_file()<CR>')
    map('n', '<Leader>ha', '<Cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>')

    map('n', '<leader>j', '<Cmd>lua require("harpoon.ui").nav_next()<CR>')
    map('n', '<leader>k', '<Cmd>lua require("harpoon.ui").nav_prev()<CR>')
    map('n', '<Leader>h1', '<Cmd>lua require("harpoon.ui").nav_file(1)<CR>')
    map('n', '<Leader>h2', '<Cmd>lua require("harpoon.ui").nav_file(2)<CR>')
    map('n', '<Leader>h3', '<Cmd>lua require("harpoon.ui").nav_file(3)<CR>')
    map('n', '<Leader>h4', '<Cmd>lua require("harpoon.ui").nav_file(4)<CR>')
  end,
}
