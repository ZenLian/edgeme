-- TODO: split plugins into seperate files
local M = {}
local palette = require('edgeme.palette')
local style = require('edgeme.style')
local config = require('edgeme.config').options

-- terminal colors
vim.g.terminal_color_0  = vim.o.background == 'dark' and palette.bg0 or palette.fg
vim.g.terminal_color_1  = palette.red
vim.g.terminal_color_2  = palette.green
vim.g.terminal_color_3  = palette.yellow
vim.g.terminal_color_4  = palette.blue
vim.g.terminal_color_5  = palette.purple
vim.g.terminal_color_6  = palette.cyan
vim.g.terminal_color_7  = palette.white
vim.g.terminal_color_8  = palette.black
vim.g.terminal_color_9  = palette.red
vim.g.terminal_color_10 = palette.green
vim.g.terminal_color_11 = palette.yellow
vim.g.terminal_color_12 = palette.blue
vim.g.terminal_color_13 = palette.purple
vim.g.terminal_color_14 = palette.cyan
vim.g.terminal_color_15 = vim.o.background == 'dark' and palette.fg or palette.bg0

-- predefined highlighting groups
M.base = {
    Fg     = { fg = palette.fg },
    Grey   = { fg = palette.grey },
    Red    = { fg = palette.red },
    Yellow = { fg = palette.yellow },
    Green  = { fg = palette.green },
    Cyan   = { fg = palette.cyan },
    Blue   = { fg = palette.blue },
    Purple = { fg = palette.purple },

    Bold = { style = "bold" },
    Underline = { style = "underline" },

    RedSign    = { fg = palette.red },
    YellowSign = { fg = palette.yellow },
    GreenSign  = { fg = palette.green },
    CyanSign   = { fg = palette.cyan },
    BlueSign   = { fg = palette.blue },
    PurpleSign = { fg = palette.purple },

    -- TODO: if config.diagnostic_text_highlight
    -- ErrorText   = { fg = palette.none, bg = palette.diff_red, style = 'undercurl', sp = palette.red },
    -- WarningText = { fg = palette.none, bg = palette.diff_yellow, 'undercurl', sp = palette.yellow },
    -- InfoText    = { fg = palette.none, bg = palette.diff_blue, 'undercurl', sp = palette.blue },
    -- HintText    = { fg = palette.none, bg = palette.diff_green, 'undercurl', sp = palette.green },
    ErrorText   = { style = 'undercurl' },
    WarningText = { style = 'undercurl' },
    InfoText    = { style = 'undercurl' },
    HintText    = { style = 'undercurl' },

    -- TODO: if config.diagnostic_line_highlight
    -- ErrorLine = { fg = palette.none, bg = palette.diff_red },
    -- WarningLine = { fg = palette.none, bg = palette.diff_yellow },
    -- InfoLine = { fg = palette.none, bg = palette.diff_blue },
    -- HintLine = { fg = palette.none, bg = palette.diff_green },
    ErrorLine   = {},
    WarningLine = {},
    InfoLine    = {},
    HintLine    = {},

    VirtualTextWarning = { 'Yellow' },
    VirtualTextError   = { 'Red' },
    VirtualTextInfo    = { 'Blue' },
    VirtualTextHint    = { 'Green' },

    ErrorFloat   = { fg = palette.red, bg = palette.bg2 },
    WarningFloat = { fg = palette.yellow, bg = palette.bg2 },
    InfoFloat    = { fg = palette.blue, bg = palette.bg2 },
    HintFloat    = { fg = palette.green, bg = palette.bg2 },

    CurrentWord = { fg = palette.none, bg = palette.bg2 },

    -- Terminal = { fg = palette.fg, bg = palette.bg0 },
}

if not config.diagnostic.colored_virtual_text then
    M.base.VirtualTextWarning = { 'Grey' }
    M.base.VirtualTextError   = { 'Red' }
    M.base.VirtualTextInfo    = { 'Blue' }
    M.base.VirtualTextHint    = { 'Green' }
end

