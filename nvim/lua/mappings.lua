require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<Tab>", "<cmd>b#<CR>", { desc = "Switch to last buffer" })

map("n", "<C-t>", function()
  require("minty.shades").open { border = false }
end, {})

-- mouse users + nvimtree users!
vim.keymap.set("n", "<RightMouse>", function()
  vim.cmd.exec '"normal! \\<RightMouse>"'

  local options = vim.bo.ft == "NvimTree" and "nvimtree" or "default"
  require("menu").open(options, { mouse = true })
end, {})

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- map("n", "<Space>e", "<cmd>NvimTreeToggle<CR>", { desc = "toggle nvimtree" })
-- map("n", "<Space>h", "<cmd>ToggleTerm direction=float<CR>", { desc = "floating terminal" })

-- Move line up/down
map("n", "<A-Down>", ":m .+1<CR>==", { desc = "Move line down" })
map("n", "<A-Up>", ":m .-2<CR>==", { desc = "Move line up" })

-- Move selected lines up/down (visual mode)
map("v", "<A-Down>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
map("v", "<A-Up>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })
