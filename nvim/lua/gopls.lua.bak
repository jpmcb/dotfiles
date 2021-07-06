require'lspconfig'.gopls.setup{
    cmd = { "gopls" },
    filetypes = { "go", "gomod" },
    on_attach=require'completion'.on_attach,
    settings = {
        gopls = {
            analyses = {
                unusedparams = true,
            },
            staticcheck = true,
        }
    }
}

