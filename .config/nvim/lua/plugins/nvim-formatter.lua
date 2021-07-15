require('formatter').setup({
    filetype = {

        lua = {
            function()
                return {

                    exe = "lua-format",
                    -- args = {"--i", "--stdin"},
                    stdin = true
                }
            end
        },
        html = {
            -- prettier
            function()
                return {
                    exe = "prettier",
                    args = {"--stdin-filepath", vim.api.nvim_buf_get_name(0)},
                    stdin = true
                }
            end
        },
        javascript = {
            function()
                return {
                    exe = "prettier",
                    args = {"--stdin-filepath", vim.api.nvim_buf_get_name(0)},
                    stdin = true
                }
            end
        }

    }
})

vim.api.nvim_exec([[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.js,*.html,*.lua FormatWrite
augroup END
]], true)
