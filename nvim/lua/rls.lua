require'lspconfig'.rls.setup{
    on_attach=require'completion'.on_attach,
    settings = {
        unstable_features = true,
        build_on_save = true,
    }
}

