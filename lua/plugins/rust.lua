vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(args)
        if vim.bo[args.buf].filetype ~= 'rust' then
            return
        end
        local ns = vim.lsp.diagnostic.get_namespace(args.data.client_id)
        local min_severity = { min = vim.diagnostic.severity.ERROR }
        vim.diagnostic.config({
            virtual_text = { severity = min_severity },
            underline = { severity = min_severity },
        }, ns)
    end,
})

vim.g.rustaceanvim = {
    server = {
        default_settings = {
            ['rust-analyzer'] = {
                inlayHints = {
                    typeHints = { enable = false },
                    chainingHints = { enable = false },
                    closureReturnTypeHints = { enable = 'never' },
                    expressionAdjustmentHints = { enable = 'never' },
                    lifetimeElisionHints = { enable = 'never' },
                    bindingModeHints = { enable = false },
                    closingBraceHints = { enable = false },
                    parameterHints = { enable = false },
                    closureCaptureHints = { enable = false },
                    discriminantHints = { enable = 'never' },
                    genericParameterHints = {
                        type = { enable = false },
                        lifetime = { enable = false },
                        const = { enable = false },
                    },
                    implicitDrops = { enable = false },
                    rangeExclusiveHints = { enable = false },
                },
            },
        },
    },
}
