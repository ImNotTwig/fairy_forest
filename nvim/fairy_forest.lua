vim.api.nvim_command(":colorscheme default")
vim.api.nvim_command(":hi Normal guibg=#0F1010")

vim.cmd("let g:terminal_color_0 = '#0F1010'")
vim.cmd("let g:terminal_color_1 = '#F8C8DC'")
vim.cmd("let g:terminal_color_2 = '#BFD7B5'")
vim.cmd("let g:terminal_color_3 = '#F5BBA1'")
vim.cmd("let g:terminal_color_4 = '#8EB6F5'")
vim.cmd("let g:terminal_color_5 = '#F49AC2'")
vim.cmd("let g:terminal_color_6 = '#C1E7E3'")
vim.cmd("let g:terminal_color_7 = '#E1DBEB'")
vim.cmd("let g:terminal_color_8 = '#2A2A2D'")
vim.cmd("let g:terminal_color_9 = '#F8C8DC'")
vim.cmd("let g:terminal_color_10 = '#BFD7B5'")
vim.cmd("let g:terminal_color_11 = '#F5BBA1'")
vim.cmd("let g:terminal_color_12 = '#8EB6F5'")
vim.cmd("let g:terminal_color_13 = '#F49AC2'")
vim.cmd("let g:terminal_color_14 = '#C1E7E3'")
vim.cmd("let g:terminal_color_15 = '#E1DBEB'")

local Color, colors, Group, groups, styles = require("colorbuddy").setup()

