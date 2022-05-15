local config = {}

-- default options
config.options = {
    style = 'default', -- only supporte 'default' or 'aura'
    -- turn italic on/off
    italic = {
        enable = true, -- set to false will disable all italics below
        comment = true,
        todo = false,
        markdown = true,
        parameter = true,
        tags = true, -- tags like html tag names
    },
    -- TODO: not supported yet
    better_performence = false,
}

-- update options
config.update = function(options)
    config.options = vim.tbl_deep_extend("force", config.options, options)
end

return config
