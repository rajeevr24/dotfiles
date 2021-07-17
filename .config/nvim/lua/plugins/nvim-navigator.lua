require'navigator'.setup({
    default_mapping = true, -- set to false if you will remap every key,
    code_action_icon = "ﯦ ",
    code_action_prompt = {
        enable = true,
        sign = true,
        sign_priority = true,
        virtual_text = false,
        underline = true
    },
    lsp = {
        sumneko_lua = {
            sumneko_root_path = vim.fn.expand("$HOME") ..
                "/.config/lua-language-server",
            sumneko_binary = vim.fn.expand("$HOME") ..
                "/.config/lua-language-server/bin/Linux/lua-language-server",
            settings = {Lua = {version = "LuaJIT"}},
            diagnostics = {globals = {"vim"}}
        },
        tsserver = {filetypes = {'typescript'}},
        pyls = {filetypes = {}},
        jedi_language_server = {filetypes = {}},
        ccls = {filetypes = {}},
        angularls = {filetypes = {}}
    }
})
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
    properties = {'documentation', 'detail', 'additionalTextEdits'}
}
vim.g.mapleader = " "
-- For latex lsp
require'lspconfig'.texlab.setup {capabilities = capabilities}

-- require'lspconfig'.typescript_language_server.setup {
--     on_attach = on_attach,
--     capabilities = capabilities
-- }
