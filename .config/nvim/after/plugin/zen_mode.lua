vim.cmd [[
	let g:pencil#wrapModeDefault = 'soft'
]]

require('zen-mode').setup{
	window = {
		backdrop = 1.0,
		options = {
			number = false,
			relativenumber = false,
			foldcolumn = "0"
		}
	}
}

vim.keymap.set("n", "<leader>tz", ":ZenMode<CR>:TogglePencil<CR>")
