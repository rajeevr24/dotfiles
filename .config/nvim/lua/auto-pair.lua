-- require('nvim-autopairs').setup()
require "pears".setup()
require "pears".setup(function(conf)
  conf.on_enter(function(pears_handle)
    if vim.fn.pumvisible() == 1 and vim.fn.complete_info().selected ~= -1 then
      return vim.fn["compe#confirm"]("<CR>")
    else
      pears_handle()
    end
  end)
end)

-- local R = require "pears.rule"

-- require "pears".setup(function(conf)
--   conf.pair("'", {
--     close = "'",
--     -- Don't expand a quote if it comes after an alpha character
--     should_expand = R.not_(R.start_of_context "[a-zA-Z]")
--   })
-- end)
