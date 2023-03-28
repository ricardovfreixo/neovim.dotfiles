local lsp = require('lsp-zero')
lsp.preset("recommended")

lsp.configure('lua-language-server', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})


local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
	['<C-Space>'] = cmp.mapping.complete(),
})


lsp.set_preferences({
	sign_icons = { }
})


lsp.on_attach(function (client, bufnr)
		print("help")
	local opts = {buffer = bufnr, remap = false}

	vim.keymap.set("n", "gd", function () vim.lsp.buf.definition() end, opts)
	
end)


lsp.setup()

