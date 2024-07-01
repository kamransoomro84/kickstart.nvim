return {
	'willothy/moveline.nvim',
	build = 'make',
	config = function()
		local moveline = require('moveline')
		vim.keymap.set('n', '[e', moveline.up, { desc = 'Move line up' })
		vim.keymap.set('n', ']e', moveline.down, { desc = 'Move line down' })
		vim.keymap.set('v', '[e', moveline.block_up, { desc = 'Move visual block up' })
		vim.keymap.set('v', ']e', moveline.block_down, { desc = 'Move visual block down' })
		vim.keymap.set('n', '[t', '<cmd>tabp<cr>', { desc = 'Next tab' })
		vim.keymap.set('n', ']t', '<cmd>tabn<cr>', { desc = 'Previous tab' })
		vim.keymap.set('n', ']tn', '<cmd>tabnew<cr>', { desc = 'New tab' })
		vim.keymap.set('n', ']b', '<cmd>bn<cr>', { desc = 'Next buffer' })
		vim.keymap.set('n', '[b', '<cmd>bp<cr>', { desc = 'Previous buffer' })
	end
}