-- builtin highlighting groups
M.builtin = {
    ColorColumn      = { fg = palette.none, bg = palette.bg1 },
    Conceal          = { fg = palette.grey_dim },
    Cursor           = { style = 'reverse' },
    lCursor          = { 'Cursor' },
    CursorIM         = { 'Cursor' },
    CursorColumn     = { fg = palette.none, bg = palette.bg1 },
    CursorLine       = { fg = palette.none, bg = palette.bg1 },
    Directory        = { fg = palette.green },
    DiffAdd          = { bg = palette.diff_green },
    DiffChange       = { bg = palette.diff_blue },
    DiffDelete       = { bg = palette.diff_red },
    DiffText         = { fg = palette.none, bg = palette.blue },
    EndOfBuffer      = { fg = palette.bg0 },
    TermCursor       = { 'Cursor' },
    -- TermCursorNC = { 'Cursor' }, -- cursor in an unfocused terminal
    ErrorMsg         = { fg = palette.red, style = 'bold,underline' },
    VertSplit        = { fg = palette.black }, -- Column separating vertically split windows
    -- WinSeparator = {} -- separators between window splits
    Folded           = { fg = palette.grey, bg = palette.bg1 },
    FoldColumn       = { fg = palette.grey_dim },
    SignColumn       = { fg = palette.fg },
    IncSearch        = { fg = palette.bg0, bg = palette.bg_blue },
    Substitute       = { fg = palette.bg0, bg = palette.yellow },
    LineNr           = { fg = palette.grey_dim, bg = palette.none },
    -- LineNrAbove = {}
    -- LineNrBelow = {}
    CursorLineNr     = { fg = palette.grey, bg = palette.none },
    -- CursorLineSign -- Like SignColumn when 'cursorline' is set for the cursor line.
    -- CursorLineFold -- Like FoldColumn when 'cursorline' is set for the cursor line.
    MatchParen       = { fg = palette.none, bg = palette.bg4 },
    ModeMsg          = { fg = palette.fg, bg = palette.none, style = 'bold' },
    -- MsgArea -- Area for messages and cmdline
    -- MsgSeparator -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg          = { fg = palette.blue, bg = palette.none, style = 'bold' },
    NonText          = { fg = palette.bg4, bg = palette.none },
    Normal           = { fg = palette.fg, bg = palette.bg0 },
    NormalFloat      = { fg = palette.fg, bg = palette.bg2 },
    -- NormalNC = { fg = palette.fg, bg = palette.bg0 },
    FloatBorder      = { fg = palette.grey },
    Pmenu            = { fg = palette.fg, bg = palette.bg2 },
    PmenuSel         = { fg = palette.bg0, bg = palette.bg_blue },
    PmenuSbar        = { fg = palette.none, bg = palette.bg2 },
    PmenuThumb       = { fg = palette.none, bg = palette.bg_grey },
    Question         = { fg = palette.yellow, bg = palette.none },
    QuickFixLine     = { fg = palette.purple, bg = palette.none, 'bold' },
    Search           = { fg = palette.bg0, bg = palette.bg_green },
    SpecialKey       = { fg = palette.bg4, bg = palette.none },
    SpellBad         = { fg = palette.red, bg = palette.none, style = 'undercurl', sp = palette.red },
    SpellCap         = { fg = palette.yellow, bg = palette.none, style = 'undercurl', sp = palette.yellow },
    SpellLocal       = { fg = palette.blue, bg = palette.none, style = 'undercurl', sp = palette.blue },
    SpellRare        = { fg = palette.purple, bg = palette.none, style = 'undercurl', sp = palette.purple },
    StatusLine       = { fg = palette.fg, bg = palette.bg2 },
    StatusLineNC     = { fg = palette.grey, bg = palette.bg1 },
    StatusLineTermNC = { fg = palette.grey, bg = palette.bg1 },
    TabLine          = { fg = palette.fg, bg = palette.bg4 },
    TabLineFill      = { fg = palette.grey, bg = palette.bg1 },
    TabLineSel       = { fg = palette.bg0, bg = palette.bg_purple },
    Title            = { fg = palette.purple, bg = palette.none, style = 'bold' },
    Visual           = { fg = palette.none, bg = palette.bg3 },
    VisualNOS        = { fg = palette.none, bg = palette.bg3, style = 'underline' },
    WarningMsg       = { fg = palette.yellow, bg = palette.none, style = 'bold' },
    Whitespace       = { fg = palette.bg4, bg = palette.none },
}

