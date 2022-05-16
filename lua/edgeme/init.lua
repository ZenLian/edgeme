local M = {}

M.setup = function(options)
    require('edgeme.config').update(options)
end

-- apply colorscheme
M.load = function()
    vim.cmd [[highlight clear]]
    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end
    -- vim.o.background = "dark"
    vim.o.termguicolors = true
    vim.g.colors_name = "edgeme"

    local util = require('edgeme.util')
    local theme = require('edgeme.theme')
    util.load(theme)
end

return M
