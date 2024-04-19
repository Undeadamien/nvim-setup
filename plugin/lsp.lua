require("null-ls").setup({ ... })
require("norme").setup({
	cmd = os.getenv('HOME') .. '/.local/bin/norminette'
})
