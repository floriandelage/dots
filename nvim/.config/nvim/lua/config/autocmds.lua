vim.api.nvim_create_autocmd('TextYankPost', {
	group = vim.api.nvim_create_augroup('user_yank_highlight', { clear = true }),
	desc = 'Highlight yanked text',
	callback = function() vim.hl.on_yank() end,
})

vim.api.nvim_create_autocmd('BufReadPost', {
	group = vim.api.nvim_create_augroup('user_restore_cursor', { clear = true }),
	desc = 'Restore last cursor position',
	callback = function(args)
		local mark = vim.api.nvim_buf_get_mark(args.buf, '"')
		if mark[1] > 0 and mark[1] <= vim.api.nvim_buf_line_count(args.buf) then
			pcall(vim.api.nvim_win_set_cursor, 0, mark)
		end
	end,
})

vim.api.nvim_create_autocmd('VimResized', {
	group = vim.api.nvim_create_augroup('user_resize_splits', { clear = true }),
	desc = 'Equalize splits on terminal resize',
	callback = function() vim.cmd 'tabdo wincmd =' end,
})

vim.api.nvim_create_autocmd('PackChanged', {
	group = vim.api.nvim_create_augroup('user_pack_changed', { clear = true }),
	desc = 'Post-install and update build steps',
	callback = function(ev)
		local kind, name, path = ev.data.kind, ev.data.spec.name, ev.data.path

		if kind ~= 'install' and kind ~= 'update' then return end

		if name == 'nvim-treesitter' then
			vim.cmd.packadd(name)
			vim.cmd 'TSUpdate'
		elseif name == 'telescope-fzf-native.nvim' then
			vim.system({ 'make' }, { cwd = path }):wait()
		elseif name == 'LuaSnip' then
			vim.system({ 'make', 'install_jsregexp' }, { cwd = path }):wait()
		end
	end,
})
