-- nvim-treesitter `main` branch: setup() only takes install_dir; parsers are
-- installed explicitly and highlighting is started by Neovim itself.
-- Installing parsers requires the `tree-sitter` CLI (brew install tree-sitter-cli).
local parsers = { "go", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "rust", "toml" }

require('nvim-treesitter').setup {}
require('nvim-treesitter').install(parsers)

vim.api.nvim_create_autocmd('FileType', {
    callback = function(args)
        -- no-op for filetypes without an installed parser
        pcall(vim.treesitter.start, args.buf)
    end,
})