-- common syntax groups
-- see :h group-name
M.syntax = {
    Comment = { fg = palette.grey, style = style.comment },

    Constant  = { fg = palette.yellow },
    String    = { fg = palette.green },
    Boolean   = { fg = palette.green },
    Character = { fg = palette.green },
    Number    = { fg = palette.green },
    Float     = { fg = palette.green },

    Identifier = { fg = palette.cyan },
    Function   = { fg = palette.blue },

    Statement   = { fg = palette.purple },
    Conditional = { fg = palette.purple },
    Repeat      = { fg = palette.purple },
    Label       = { fg = palette.yellow },
    Operator    = { fg = palette.fg },
    Keyword     = { fg = palette.purple },
    Exception   = { fg = palette.purple },

    PreProc   = { fg = palette.purple },
    Include   = { fg = palette.purple },
    Define    = { fg = palette.purple },
    Macro     = { fg = palette.yellow },
    PreCondit = { fg = palette.purple },

    Type         = { fg = palette.red },
    StorageClass = { fg = palette.red },
    Structure    = { fg = palette.red },
    Typedef      = { fg = palette.purple },

    Special        = { fg = palette.yellow },
    SpecialChar    = { fg = palette.yellow },
    Tag            = { fg = palette.yellow },
    Delimiter      = { fg = palette.fg },
    SpecialComment = { fg = palette.grey, style = style.comment },
    Debug          = { fg = palette.yellow },

    Underlined = { fg = palette.none, style = 'underline' },

    Ignore = { fg = palette.grey },

    Error = { fg = palette.red },

    Todo = { fg = palette.red },
}


-- see :h lsp-highlight
M.lsp = {
    LspReferenceText            = { 'CurrentWord' },
    LspReferenceRead            = { 'CurrentWord' },
    LspReferenceWrite           = { 'CurrentWord' },
    -- LspCodeLens -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    -- LspCodeLensSeparator -- Used to color the separator between two or more code lens.
    -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.
    LspSignatureActiveParameter = { 'Blue' },
}

-- see :h diagnostic-highlights
M.diagnostic = {
    DiagnosticError            = { 'ErrorText' },
    DiagnosticWarn             = { 'WarningText' },
    DiagnosticInfo             = { 'InfoText' },
    DiagnosticHint             = { 'HintText' },
    DiagnosticFloatingError    = { 'ErrorFloat' },
    DiagnosticFloatingWarn     = { 'WarningFloat' },
    DiagnosticFloatingInfo     = { 'InfoFloat' },
    DiagnosticFloatingHint     = { 'HintFloat' },
    DiagnosticVirtualTextError = { 'VirtualTextError' },
    DiagnosticVirtualTextWarn  = { 'VirtualTextWarning' },
    DiagnosticVirtualTextInfo  = { 'VirtualTextInfo' },
    DiagnosticVirtualTextHint  = { 'VirtualTextHint' },
    DiagnosticUnderlineError   = { 'ErrorText' },
    DiagnosticUnderlineWarn    = { 'WarningText' },
    DiagnosticUnderlineInfo    = { 'InfoText' },
    DiagnosticUnderlineHint    = { 'HintText' },
    DiagnosticSignError        = { 'RedSign' },
    DiagnosticSignWarn         = { 'YellowSign' },
    DiagnosticSignInfo         = { 'BlueSign' },
    DiagnosticSignHint         = { 'GreenSign' },
}

--
-- language specific
--

