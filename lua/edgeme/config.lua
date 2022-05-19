local config = {}

-- default options
config.options = {
    -- choose color styles, depends on vim.o.background
    -- dark theme: 'default', 'aura', 'neon'
    -- light theme: 'default'
    style = 'default',
    -- turn italic on/off
    italic = {
        enable = true, -- set to false will disable all italics below
        comment = true,
        todo = false,
        markdown = true,
        parameter = true,
        tags = true, -- tags like html tag names
    },
    diagnostic = {
        -- true to enable diagnostic virtual text color
        colored_virtual_text = false,
    },
    -- TODO: not supported yet
    better_performence = false,
}

-- update options
config.update = function(options)
    config.options = vim.tbl_deep_extend("force", config.options, options)
end

return config
