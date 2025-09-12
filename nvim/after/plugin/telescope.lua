local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})

vim.keymap.set('n', '<leader>fgg', function()
    require('telescope').extensions.live_grep_args.live_grep_args()
end, {})
vim.keymap.set('n', '<leader>fgf', builtin.live_grep, {})

vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    local search_term = vim.fn.input("Grep > ")
    local replace_term = vim.fn.input("Replace With > ")
    local grep_cmd = string.format("rg -l '%s'", search_term)

    -- Use `rg` to get all files containing the search term
    local files = vim.fn.split(vim.fn.system(grep_cmd), "\n")
    
    -- Open all matching files in Neovim
    vim.cmd("args " .. table.concat(files, " "))

    -- Ensure all buffers are modifiable
    vim.cmd("argdo set modifiable")

    -- Replace the search term with the replacement term in all files
    vim.cmd(string.format("argdo %%s/%s/%s/gc | update", search_term, replace_term))
end)

vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})