M.markdown = {
    markdownH1                   = { fg = palette.purple, style = 'bold' },
    markdownH2                   = { fg = palette.red, style = 'bold' },
    markdownH3                   = { fg = palette.blue, style = 'bold' },
    markdownH4                   = { fg = palette.yellow, style = 'bold' },
    markdownH5                   = { fg = palette.green, style = 'bold' },
    markdownH6                   = { fg = palette.cyan, style = 'bold' },
    markdownUrl                  = { fg = palette.green, style = 'underline' },
    markdownItalic               = { style = style.markdown },
    markdownBold                 = { 'Bold' },
    markdownItalicDelimiter      = { fg = palette.grey, style = style.markdown },
    markdownCode                 = { 'Green' },
    markdownCodeBlock            = { 'Green' },
    markdownCodeDelimiter        = { 'Green' },
    markdownBlockquote           = { 'Grey' },
    markdownListMarker           = { 'Red' },
    markdownOrdepurpleListMarker = { 'Red' },
    markdownRule                 = { 'Yellow' },
    markdownHeadingRule          = { 'Grey' },
    markdownUrlDelimiter         = { 'Grey' },
    markdownLinkDelimiter        = { 'Grey' },
    markdownLinkTextDelimiter    = { 'Grey' },
    markdownHeadingDelimiter     = { 'Grey' },
    markdownLinkText             = { 'Purple' },
    markdownUrlTitleDelimiter    = { 'Blue' },
    markdownIdDeclaration        = { 'markdownLinkText' },
    markdownBoldDelimiter        = { 'Grey' },
    markdownId                   = { 'Green' },
}

M.help = {
    helpNote = { fg = palette.yellow, bg = palette.none, style = 'bold' },
    helpHeadline = { fg = palette.purple, bg = palette.none, style = 'bold' },
    helpHeader = { fg = palette.blue, bg = palette.none, style = 'bold' },
    helpURL = { fg = palette.blue, bg = palette.none, style = 'underline' },
    helpHyperTextEntry = { fg = palette.red, bg = palette.none, style = 'bold' },
    helpHyperTextJump = { 'Red' },
    helpCommand = { 'Cyan' },
    helpExample = { 'Green' },
    helpSpecial = { 'Yellow' },
    helpSectionDelim = { 'Grey' },
}

--
-- plugins
--

