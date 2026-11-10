vim.pack.add { { src = 'https://github.com/nvim-treesitter/nvim-treesitter', version = 'main' } }

local function attach(buf, lang)
	if not vim.api.nvim_buf_is_valid(buf) then return end
	if not pcall(vim.treesitter.start, buf, lang) then return end
	if vim.treesitter.query.get(lang, 'indents') then
		vim.bo[buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
	end
end

vim.api.nvim_create_autocmd('FileType', {
	group = vim.api.nvim_create_augroup('treesitter_attach', { clear = true }),
	callback = function(ev)
		local lang = vim.treesitter.language.get_lang(ev.match)
		if not lang then return end

		local installed = vim.list_contains(require('nvim-treesitter').get_installed 'parsers', lang)
		if installed or not vim.list_contains(require('nvim-treesitter').get_available(), lang) then
			attach(ev.buf, lang)
		else
			require('nvim-treesitter').install(lang):await(vim.schedule_wrap(function() attach(ev.buf, lang) end))
		end
	end,
})
