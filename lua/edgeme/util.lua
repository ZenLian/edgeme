local util = {}

util.highlight = function(group, highlight)
    local fg = highlight.fg and 'guifg=' .. highlight.fg or 'guifg=NONE'
    local bg = highlight.bg and 'guibg=' .. highlight.bg or 'guibg=NONE'
    local style = highlight.style and 'gui=' .. highlight.style or 'gui=NONE'
    local sp = highlight.sp and 'guisp=' .. highlight.sp or ''
    local link = highlight[1] or highlight.link

    local cmd
    if link then
        cmd = table.concat({ 'highlight! link', group, link }, ' ')
    else
        cmd = table.concat({ 'highlight', group, bg, fg, style, sp }, ' ')
    end
    vim.cmd(cmd)
end

util.load = function(theme)
    for _, v in pairs(theme) do
        for group, highlights in pairs(v) do
            util.highlight(group, highlights)
        end
    end

end

return util
