vim.g.mapleader = " "
--Move selected lines upwards
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
--Move selected lines downwards
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
--Open traditional file explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
--Open Neotree 
vim.keymap.set("n", "<leader>t", "<CMD>Neotree toggle<CR>", { silent = true })
--Neo-tree focus
vim.keymap.set("n", "<leader>g", "<CMD>Neotree focus<CR>", { silent = true })
--Move on the next tabline:
vim.keymap.set("n", "<leader>`", "<CMD>TablineBufferNext<CR>", { silent = true})
--GOTO the first line in file
vim.keymap.set({"n", "v"}, "<leader><HOME>", "<CMD>:1<CR>", {silent = true})
--GOTO the last line in file
vim.keymap.set({"n", "v"}, "<leader><END>", "<CMD>:999999<CR>", {silent = true})

vim.keymap.set("n", "<leader>ga", "<CMD>EasyAlign<CR>")

vim.keymap.set("v", "<><F3>", "<CMD>set pastetoggle<CR>", {silent = true})

--ToggleTerm configuration
vim.keymap.set({"n", "v"}, "<leader>m", "<CMD>ToggleTerm dir=./ direction=float name=main<CR>", {silent = true})

vim.keymap.set({"n", "v"}, "<leader>W", "daw", {silent = true})
