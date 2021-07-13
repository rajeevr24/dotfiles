require'navigator'.setup({
    default_mapping = true, -- set to false if you will remap every key,
    lsp = {
        sumneko_lua = {
            sumneko_root_path = vim.fn.expand("$HOME") ..
                "/.config/lua-language-server",
            sumneko_binary = vim.fn.expand("$HOME") ..
                "/.config/lua-language-server/bin/Linux/lua-language-server"
        },
        tsserver = {
            filetypes = {'typescript'}},
        pyls = {filetypes = {}},
        jedi_language_server = {filetypes = {}},
        ccls = {filetypes = {}}
    }
})

vim.g.mapleader = " "

-- For latex lsp
require'lspconfig'.texlab.setup {}