-- Use Color.new(<name>, <#rrggbb>) to create new colors
-- They can be accessed through colors.<name>
Color.new("red", "#F8C8DC")
Color.new("magenta", "#F49AC2")
Color.new("bright_magenta", "#F19FC0")
Color.new("error", "#FCA5A5")

Color.new("yellow", "#F5BBA1")

Color.new("green", "#BFD7b5")
Color.new("bright_green", "#BEE7c5")

Color.new("blue", "#8EB6F5")
Color.new("bright_blue", "#8EC4E5")
Color.new("cyan", "#C1E7E3")

Color.new("purple", "#C3B1E1")

Color.new("background", "#0F1010")
Color.new("foreground", "#C9C7CD")

Color.new("string", "#9998A8")

Color.new("status_line_fg", "#CAC9DD")

Color.new("white", "#E1DBEB")
Color.new("bright_white", "#E1DBEB")
Color.new("beige", "#808080")

Color.new("gray01", "#1B1B1B")
Color.new("gray02", "#2A2A2A")
Color.new("gray03", "#3E3E43")
Color.new("gray04", "#57575F")
Color.new("gray05", "#9998A8")

-- Define highlights in terms of `colors` and `groups`
Group.new("LineNR", colors.gray03, colors.none, styles.NONE)
Group.new("CursorLineNR", colors.gray05, colors.none, styles.NONE)
Group.new("CursorLine", colors.none, colors.gray02, styles.NONE)
Group.new("Cursor", colors.white, colors.white, styles.bold)

Group.new("PmenuSel", colors.gray04, colors.none, styles.NONE)
Group.new("PmenuSbar", colors.foreground, colors.none, styles.NONE)
Group.new("PmenuThumb", colors.foreground, colors.none, styles.NONE)
Group.new("Pmenu", colors.none, colors.background, styles.NONE)

Group.new("TabLineFill", colors.foreground, colors.background, styles.NONE)
Group.new("TabLineSel", colors.green, colors.gray02, styles.NONE)
Group.new("TabLine", groups.TabLineFill, groups.TabLineFill, groups.TabLineFill)
Group.new("TabLineSelSeparator", colors.foreground, colors.none, styles.NONE)
Group.new("TabLineSeparator", colors.foreground, colors.none, styles.NONE)

Group.new("Visual", colors.background, colors.white, styles.NONE)
Group.new("Normal", colors.foreground, colors.background, styles.NONE)
Group.new("Error", colors.error:light(), colors.none, styles.bold)
Group.new("Exception", colors.error, colors.none, styles.bold)
Group.new("ErrorMsg", colors.error, colors.background, styles.bold)
Group.new("WarningMsg", colors.yellow, colors.background, styles.bold)
Group.new("Boolean", colors.red, colors.none, styles.NONE)
Group.new("String", colors.string, colors.none, styles.NONE)
Group.new("Character", colors.string, colors.none, styles.NONE)
Group.new("Float", colors.yellow, colors.none, styles.NONE)
Group.new("Include", colors.purple, colors.none, styles.italic)
Group.new("Keyword", colors.magenta, colors.none, styles.NONE)
Group.new("Label", colors.purple, colors.none, styles.NONE)
Group.new("Number", colors.yellow, colors.none, styles.NONE)
Group.new("Operator", colors.blue, colors.none, styles.NONE)
Group.new("Structure", colors.cyan, colors.none, styles.NONE)
Group.new("Todo", colors.white, colors.blue, styles.bold)
Group.new("SpecialComment", colors.white, colors.blue, styles.bold)
Group.new("Special", colors.error, colors.none, styles.italic)
Group.new("StatusLine", colors.status_line_fg, colors.gray01, styles.NONE)
Group.new("Type", colors.cyan, colors.none, styles.NONE)
Group.new("Repeat", colors.purple, colors.none, styles.italic)
Group.new("Identifier", colors.foreground, colors.none, styles.NONE)
Group.new("SignColumn", colors.foreground, colors.none, styles.NONE)
Group.new("Search", colors.none, colors.gray04, styles.NONE)
Group.new("Macro", colors.green)
Group.new("PreProc", colors.cyan)
Group.new("NormalFloat", colors.foreground)
Group.new("MatchParen", colors.foreground, colors.none, styles.italic)
Group.new("Statement", colors.red, colors.none, styles.italic)
Group.new("Delimiter", colors.purple, colors.none, styles.NONE)
Group.new("NonText", colors.red, colors.none, styles.NONE)

Group.new("Directory", colors.foreground)
Group.new("netrwList", colors.yellow)

Group.new("rustDeriveTrait", colors.cyan)
Group.new("rustIdentifier", colors.yellow)
Group.new("rustExternCrate", colors.foreground)

Group.new("TSPunctDelimiter", colors.foreground, colors.none, styles.NONE)
Group.new("TSMethod", colors.yellow, colors.none, styles.NONE)
Group.new("TSField", colors.yellow, colors.none, styles.NONE)
Group.new("TSProperty", colors.yellow, colors.none, styles.NONE)
Group.new("TSVariable", colors.foreground, colors.none, styles.NONE)
Group.new("TSVariableBuiltin", colors.red, colors.none, styles.NONE)
Group.new("TSFunc", colors.green, colors.none, styles.italic)
Group.new("TSFuncBuiltin", colors.green, colors.none, styles.italic)
Group.new("TSType", colors.cyan, colors.none, styles.NONE)
Group.new("TSTypeBuiltin", colors.red, colors.none, styles.NONE)
Group.new("TSConstant", colors.red, colors.none, styles.NONE)
Group.new("TSConstBuiltin", colors.red, colors.none, styles.NONE)
Group.new("TSNamespace", colors.purple, colors.none, styles.NONE)
Group.new("TSConstMacro", colors.red)
Group.new("TSFuncMacro", colors.green)

Group.new("GitSignsAdd", colors.green, colors.none, styles.NONE)
Group.new("GitSignsAddNr", colors.background, colors.green, styles.NONE)
Group.new("GitSignsAddLn", colors.red, colors.none, styles.NONE)
Group.new("GitSignsChange", colors.orange, colors.none, styles.NONE)
Group.new("GitSignsChangeNr", colors.background, colors.orange, styles.NONE)
Group.new("GitSignsChangeLn", colors.orange, colors.none, styles.NONE)
Group.new("GitSignsDelete", colors.red, colors.none, styles.NONE)
Group.new("GitSignsDeleteNr", colors.foreground, colors.red, styles.NONE)
Group.new("GitSignsDeleteLn", colors.red, colors.none, styles.NONE)

Group.new("Comment", colors.beige, colors.none, styles.italic)
Group.new("Conditional", colors.purple, colors.none, styles.italic)
Group.new("Define", colors.green, colors.none, styles.italic)
Group.new("Function", colors.green, colors.none, styles.italic)
Group.new("luaFunctionCall", groups.Function, groups.Function, groups.Function)
Group.new("luaFunctionCall", groups.Function, groups.Function, groups.Function)
