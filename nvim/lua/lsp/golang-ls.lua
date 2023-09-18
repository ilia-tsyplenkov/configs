require'lspconfig'.gopls.setup{
    settings = {
        gopls = {
            analyses = { unusedparams = true, unusedwrite = true, shadow = true },
            hints = {
              assignVariableTypes = true,
              compositeLiteralFields = true,
              compositeLiteralTypes = true,
              constantValues = true,
              functionTypeParameters = true,
              parameterNames = true,
              rangeVariableTypes = true,
            },
            staticcheck = true,
            usePlaceholders = true,
            expandWorkspaceToModule = false,
        },
    },
}
