USER = vim.fn.expand('$USER')
local lspconfig = require('lspconfig')
-- EFM language server
local prettier = {formatCommand = 'prettier --stdin-filepath ${INPUT}', formatStdin = true}
local luaformatter = {formatCommand = 'lua-format -i', formatStdin = true}

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
    },
    efm_langserver = {
         on_attach = function(client, bufnr)
        client.resolved_capabilities.document_formatting = true
      end,
        init_options = {documentFormatting = true, codeAction = true, document_formatting = true},
        root_dir = lspconfig.util.root_pattern({'.git','.'}),
        filetypes = {
            'javascript',
            'typescript',
            'html',
            'css'
        },
        settings = {
            log_level = 1,
            log_file = '~/.config/efm-langserver/efm.log',
            languages = {
                css = {prettier},
                html = {prettier},
                javascript = {prettier},
                typescript = {prettier},
                json = {prettier},
                markdown = {prettier},
                lua = {luaformatter},
            }
        }
    }
})

vim.g.mapleader = " "

-- For latex lsp
require'lspconfig'.texlab.setup {}
