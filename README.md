# edgeme

A lua port of [edge](https://github.com/sainnhe/edge) colorscheme for
neovim only.

## Prerequisites

- neovim >= v0.5.0

## Configurations

```lua
vim.o.background = 'dark' -- dark mode only

require('edgeme').setup {
    style = 'default', -- only support 'default' or 'aura'
    -- turn italic on/off
    italic = {
        enable = true, -- set to false will disable all italics below
        comment = true,
        todo = false,
        markdown = true,
        parameter = true,
        tags = true, -- tags like html tag names
    },
}
```

## Limitations

- only support true color terminals
- dark mode only, 2 styles('default' or 'aura') only
- supported plugins are limited, check [theme.lua](./lua/edgeme/theme.lua)

