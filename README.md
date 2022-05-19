# edgeme

A lua port of [edge](https://github.com/sainnhe/edge) colorscheme for
neovim only.

## Prerequisites

- neovim >= v0.5.0

## Configurations

```lua
-- specify background, 'dark' or 'light'
vim.o.background = 'dark'

-- default options
-- you don't have to call setup() if you're ok with defaults
require('edgeme').setup {
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
    }
}
```

## Limitations

- only support true color terminals
- supported plugins are limited, check [theme.lua](./lua/edgeme/theme.lua)