-- Tree-Sitter syntax groups. Most link to corresponding
-- vim syntax groups (e.g. TSKeyword => Keyword) by default.
--
-- See :h nvim-treesitter-highlights
--
M.treesitter = {
    TSAttribute       = { "Yellow" }, -- Annotations that can be attached to the code to denote some kind of meta information. e.g. C++/Dart attributes.
    -- TSBoolean            = { "Green" },
    -- TSCharacter          = { "Green" },
    -- TSCharacterSpecial   = { "Yellow" }, -- Special characters.
    -- TSComment            = { "Comment" },
    -- TSConditional        = { "Conditional" },
    -- TSConstant           = { "Constant" }, -- Constants identifiers. These might not be semantically constant. E.g. uppercase variables in Python.
    TSConstBuiltin    = { "Cyan" }, -- Built-in constant values: `nil` in Lua.
    -- TSConstMacro         = { "Cyan" }, -- Constants defined by macros: `NULL` in C.
    TSConstructor     = { "Blue" }, -- Constructor calls and definitions: `{}` in Lua, and Java constructors.
    TSDebug           = { "Debug" }, -- Debugging statements.
    -- TSDefine             = { "Define" }, -- Preprocessor #define statements.
    -- TSError              = { "Error" }, -- Syntax/parser errors. This might highlight large sections of code while the user is typing still incomplete code, use a sensible highlight.
    -- TSException          = { "Exception" }, -- Exception related keywords: `try`, `except`, `finally` in Python.
    TSField           = { "Blue" }, -- Object and struct fields.
    -- TSFloat              = { "Number" }, -- Floating-point number literals.
    -- TSFunction           = { "Function" }, -- Function calls and definitions.
    TSFuncBuiltin     = { "Function" }, -- Built-in functions: `print` in Lua.
    TSFuncMacro       = { "Function" }, -- Macro defined functions (calls and definitions): each `macro_rules` in Rust.
    TSInclude         = { "Include" }, -- File or module inclusion keywords: `#include` in C, `use` or `extern crate` in Rust.
    -- TSKeyword            = { "Keyword" }, -- Keywords that don't fit into other categories.
    -- TSKeywordFunction    = { "Keyword" }, -- Keywords used to define a function: `function` in Lua, `def` and `lambda` in Python.
    -- TSKeywordOperator    = { "Keyword" }, -- Unary and binary operators that are English words: `and`, `or` in Python; `sizeof` in C.
    -- TSKeywordReturn      = { "Keyword" }, -- Keywords like `return` and `yield`.
    TSLabel           = { "Purple" }, -- GOTO labels: `label:` in C, and `::label::` in Lua.
    -- TSMethod             = { "Blue" }, -- Method calls and definitions.
    TSNamespace       = { "Yellow" }, -- Identifiers referring to modules and namespaces.
    -- TSNone               { } , -- No highlighting (sets all highlight arguments to `NONE`). this group is used to clear certain ranges, for example, string interpolations. Don't change the values of this highlight group.
    -- TSNumber             = { "Number" }, -- Numeric literals that don't fit into other categories.
    -- TSOperator           = { "Operator" }, -- Binary or unary operators: `+`, and also `->` and `*` in C.
    TSParameter       = { fg = palette.red, style = style.parameter }, -- Parameters of a function.
    -- TSParameterReference = {}, -- References to parameters of a function.
    TSPreProc         = { "PreCondit" }, -- Preprocessor #if, #else, #endif, etc.
    TSProperty        = { "TSField" }, -- Same as `TSField`.
    TSPunctDelimiter  = { "Grey" }, -- Punctuation delimiters: Periods, commas, semicolons, etc.
    TSPunctBracket    = { "Grey" }, -- Brackets, braces, parentheses, etc.
    TSPunctSpecial    = { "Yellow" }, -- Special punctuation that doesn't fit into the previous categories.
    TSRepeat          = { "Keyword" }, -- Keywords related to loops: `for`, `while`, etc.
    TSStorageClass    = { "Keyword" }, -- Keywords that affect how a variable is stored: `static`, `comptime`, `extern`, etc.
    TSString          = { "String" }, -- String literals.
    TSStringRegex     = { "Yellow" }, -- Regular expression literals.
    TSStringEscape    = { "Yellow" }, -- Escape characters within a string: `\n`, `\t`, etc.
    TSStringSpecial   = { "String" }, -- Strings with special meaning that don't fit into the previous categories.
    TSSymbol          = { "Red" }, -- Identifiers referring to symbols or atoms.
    TSTag             = { fg = palette.red, style = style.tags }, -- Tags like HTML tag names.
    TSTagAttribute    = { "Blue" }, -- HTML tag attributes.
    TSTagDelimiter    = { "Purple" }, -- Tag delimiters like `<` `>` `/`.
    TSText            = { "Green" }, -- Non-structured text. Like text in a markup language.
    TSStrong          = { "Bold" }, -- Text to be represented in bold.
    TSEmphasis        = { style = style.enable }, -- Text to be represented with emphasis.
    TSUnderline       = { "Underline" }, -- Text to be represented with an underline.
    TSStrike          = { "Grey" }, -- Strikethrough text.
    TSTitle           = { "Purple" }, -- Text that is part of a title.
    TSLiteral         = { "Green" }, -- Literal or verbatim text.
    TSURI             = { fg = palette.green, style = "underline" }, -- URIs like hyperlinks or email addresses.
    TSMath            = { "Green" }, -- Math environments like LaTeX's `$ ... $`
    TSTextReference   = { "Grey" }, -- Footnotes, text references, citations, etc.
    -- TSEnvironment        { } , -- Text environments of markup languages.
    -- TSEnvironmentName    { } , -- Text/string indicating the type of text environment. Like the name of a `\begin` block in LaTeX.
    TSNote            = { fg = palette.bg0, bg = palette.blue, style = "bold" }, -- Text representation of an informational note.
    TSWarning         = { fg = palette.bg0, bg = palette.yellow, style = 'bold' }, -- Text representation of a warning note.
    TSDanger          = { fg = palette.bg0, bg = palette.red, style = 'bold' }, -- Text representation of a danger note.
    TSType            = { "Type" }, -- Type (and class) definitions and annotations.
    TSTypeBuiltin     = { "Yellow" }, -- Built-in types: `i32` in Rust.
    TSVariable        = { "Red" }, -- Variable names that don't fit into other categories.
    TSVariableBuiltin = { "Cyan" }, -- Variable names defined by the language: `this` or `self` in Javascript.
}

