require('neodev').setup({})

local lsp = require('lsp-zero').preset({
	name = 'minimal',
	set_lsp_keymaps = true,
	manage_nvim_cmp = true,
	suggest_lsp_servers = false,
})

lsp.ensure_installed({
	'clangd',
	'cmake',
	'texlab',
	'lua_ls',
	'rust_analyzer',
})

local cmp = require('cmp')
lsp.setup_nvim_cmp({
	formatting = {
		fields = { "kind", "abbr", "menu" },
		format = function(entry, vim_item)
		  local kind = require("lspkind").cmp_format({ mode = "symbol_text", maxwidth = 50 })(entry, vim_item)
		  local strings = vim.split(kind.kind, "%s", { trimempty = true })
		  kind.kind = " " .. (strings[1] or "") .. " "
		  kind.menu = "    (" .. (strings[2] or "") .. ")"

		  return kind
		end,
	},
	mapping = lsp.defaults.cmp_mappings({
		['<C-k>'] = cmp.mapping.scroll_docs(-4),
		['<C-j>'] = cmp.mapping.scroll_docs(4),
		['<C-Space>'] = cmp.mapping.complete,
	}),
	sources = {
		{ name = "path" },
		{ name = "nvim_lsp", keyword_length = 1 },
		{ name = "buffer", keyword_length =3 },
		{ name = "luasnip", keyword_length = 2 },
	}
})

lsp.nvim_workspace()

lsp.setup()

vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	update_in_insert = false,
	underline = true,
	severity_sort = false,
	float = true,
})
