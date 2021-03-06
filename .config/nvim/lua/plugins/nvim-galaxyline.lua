local gl = require('galaxyline')

local colors = {
    bg = '#292D38',
    yellow = '#DCDCAA',
    dark_yellow = '#D7BA7D',
    cyan = '#4EC9B0',
    green = '#608B4E',
    light_green = '#B5CEA8',
    string_orange = '#CE9178',
    orange = '#FF8800',
    purple = '#C586C0',
    magenta = '#D16D9E',
    grey = '#43454F',
    blue = '#569CD6',
    vivid_blue = '#4FC1FF',
    light_blue = '#9CDCFE',
    red = '#D16969',
    error_red = '#F44747',
    info_yellow = '#FFCC66'
}
local condition = require('galaxyline.condition')
local gls = gl.section
gl.short_line_list = {'NvimTree', 'packer', 'undotree'}

-- -- gls.left[1] = {
-- --     ViMode = {
-- --         provider = function()
-- --             -- auto change color according the vim mode
-- --             local mode_color = {
-- --                 n = colors.info_yellow,
-- --                 i = colors.orange,
-- --                 v = colors.purple,
-- --                 [''] = colors.purple,
-- --                 V = colors.purple,
-- --                 c = colors.magenta,
-- --                 no = colors.blue,
-- --                 s = colors.orange,
-- --                 S = colors.orange,
-- --                 [''] = colors.orange,
-- --                 ic = colors.yellow,
-- --                 R = colors.red,
-- --                 Rv = colors.red,
-- --                 cv = colors.blue,
-- --                 ce = colors.blue,
-- --                 r = colors.cyan,
-- --                 rm = colors.cyan,
-- --                 ['r?'] = colors.cyan,
-- --                 ['!'] = colors.blue,
-- --                 t = colors.blue
-- --             }
-- --             vim.api.nvim_command('hi GalaxyViMode guifg=' ..
-- --                                      mode_color[vim.fn.mode()])
-- --             return '     '
-- --         end,
-- --         separator = ' ',
-- --         separator_highlight = {'NONE', colors.bg},
-- --         highlight = {colors.red, colors.bg}
-- --         -- highlight = {colors.red, colors.vivid_blue}
-- --     }
-- -- }

local mode_color = function()
    local mode_colors = {
        n = colors.green,
        i = colors.blue,
        c = colors.orange,
        V = colors.magenta,
        [''] = colors.magenta,
        v = colors.magenta,
        R = colors.red
    }

    local color = mode_colors[vim.fn.mode()]

    if color == nil then color = colors.red end

    return color
end

gls.left[1] = {
    ViMode = {
        provider = function()
            local alias = {
                n = 'NORMAL',
                i = 'INSERT',
                c = 'COMMAND',
                V = 'VISUAL',
                [''] = 'VISUAL',
                v = 'VISUAL',
                R = 'REPLACE'
            }
            vim.api.nvim_command('hi GalaxyViMode gui=bold guibg=' ..
                                     mode_color())
            local alias_mode = alias[vim.fn.mode()]
            if alias_mode == nil then alias_mode = vim.fn.mode() end
            return '  ' .. alias_mode .. ' '
        end,
        separator = ' ',
        highlight = {colors.bg, colors.section_bg},
        -- separator_highlight = {colors.bg, colors.section_bg },
        separator_highlight = {colors.bg, colors.bg}
    }
}

gls.left[2] = {
    GitIcon = {
        provider = function() return '  ' end,
        condition = condition.check_git_workspace,
        separator = ' ',
        separator_highlight = {'NONE', colors.bg},
        highlight = {colors.orange, colors.bg}
    }
}

gls.left[3] = {
    GitBranch = {
        provider = 'GitBranch',
        condition = condition.check_git_workspace,
        separator = ' ',
        separator_highlight = {'NONE', colors.bg},
        highlight = {colors.green, colors.bg}
    }
}
gls.left[4] = {
    DiffAdd = {
        provider = 'DiffAdd',
        condition = condition.hide_in_width,
        icon = '    ',
        highlight = {colors.green, colors.bg}
    }
}

gls.left[5] = {
    DiffRemove = {
        provider = 'DiffRemove',
        condition = condition.hide_in_width,
        icon = '   ',
        highlight = {colors.red, colors.bg}
    }
}

gls.mid[5] = {
    ShowLspClient = {
        provider = 'GetLspClient',
        condition = function()
            local tbl = {['dashboard'] = true, [' '] = true}
            if tbl[vim.bo.filetype] then return false end
            return true
        end,
        icon = ' LSP: ',
        -- highlight = {colors.vivid_blue, colors.grey}
        highlight = {colors.cyan, colors.grey}
    }
}

gls.right[1] = {
    DiagnosticError = {
        provider = 'DiagnosticError',
        icon = '  ',
        separator = '',
        highlight = {colors.error_red, colors.bg}
    }
}
gls.right[2] = {
    DiagnosticWarn = {
        provider = 'DiagnosticWarn',
        icon = '  ',
        separator = '',
        highlight = {colors.orange, colors.bg}
    }
}

gls.right[3] = {
    DiagnosticHint = {
        provider = 'DiagnosticHint',
        icon = '  ',
        separator = '',
        highlight = {colors.vivid_blue, colors.bg}
    }
}

gls.right[4] = {
    DiagnosticInfo = {
        provider = 'DiagnosticInfo',
        icon = '  ',
        separator = '',
        highlight = {colors.info_yellow, colors.bg}
    }
}

gls.right[6] = {
    LineInfo = {
        provider = 'LineColumn',
        separator = ' ',
        separator_highlight = {colors.light_green, colors.bg},
        highlight = {colors.info_yellow, colors.bg}
    }
}

gls.right[7] = {
    PerCent = {
        provider = 'LinePercent',
        separator = '',
        separator_highlight = {'NONE', colors.bg},
        highlight = {colors.info_yellow, colors.bg}
    }
}

gls.right[8] = {
    BufferType = {
        provider = 'FileIcon',
        condition = condition.buffer_not_empty,
        separator = '  ',
        separator_highlight = {colors.orange, colors.bg},
        highlight = {colors.grey, colors.orange}
    }
}

gls.right[9] = {
    FileEncode = {
        provider = 'FileName',
        condition = condition.hide_in_width,
        separator = '',
        separator_highlight = {'NONE', colors.bg},
        highlight = {colors.grey, colors.orange}
    }
}

-- This function gives space on the right side
gls.right[10] = {
    Space = {
        provider = function() return ' ' end,
        separator = ' ',
        separator_highlight = {'NONE', colors.bg},
        highlight = {colors.orange, colors.bg}
    }
}