M.telescope = {
    TelescopeNormal        = { fg = palette.fg, bg = palette.bg2 },
    -- TelescopeBorder = { 'Grey' },
    TelescopePromptPrefix  = { 'Purple' },
    TelescopePromptNormal  = { fg = palette.fg, bg = palette.bg1 },
    TelescopePromptBorder  = { fg = palette.bg1, bg = palette.bg1 },
    TelescopePromptTitle   = { fg = palette.grey },
    TelescopePromptCounter = { 'Grey' },
    TelescopeSelection     = { bg = palette.diff_green },
    TelescopeMatching      = { fg = palette.blue, bg = palette.none, style = 'bold' },
    TelescopeResultsBorder = { fg = palette.bg2, bg = palette.bg2 },
    TelescopeResultsTitle  = { fg = palette.grey },
    TelescopePreviewNormal = { fg = palette.fg, bg = palette.bg3 },
    TelescopePreviewBorder = { fg = palette.bg3, bg = palette.bg3 },
    TelescopePreviewTitle  = { fg = palette.grey },
}

-- kyazdani42/nvim-tree.lua
M.nvimTree = {
    NvimTreeSymlink = { 'Fg' },
    NvimTreeFolderName = { 'Green' },
    NvimTreeRootFolder = { 'Grey' },
    NvimTreeFolderIcon = { 'Blue' },
    NvimTreeEmptyFolderName = { 'Green' },
    NvimTreeOpenedFolderName = { 'Green' },
    NvimTreeExecFile = { 'Fg' },
    NvimTreeOpenedFile = { 'Fg' },
    NvimTreeSpecialFile = { 'Fg' },
    NvimTreeImageFile = { 'Fg' },
    NvimTreeMarkdownFile = { 'Fg' },
    NvimTreeIndentMarker = { 'Grey' },
    NvimTreeGitDirty = { 'Yellow' },
    NvimTreeGitStaged = { 'Blue' },
    NvimTreeGitMerge = { 'Cyan' },
    NvimTreeGitRenamed = { 'Purple' },
    NvimTreeGitNew = { 'Green' },
    NvimTreeGitDeleted = { 'Red' },
    NvimTreeLspDiagnosticsError = { 'RedSign' },
    NvimTreeLspDiagnosticsWarning = { 'YellowSign' },
    NvimTreeLspDiagnosticsInformation = { 'BlueSign' },
    NvimTreeLspDiagnosticsHint = { 'GreenSign' },
    NvimTreWindowPicker = { 'NormalFloat' },
}

-- lewis6991/gitsigns.nvim
M.gitsigns = {
    GitSignsAdd              = { 'GreenSign' },
    GitSignsChange           = { 'BlueSign' },
    GitSignsDelete           = { 'RedSign' },
    GitSignsAddNr            = { 'Green' },
    GitSignsChangeNr         = { 'Blue' },
    GitSignsDeleteNr         = { 'Red' },
    GitSignsAddLn            = { 'DiffAdd' },
    GitSignsChangeLn         = { 'DiffChange' },
    GitSignsDeleteLn         = { 'DiffDelete' },
    GitSignsCurrentLineBlame = { 'Grey' },
}

-- folke/which-key.nvim
M.whichkey = {
    WhichKey          = { 'Red' },
    WhichKeySeperator = { 'Green' },
    WhichKeyGroup     = { 'Purple' },
    WhichKeyDesc      = { 'Blue' },
    -- WhichKeyFloat = { 'NormalFloat' },
    -- WhichKeyValue = { 'Comment' },
}

-- p00f/nvim-ts-rainbow
M.rainbow = {
    rainbowcol1 = { 'Fg' },
    rainbowcol2 = { 'Yellow' },
    rainbowcol3 = { 'Green' },
    rainbowcol4 = { 'Cyan' },
    rainbowcol5 = { 'Blue' },
    rainbowcol6 = { 'Purple' },
    rainbowcol7 = { 'Green' },
}

