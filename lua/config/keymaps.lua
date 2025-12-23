local keymap = vim.keymap.set

-- resize windows with ctrl + arrows
keymap('n', '<C-Up>', ':resize -2<CR>', { desc = 'resize window' })
keymap('n', '<C-Down>', ':resize +2<CR>', { desc = 'resize window' })
keymap('n', '<C-Left>', ':vertical resize -2<CR>', { desc = 'resize window' })
keymap('n', '<C-Right>', ':vertical resize +2<CR>', { desc = 'resize window' })
-- same for terminal mode
keymap('t', '<C-Up>', '<C-\\><C-n>:resize -2<CR>i', { desc = 'resize window' })
keymap('t', '<C-Down>', '<C-\\><C-n>:resize +2<CR>i', { desc = 'resize window' })
keymap('t', '<C-Left>', '<C-\\><C-n>:vertical resize -2<CR>i', { desc = 'resize window' })
keymap('t', '<C-Right>', '<C-\\><C-n>:vertical resize +2<CR>i', { desc = 'resize window' })

-- tabs
-- Goto buffer in position...
keymap('n', '<A-1>', ':BufferGoto 1<CR>')
keymap('n', '<A-2>', ':BufferGoto 2<CR>')
keymap('n', '<A-3>', ':BufferGoto 3<CR>')
keymap('n', '<A-4>', ':BufferGoto 4<CR>')
keymap('n', '<A-5>', ':BufferGoto 5<CR>')
keymap('n', '<A-6>', ':BufferGoto 6<CR>')
keymap('n', '<A-7>', ':BufferGoto 7<CR>')
keymap('n', '<A-8>', ':BufferGoto 8<CR>')
keymap('n', '<A-9>', ':BufferGoto 9<CR>')
keymap('n', '<A-0>', ':BufferLast<CR>')

-- Move to previous/next buffer
keymap('n', '<A-j>', ':BufferPrevious<CR>')
keymap('n', '<A-k>', ':BufferNext<CR>')

-- Re-order to previous/next buffer
keymap('n', '<A-J>', '<Cmd>BufferMovePrevious<CR>')
keymap('n', '<A-K>', '<Cmd>BufferMoveNext<CR>')

-- Toggle terminal window
keymap('n', '<A-t>', ':ToggleTerm<CR>')
keymap('t', '<A-t>', '<C-\\><C-n>:ToggleTerm<CR>')

-- Clear highlights on search when pressing <Esc> in normal mode
keymap('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
keymap('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

keymap('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
keymap('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
keymap('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
keymap('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
keymap('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

keymap('n', '<C-S-h>', '<C-w>H', { desc = 'Move window to the left' })
keymap('n', '<C-S-l>', '<C-w>L', { desc = 'Move window to the right' })
keymap('n', '<C-S-j>', '<C-w>J', { desc = 'Move window to the lower' })
keymap('n', '<C-S-k>', '<C-w>K', { desc = 'Move window to the upper' })
