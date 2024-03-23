require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {"rust_analyzer"}
})
require("lspconfig").rust_analyzer.setup {}