-- hrsh7th/nvim-cmp
M.cmp = {
    CmpItemAbbrMatch         = { fg = palette.blue, bg = palette.none, style = 'bold' },
    CmpItemAbbrMatchFuzzy    = { fg = palette.blue, bg = palette.none, style = 'bold' },
    CmpItemAbbr              = { 'Fg' },
    CmpItemAbbrDeprecated    = { 'Fg' },
    CmpItemMenu              = { 'Fg' },
    CmpItemKind              = { 'Purple' },
    CmpItemKindText          = { 'Fg' },
    CmpItemKindMethod        = { 'Blue' },
    CmpItemKindFunction      = { 'Blue' },
    CmpItemKindConstructor   = { 'Blue' },
    CmpItemKindField         = { 'Blue' },
    CmpItemKindVariable      = { 'Red' },
    CmpItemKindClass         = { 'Yellow' },
    CmpItemKindInterface     = { 'Yellow' },
    CmpItemKindModule        = { 'Yellow' },
    CmpItemKindProperty      = { 'Red' },
    CmpItemKindUnit          = { 'Green' },
    CmpItemKindValue         = { 'Green' },
    CmpItemKindEnum          = { 'Yellow' },
    CmpItemKindKeyword       = { 'Purple' },
    CmpItemKindSnippet       = { 'Cyan' },
    CmpItemKindColor         = { 'Cyan' },
    CmpItemKindFile          = { 'Cyan' },
    CmpItemKindReference     = { 'Cyan' },
    CmpItemKindFolder        = { 'Cyan' },
    CmpItemKindEnumMember    = { 'Green' },
    CmpItemKindConstant      = { 'Red' },
    CmpItemKindStruct        = { 'Yellow' },
    CmpItemKindEvent         = { 'Purple' },
    CmpItemKindOperator      = { 'Purple' },
    CmpItemKindTypeParameter = { 'Yellow' },
}

-- glepnir/lspsaga.nvim
M.lspsaga = {
    LspFloatWinNormal = { bg=palette.bg2 },
    LspFloatWinBorder             = { fg = palette.bg2, bg = palette.bg2 },

    LspSagaDefPreviewBorder       = { fg = palette.bg2, bg = palette.bg2 },
    DefinitionPreviewTitle        = { fg = palette.purple, bg = palette.none, style = 'bold' },
    DefinitionIcon                = { 'Purple' },
    DefinitionCount               = { 'Grey' },

    ProviderTruncateLine = {'Grey'},

    -- DiagnosticTruncateLine = { 'Grey' },
    DiagnosticWarning             = { 'DiagnosticWarn' },
    DiagnosticInformation         = { 'DiagnosticInfo' },
    LspSagaDiagnosticBorder       = { fg = palette.bg2, bg = palette.bg2 },
    LspSagaDiagnosticHeader       = { fg = palette.yellow, bg=palette.none, style='bold' },
    LspSagaDiagnosticTruncateLine = { 'Grey' },
    -- LspLinesDiagBorder            = { 'Cyan' },
    -- LineDiagTuncateLine           = { 'Cyan' },

    LspSagaCodeActionTitle        = { fg = palette.blue, bg = palette.none, style = 'bold' },
    LspSagaCodeActionBorder       = { fg=palette.bg2, bg=palette.bg2 },
    LspSagaCodeActionTruncateLine = { 'Blue' },
    LspSagaCodeActionContent      = { 'Green' },

    LspSagaRenameBorder           = {fg=palette.blue, bg=palette.bg2},
    LspSagaRenamePromptPrefix     = { 'Purple' },

    LspSagaFinderSelection        = { fg=palette.blue },
    LspSagaLspFinderBorder        = { fg=palette.blue, bg = palette.bg2},
    LspSagaAutoPreview            = { fg=palette.blue, bg = palette.bg2},

    -- Doc
    LspSagaHoverBorder            = { fg=palette.bg2, bg=palette.bg2 },
    LspSagaDocTruncateLine        = { 'Green' },

    LspSagaSignatureHelpBorder    = { 'Green' },
    LspSagaShTruncateLine         = { 'Green' },

    ReferencesCount               = { 'Grey' },
    TargetFileName                = { 'Grey' },
}

--
-- folke/trouble.nvim
--
M.trouble = {
    TroubleText   = { 'Fg' },
    TroubleSource = { 'Grey' },
    TroubleCode   = { 'Grey' },
}

return M
