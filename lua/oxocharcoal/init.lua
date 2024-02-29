local _local_1_ = require("oxocharcoal.colorutils")
local blend_hex = _local_1_["blend-hex"]
local darken_hex = _local_1_["darken-hex"]
if vim.g.colors_name then
  vim.cmd.hi("clear")
else
end
vim.g["colors_name"] = "oxocharcoal"
vim.o["termguicolors"] = true
local abyss = "#000000"
local black = "#0E0E0E"
local white = "#ffffff"
local blend = "#080808"
local base09 = "#78a9ff"
local oxocharcoal = {abyss = abyss, black = black, grey01 = blend_hex(black, white, 0.085), grey02 = blend_hex(black, white, 0.18), grey03 = blend_hex(black, white, 0.3), grey60 = blend_hex(black, white, 0.6), grey04 = blend_hex(black, white, 0.82), grey05 = blend_hex(black, white, 0.95), white = white, cyan = "#08bdba", teal = "#3ddbd9", base09 = base09, blue = "#33b1ff", pink = "#ff7eb6", green = "#42be65", lavander = "#be95ff", lightblue = "#82cfff", orange = "#ffc37e", color1 = "#94c4ff", color2 = "#e9b1ff", color3 = "#96be78", color4 = "#50b4be", color6 = "#808080", color7 = "#c8b47d", color8 = "#61afe1", color9 = "#e88c00", color10 = "#dd3962", color11 = "#c88cdc", color13 = "#b7b7b7", color14 = "#bed4e0", color16 = "#ffb987", color18 = "#ff9696", color19 = "#bbb529", color21 = "#80ff80", color22 = "#ffcf97", color24 = "#97f1fd", color27 = "#dadfe5", color28 = "#61afe1", color29 = "#00ff00", color30 = "#324146", color31 = "#c35082", color32 = "#283246", color33 = "#ffc86e", color34 = "#ff7eb6", color35 = "#c6dbff", color36 = "#5378c8", blend = blend, none = "NONE"}
vim.g["terminal_color_0"] = oxocharcoal.grey01
vim.g["terminal_color_1"] = oxocharcoal.blue
vim.g["terminal_color_2"] = oxocharcoal.lavander
vim.g["terminal_color_3"] = oxocharcoal.green
vim.g["terminal_color_4"] = oxocharcoal.base09
vim.g["terminal_color_5"] = oxocharcoal.lightblue
vim.g["terminal_color_6"] = oxocharcoal.teal
vim.g["terminal_color_7"] = oxocharcoal.grey05
vim.g["terminal_color_8"] = oxocharcoal.grey03
vim.g["terminal_color_9"] = oxocharcoal.blue
vim.g["terminal_color_10"] = oxocharcoal.lavander
vim.g["terminal_color_11"] = oxocharcoal.green
vim.g["terminal_color_12"] = oxocharcoal.base09
vim.g["terminal_color_13"] = oxocharcoal.lightblue
vim.g["terminal_color_14"] = oxocharcoal.cyan
vim.g["terminal_color_15"] = oxocharcoal.white
vim.api.nvim_set_hl(0, "ColorColumn", {fg = oxocharcoal.none, bg = oxocharcoal.grey01})
vim.api.nvim_set_hl(0, "Conceal", {fg = oxocharcoal.color6, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "CurSearch", {fg = oxocharcoal.black, bg = oxocharcoal.color36, underline = true})
vim.api.nvim_set_hl(0, "Cursor", {fg = oxocharcoal.black, bg = oxocharcoal.white})
vim.api.nvim_set_hl(0, "CursorLine", {fg = oxocharcoal.none, bg = oxocharcoal.grey01})
vim.api.nvim_set_hl(0, "CursorColumn", {fg = oxocharcoal.none, bg = oxocharcoal.grey01})
vim.api.nvim_set_hl(0, "CursorLineNr", {fg = oxocharcoal.grey04, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "QuickFixLine", {fg = oxocharcoal.none, bg = oxocharcoal.grey01, bold = true})
vim.api.nvim_set_hl(0, "Error", {fg = oxocharcoal.color10, bg = oxocharcoal.grey01})
vim.api.nvim_set_hl(0, "LineNr", {fg = oxocharcoal.grey03, bg = oxocharcoal.black})
vim.api.nvim_set_hl(0, "NonText", {fg = oxocharcoal.grey02, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "Normal", {fg = oxocharcoal.white, bg = oxocharcoal.black})
vim.api.nvim_set_hl(0, "Pmenu", {fg = oxocharcoal.grey05, bg = oxocharcoal.blend})
vim.api.nvim_set_hl(0, "PmenuSbar", {fg = oxocharcoal.grey04, bg = oxocharcoal.blend})
vim.api.nvim_set_hl(0, "PmenuSel", {fg = oxocharcoal.color24, bg = oxocharcoal.grey01})
vim.api.nvim_set_hl(0, "PmenuThumb", {fg = oxocharcoal.color24, bg = oxocharcoal.grey02})
vim.api.nvim_set_hl(0, "SpecialKey", {fg = oxocharcoal.grey03, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "Visual", {fg = oxocharcoal.black, bg = oxocharcoal.color35})
vim.api.nvim_set_hl(0, "VisualNOS", {fg = oxocharcoal.black, bg = oxocharcoal.color35})
vim.api.nvim_set_hl(0, "TooLong", {fg = oxocharcoal.none, bg = oxocharcoal.grey02})
vim.api.nvim_set_hl(0, "Debug", {fg = oxocharcoal.green, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "Macro", {fg = oxocharcoal.color11, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "MatchParen", {fg = oxocharcoal.none, bg = oxocharcoal.color30})
vim.api.nvim_set_hl(0, "Bold", {fg = oxocharcoal.none, bg = oxocharcoal.none, bold = true})
vim.api.nvim_set_hl(0, "Italic", {fg = oxocharcoal.none, bg = oxocharcoal.none, italic = true})
vim.api.nvim_set_hl(0, "Underlined", {fg = oxocharcoal.none, bg = oxocharcoal.none, underline = true})
vim.api.nvim_set_hl(0, "Folded", {fg = oxocharcoal.color6, bg = oxocharcoal.color32})
vim.api.nvim_set_hl(0, "FoldColumn", {fg = oxocharcoal.grey01, bg = oxocharcoal.black})
vim.api.nvim_set_hl(0, "SignColumn", {fg = oxocharcoal.grey01, bg = oxocharcoal.black})
vim.api.nvim_set_hl(0, "Directory", {fg = oxocharcoal.color28, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "EndOfBuffer", {fg = oxocharcoal.grey01, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "ErrorMsg", {fg = oxocharcoal.color10, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "ModeMsg", {fg = oxocharcoal.grey04, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "MoreMsg", {fg = oxocharcoal.teal, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "Question", {fg = oxocharcoal.color33, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "Substitute", {fg = oxocharcoal.color24, bg = oxocharcoal.color31})
vim.api.nvim_set_hl(0, "WarningMsg", {fg = oxocharcoal.color9, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "WildMenu", {fg = oxocharcoal.teal, bg = oxocharcoal.grey01})
vim.api.nvim_set_hl(0, "GitSignsAdd", {fg = oxocharcoal.color29, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "GitSignsChange", {fg = oxocharcoal.color3, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "GitSignsDelete", {fg = oxocharcoal.color10, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "DiffAdded", {fg = oxocharcoal.color29, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "DiffChanged", {fg = oxocharcoal.color3, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "DiffRemoved", {fg = oxocharcoal.color10, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "DiffAdd", {bg = darken_hex(oxocharcoal.color29, 0.6), fg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "DiffChange", {bg = darken_hex(oxocharcoal.color3, 0.6), fg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "DiffText", {bg = darken_hex(oxocharcoal.color3, 0.6), fg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "DiffDelete", {bg = darken_hex(oxocharcoal.color10, 0.6), fg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "TodoBgFIX", {bg = oxocharcoal.color10, fg = oxocharcoal.black})
vim.api.nvim_set_hl(0, "TodoFgFIX", {bg = oxocharcoal.none, fg = oxocharcoal.color10})
vim.api.nvim_set_hl(0, "TodoBgHACK", {bg = oxocharcoal.color9, fg = oxocharcoal.black})
vim.api.nvim_set_hl(0, "TodoFgHACK", {bg = oxocharcoal.none, fg = oxocharcoal.color9})
vim.api.nvim_set_hl(0, "TodoBgNOTE", {bg = oxocharcoal.color28, fg = oxocharcoal.black})
vim.api.nvim_set_hl(0, "TodoFgNOTE", {bg = oxocharcoal.none, fg = oxocharcoal.color28})
vim.api.nvim_set_hl(0, "TodoBgPERF", {bg = oxocharcoal.color28, fg = oxocharcoal.black})
vim.api.nvim_set_hl(0, "TodoFgPERF", {bg = oxocharcoal.none, fg = oxocharcoal.color28})
vim.api.nvim_set_hl(0, "TodoBgTEST", {bg = oxocharcoal.color32, fg = oxocharcoal.black})
vim.api.nvim_set_hl(0, "TodoFgTEST", {bg = oxocharcoal.none, fg = oxocharcoal.color32})
vim.api.nvim_set_hl(0, "TodoBgTODO", {bg = oxocharcoal.color29, fg = oxocharcoal.black})
vim.api.nvim_set_hl(0, "TodoFgTODO", {bg = oxocharcoal.none, fg = oxocharcoal.color29})
vim.api.nvim_set_hl(0, "TodoBgWARN", {bg = oxocharcoal.color9, fg = oxocharcoal.black})
vim.api.nvim_set_hl(0, "TodoFgWARN", {bg = oxocharcoal.none, fg = oxocharcoal.color9})
vim.api.nvim_set_hl(0, "IncSearch", {fg = oxocharcoal.black, bg = oxocharcoal.color1})
vim.api.nvim_set_hl(0, "Search", {fg = oxocharcoal.white, bg = oxocharcoal.color32})
vim.api.nvim_set_hl(0, "TabLine", {link = "StatusLineNC"})
vim.api.nvim_set_hl(0, "TabLineFill", {link = "TabLine"})
vim.api.nvim_set_hl(0, "TabLineSel", {link = "StatusLine"})
vim.api.nvim_set_hl(0, "Title", {fg = oxocharcoal.grey04, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "VertSplit", {fg = oxocharcoal.grey01, bg = oxocharcoal.black})
vim.api.nvim_set_hl(0, "NvimInternalError", {fg = oxocharcoal.black, bg = oxocharcoal.color10})
vim.api.nvim_set_hl(0, "NormalFloat", {fg = oxocharcoal.grey05, bg = oxocharcoal.blend})
vim.api.nvim_set_hl(0, "FloatBorder", {fg = oxocharcoal.blend, bg = oxocharcoal.blend})
vim.api.nvim_set_hl(0, "NormalNC", {fg = oxocharcoal.grey03, bg = oxocharcoal.black})
vim.api.nvim_set_hl(0, "TermCursor", {fg = oxocharcoal.black, bg = oxocharcoal.grey04})
vim.api.nvim_set_hl(0, "TermCursorNC", {fg = oxocharcoal.black, bg = oxocharcoal.grey04})
vim.api.nvim_set_hl(0, "DiagnosticWarn", {fg = oxocharcoal.color9, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "DiagnosticError", {fg = oxocharcoal.color10, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "DiagnosticInfo", {fg = oxocharcoal.color28, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "DiagnosticHint", {fg = oxocharcoal.color29, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", {fg = oxocharcoal.none, sp = oxocharcoal.color9, bg = oxocharcoal.none, undercurl = true})
vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", {fg = oxocharcoal.none, sp = oxocharcoal.color10, bg = oxocharcoal.none, undercurl = true})
vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", {fg = oxocharcoal.none, sp = oxocharcoal.color28, bg = oxocharcoal.none, undercurl = true})
vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", {fg = oxocharcoal.none, sp = oxocharcoal.color29, bg = oxocharcoal.none, underdotted = true})
vim.api.nvim_set_hl(0, "HealthError", {fg = oxocharcoal.color10, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "HealthWarning", {fg = oxocharcoal.color9, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "HealthSuccess", {fg = oxocharcoal.green, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "@text.literal.commodity", {fg = oxocharcoal.green, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "@number", {fg = oxocharcoal.base09, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "@number.date", {fg = oxocharcoal.teal, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "@number.date.effective", {fg = oxocharcoal.green, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "@number.interval", {fg = oxocharcoal.base09, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "@number.status", {fg = oxocharcoal.pink, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "@number.quantity", {fg = oxocharcoal.blue, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "@number.quantity.negative", {fg = oxocharcoal.color10, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "LspInlayHint", {fg = oxocharcoal.grey60, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "LspCodeLens", {fg = oxocharcoal.grey60, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "LspReferenceText", {fg = oxocharcoal.none, bg = oxocharcoal.grey03})
vim.api.nvim_set_hl(0, "LspReferenceread", {fg = oxocharcoal.none, bg = oxocharcoal.grey03})
vim.api.nvim_set_hl(0, "LspReferenceWrite", {fg = oxocharcoal.none, bg = oxocharcoal.grey03})
vim.api.nvim_set_hl(0, "LspSignatureActiveParameter", {fg = oxocharcoal.teal, bg = oxocharcoal.none, bold = true})
vim.api.nvim_set_hl(0, "keyword", {fg = oxocharcoal.color1, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "identifier", {fg = oxocharcoal.color2, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "string", {fg = oxocharcoal.color3, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "escape_char", {fg = oxocharcoal.color4, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "constant", {fg = oxocharcoal.color3, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "comment", {fg = oxocharcoal.color6, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "todo", {fg = oxocharcoal.color7, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "note", {fg = oxocharcoal.color8, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "warn", {fg = oxocharcoal.color9, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "error", {fg = oxocharcoal.color10, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "preprocessor", {fg = oxocharcoal.color11, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "number", {fg = oxocharcoal.color3, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "label", {fg = oxocharcoal.color13, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "operator", {fg = oxocharcoal.color14, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "type", {fg = oxocharcoal.color2, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "method", {fg = oxocharcoal.color16, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "punctuation", {fg = oxocharcoal.color14, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "instance_field", {fg = oxocharcoal.color18, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "decorator", {fg = oxocharcoal.color19, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "self_param", {fg = oxocharcoal.color1, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "format_item", {fg = oxocharcoal.color21, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "interface", {fg = oxocharcoal.color22, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "namespace", {fg = oxocharcoal.color2, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "parameter", {fg = oxocharcoal.color24, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "variable", {fg = oxocharcoal.white, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "symbol", {fg = oxocharcoal.color2, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "lifetime", {fg = oxocharcoal.color4, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "text", {fg = oxocharcoal.color27, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "text_heading", {fg = oxocharcoal.color11, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "uri", {fg = oxocharcoal.color8, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "@lsp.type.class", {link = "type"})
vim.api.nvim_set_hl(0, "@lsp.type.decorator", {link = "decorator"})
vim.api.nvim_set_hl(0, "@lsp.type.function", {link = "method"})
vim.api.nvim_set_hl(0, "@lsp.type.macro", {})
vim.api.nvim_set_hl(0, "@lsp.type.method", {link = "method"})
vim.api.nvim_set_hl(0, "@lsp.type.struct", {link = "type"})
vim.api.nvim_set_hl(0, "@lsp.type.type", {link = "type"})
vim.api.nvim_set_hl(0, "@lsp.type.typeParameter", {link = "keyword"})
vim.api.nvim_set_hl(0, "@lsp.type.selfParameter", {link = "self_param"})
vim.api.nvim_set_hl(0, "@lsp.type.builtinConstant", {link = "constant"})
vim.api.nvim_set_hl(0, "@lsp.type.magicFunction", {link = "method"})
vim.api.nvim_set_hl(0, "@lsp.type.boolean", {link = "keyword"})
vim.api.nvim_set_hl(0, "@lsp.type.builtinType", {link = "type"})
vim.api.nvim_set_hl(0, "@lsp.type.comment", {link = "comment"})
vim.api.nvim_set_hl(0, "@lsp.type.enum", {link = "type"})
vim.api.nvim_set_hl(0, "@lsp.type.enumMember", {link = "constant"})
vim.api.nvim_set_hl(0, "@lsp.type.escapeSequence", {link = "escape_char"})
vim.api.nvim_set_hl(0, "@lsp.type.formatSpecifier", {link = "format_item"})
vim.api.nvim_set_hl(0, "@lsp.type.interface", {link = "interface"})
vim.api.nvim_set_hl(0, "@lsp.type.keyword", {link = "keyword"})
vim.api.nvim_set_hl(0, "@lsp.type.namespace", {link = "namespace"})
vim.api.nvim_set_hl(0, "@lsp.type.number", {link = "number"})
vim.api.nvim_set_hl(0, "@lsp.type.operator", {link = "operator"})
vim.api.nvim_set_hl(0, "@lsp.type.parameter", {link = "parameter"})
vim.api.nvim_set_hl(0, "@lsp.type.property", {link = "instance_field"})
vim.api.nvim_set_hl(0, "@lsp.type.selfKeyword", {link = "self_param"})
vim.api.nvim_set_hl(0, "@lsp.type.string.rust", {link = "string"})
vim.api.nvim_set_hl(0, "@lsp.type.typeAlias", {link = "type"})
vim.api.nvim_set_hl(0, "@lsp.type.unresolvedReference", {link = "error"})
vim.api.nvim_set_hl(0, "@lsp.type.variable", {link = "variable"})
vim.api.nvim_set_hl(0, "@lsp.typemod.variable.globalScope", {link = "identifier"})
vim.api.nvim_set_hl(0, "@lsp.mod.readonly", {})
vim.api.nvim_set_hl(0, "@lsp.mod.typeHint", {link = "type"})
vim.api.nvim_set_hl(0, "@lsp.mod.builtin", {})
vim.api.nvim_set_hl(0, "@lsp.typemod.class.defaultLibrary", {link = "type"})
vim.api.nvim_set_hl(0, "@lsp.typemod.enum.defaultLibrary", {link = "type"})
vim.api.nvim_set_hl(0, "@lsp.typemod.enumMember.defaultLibrary", {link = "constant"})
vim.api.nvim_set_hl(0, "@lsp.typemod.function.defaultLibrary", {link = "method"})
vim.api.nvim_set_hl(0, "@lsp.typemod.keyword.async", {link = "keyword"})
vim.api.nvim_set_hl(0, "@lsp.typemod.macro.defaultLibrary", {})
vim.api.nvim_set_hl(0, "@lsp.typemod.method.defaultLibrary", {})
vim.api.nvim_set_hl(0, "@lsp.typemod.operator.injected", {link = "operator"})
vim.api.nvim_set_hl(0, "@lsp.typemod.string.injected", {link = "string"})
vim.api.nvim_set_hl(0, "@lsp.typemod.operator.controlFlow", {})
vim.api.nvim_set_hl(0, "@lsp.typemod.keyword.documentation", {})
vim.api.nvim_set_hl(0, "@lsp.typemod.variable.global", {link = "symbol"})
vim.api.nvim_set_hl(0, "@lsp.typemod.variable.static", {})
vim.api.nvim_set_hl(0, "@lsp.typemod.variable.defaultLibrary", {})
vim.api.nvim_set_hl(0, "@lsp.typemod.function.builtin", {})
vim.api.nvim_set_hl(0, "@lsp.typemod.function.readonly", {})
vim.api.nvim_set_hl(0, "@lsp.typemod.type.defaultLibrary", {})
vim.api.nvim_set_hl(0, "@lsp.typemod.variable.defaultLibrary", {})
vim.api.nvim_set_hl(0, "@lsp.typemod.variable.injected", {link = "variable"})
vim.api.nvim_set_hl(0, "@comment", {link = "comment"})
vim.api.nvim_set_hl(0, "@comment.todo", {link = "todo"})
vim.api.nvim_set_hl(0, "@comment.note", {link = "note"})
vim.api.nvim_set_hl(0, "@comment.warning", {link = "warn"})
vim.api.nvim_set_hl(0, "@comment.error", {link = "error"})
vim.api.nvim_set_hl(0, "@error", {link = "error"})
vim.api.nvim_set_hl(0, "@preproc", {link = "preprocessor"})
vim.api.nvim_set_hl(0, "@define", {link = "preprocessor"})
vim.api.nvim_set_hl(0, "@operator", {link = "operator"})
vim.api.nvim_set_hl(0, "@punctuation.delimiter", {link = "punctuation"})
vim.api.nvim_set_hl(0, "@punctuation.bracket", {link = "punctuation"})
vim.api.nvim_set_hl(0, "@punctuation.special", {link = "punctuation"})
vim.api.nvim_set_hl(0, "@string", {link = "string"})
vim.api.nvim_set_hl(0, "@string.regex", {link = "regex"})
vim.api.nvim_set_hl(0, "@string.escape", {link = "escape_char"})
vim.api.nvim_set_hl(0, "@character", {link = "string"})
vim.api.nvim_set_hl(0, "@boolean", {link = "keyword"})
vim.api.nvim_set_hl(0, "@number", {link = "number"})
vim.api.nvim_set_hl(0, "@float", {link = "number"})
vim.api.nvim_set_hl(0, "@function", {link = "method"})
vim.api.nvim_set_hl(0, "@function.builtin", {link = "method"})
vim.api.nvim_set_hl(0, "@function.macro", {link = "method"})
vim.api.nvim_set_hl(0, "@method", {link = "method"})
vim.api.nvim_set_hl(0, "@constructor", {link = "type"})
vim.api.nvim_set_hl(0, "@parameter", {link = "parameter"})
vim.api.nvim_set_hl(0, "@keyword", {link = "keyword"})
vim.api.nvim_set_hl(0, "@keyword.function", {link = "keyword"})
vim.api.nvim_set_hl(0, "@keyword.operator", {link = "operator"})
vim.api.nvim_set_hl(0, "@conditional", {link = "keyword"})
vim.api.nvim_set_hl(0, "@repeat", {link = "keyword"})
vim.api.nvim_set_hl(0, "@label", {link = "label"})
vim.api.nvim_set_hl(0, "@include", {link = "preprocessor"})
vim.api.nvim_set_hl(0, "@exception", {})
vim.api.nvim_set_hl(0, "@type", {link = "type"})
vim.api.nvim_set_hl(0, "@type.builtin", {link = "type"})
vim.api.nvim_set_hl(0, "@type.qualifier", {link = "keyword"})
vim.api.nvim_set_hl(0, "@type.storageclass", {link = "keyword"})
vim.api.nvim_set_hl(0, "@type.lifetime", {link = "lifetime"})
vim.api.nvim_set_hl(0, "@attribute", {link = "decorator"})
vim.api.nvim_set_hl(0, "@field", {link = "instance_field"})
vim.api.nvim_set_hl(0, "@property", {link = "instance_field"})
vim.api.nvim_set_hl(0, "@variable", {link = "variable"})
vim.api.nvim_set_hl(0, "@variable.builtin", {link = "variable"})
vim.api.nvim_set_hl(0, "@variable.global", {link = "identifier"})
vim.api.nvim_set_hl(0, "@constant", {link = "constant"})
vim.api.nvim_set_hl(0, "@constant.builtin", {link = "constant"})
vim.api.nvim_set_hl(0, "@constant.macro", {})
vim.api.nvim_set_hl(0, "@namespace", {link = "namespace"})
vim.api.nvim_set_hl(0, "@symbol", {link = "symbol"})
vim.api.nvim_set_hl(0, "@markup", {link = "text"})
vim.api.nvim_set_hl(0, "@markup.strong", {link = "text", bold = true})
vim.api.nvim_set_hl(0, "@markup.emphasis", {link = "text", bold = true, italic = true})
vim.api.nvim_set_hl(0, "@markup.underline", {link = "text", underline = true})
vim.api.nvim_set_hl(0, "@markup.strike", {link = "text", strikethrough = true})
vim.api.nvim_set_hl(0, "@markup.title", {link = "text_heading"})
vim.api.nvim_set_hl(0, "@markup.literal", {link = "text"})
vim.api.nvim_set_hl(0, "@markup.uri", {link = "uri", underline = true})
vim.api.nvim_set_hl(0, "@markup.todo", {link = "todo"})
vim.api.nvim_set_hl(0, "@markup.note", {link = "note"})
vim.api.nvim_set_hl(0, "@markup.warning", {link = "warn"})
vim.api.nvim_set_hl(0, "@markup.danger", {link = "error"})
vim.api.nvim_set_hl(0, "@tag", {fg = oxocharcoal.base09, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "@tag.attribute", {fg = oxocharcoal.lightblue, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "@tag.delimiter", {fg = oxocharcoal.lightblue, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "@reference", {fg = oxocharcoal.grey04, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "helpHyperTextJump", {fg = oxocharcoal.teal, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "helpSpecial", {fg = oxocharcoal.base09, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "helpHeadline", {fg = oxocharcoal.color10, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "helpHeader", {fg = oxocharcoal.lightblue, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "markdownBlockquote", {fg = oxocharcoal.teal, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "markdownBold", {link = "Bold"})
vim.api.nvim_set_hl(0, "markdownItalic", {link = "Italic"})
vim.api.nvim_set_hl(0, "markdownBoldItalic", {fg = oxocharcoal.none, bg = oxocharcoal.none, bold = true, italic = true})
vim.api.nvim_set_hl(0, "markdownRule", {link = "Comment"})
vim.api.nvim_set_hl(0, "markdownH1", {fg = oxocharcoal.color10, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "markdownH2", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "markdownH3", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "markdownH4", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "markdownH5", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "markdownH6", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "markdownHeadingDelimiter", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "markdownHeadingRule", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "markdownUrl", {fg = oxocharcoal.color28, bg = oxocharcoal.none, underline = true})
vim.api.nvim_set_hl(0, "markdownCode", {link = "String"})
vim.api.nvim_set_hl(0, "markdownCodeBlock", {link = "markdownCode"})
vim.api.nvim_set_hl(0, "markdownCodeDelimiter", {link = "markdownCode"})
vim.api.nvim_set_hl(0, "markdownListMarker", {fg = oxocharcoal.teal, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "markdownOrderedListMarker", {fg = oxocharcoal.teal, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "asciidocAttributeEntry", {fg = oxocharcoal.lightblue, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "asciidocAttributeList", {link = "asciidocAttributeEntry"})
vim.api.nvim_set_hl(0, "asciidocAttributeRef", {link = "asciidocAttributeEntry"})
vim.api.nvim_set_hl(0, "asciidocHLabel", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "asciidocOneLineTitle", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "asciidocQuotedMonospaced", {link = "markdownBlockquote"})
vim.api.nvim_set_hl(0, "asciidocURL", {link = "markdownUrl"})
vim.api.nvim_set_hl(0, "StatusLine", {fg = oxocharcoal.grey05, bg = oxocharcoal.black})
vim.api.nvim_set_hl(0, "StatusLineNC", {fg = oxocharcoal.grey04, bg = oxocharcoal.grey01})
vim.api.nvim_set_hl(0, "StatusReplace", {fg = oxocharcoal.black, bg = oxocharcoal.color24})
vim.api.nvim_set_hl(0, "StatusInsert", {fg = oxocharcoal.black, bg = oxocharcoal.color34})
vim.api.nvim_set_hl(0, "StatusVisual", {fg = oxocharcoal.black, bg = oxocharcoal.color2})
vim.api.nvim_set_hl(0, "StatusTerminal", {fg = oxocharcoal.black, bg = oxocharcoal.grey03})
vim.api.nvim_set_hl(0, "StatusNormal", {fg = oxocharcoal.black, bg = oxocharcoal.color1})
vim.api.nvim_set_hl(0, "StatusCommand", {fg = oxocharcoal.black, bg = oxocharcoal.color3})
vim.api.nvim_set_hl(0, "StatusLineDiagnosticWarn", {fg = oxocharcoal.color9, bg = oxocharcoal.black})
vim.api.nvim_set_hl(0, "StatusLineDiagnosticError", {fg = oxocharcoal.color10, bg = oxocharcoal.black, bold = true})
vim.api.nvim_set_hl(0, "TelescopeBorder", {fg = oxocharcoal.blend, bg = oxocharcoal.blend})
vim.api.nvim_set_hl(0, "TelescopePromptBorder", {fg = oxocharcoal.grey02, bg = oxocharcoal.grey02})
vim.api.nvim_set_hl(0, "TelescopePromptNormal", {fg = oxocharcoal.grey05, bg = oxocharcoal.grey02})
vim.api.nvim_set_hl(0, "TelescopePromptPrefix", {fg = oxocharcoal.teal, bg = oxocharcoal.grey02})
vim.api.nvim_set_hl(0, "TelescopeNormal", {fg = oxocharcoal.grey05, bg = oxocharcoal.blend})
vim.api.nvim_set_hl(0, "TelescopePreviewTitle", {fg = oxocharcoal.grey01, bg = oxocharcoal.pink})
vim.api.nvim_set_hl(0, "TelescopePromptTitle", {fg = oxocharcoal.grey01, bg = oxocharcoal.blue})
vim.api.nvim_set_hl(0, "TelescopeResultsTitle", {fg = oxocharcoal.blend, bg = oxocharcoal.blend})
vim.api.nvim_set_hl(0, "TelescopeSelection", {fg = oxocharcoal.none, bg = oxocharcoal.grey02})
vim.api.nvim_set_hl(0, "TelescopePreviewLine", {fg = oxocharcoal.none, bg = oxocharcoal.grey01})
vim.api.nvim_set_hl(0, "TelescopeMatching", {fg = oxocharcoal.none, bg = oxocharcoal.color36})
vim.api.nvim_set_hl(0, "TelescopePreviewMatch", {fg = oxocharcoal.none, bg = oxocharcoal.color36})
vim.api.nvim_set_hl(0, "NotifyERRORBorder", {fg = oxocharcoal.color10, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "NotifyWARNBorder", {fg = oxocharcoal.color9, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "NotifyINFOBorder", {fg = oxocharcoal.color28, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "NotifyDEBUGBorder", {fg = oxocharcoal.green, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "NotifyTRACEBorder", {fg = oxocharcoal.green, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "NotifyERRORIcon", {fg = oxocharcoal.color10, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "NotifyWARNIcon", {fg = oxocharcoal.color9, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "NotifyINFOIcon", {fg = oxocharcoal.color28, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "NotifyDEBUGIcon", {fg = oxocharcoal.green, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "NotifyTRACEIcon", {fg = oxocharcoal.green, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "NotifyERRORTitle", {fg = oxocharcoal.color10, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "NotifyWARNTitle", {fg = oxocharcoal.color9, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "NotifyINFOTitle", {fg = oxocharcoal.color28, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "NotifyDEBUGTitle", {fg = oxocharcoal.green, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "NotifyTRACETitle", {fg = oxocharcoal.green, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "CmpItemAbbr", {fg = oxocharcoal.grey04, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", {fg = oxocharcoal.white, bg = oxocharcoal.none, bold = true})
vim.api.nvim_set_hl(0, "CmpItemAbbrMatchFuzzy", {fg = oxocharcoal.grey05, bg = oxocharcoal.none, bold = true})
vim.api.nvim_set_hl(0, "CmpItemMenu", {fg = oxocharcoal.grey04, bg = oxocharcoal.none, italic = true})
vim.api.nvim_set_hl(0, "CmpItemKindInterface", {bg = oxocharcoal.none, fg = oxocharcoal.color22})
vim.api.nvim_set_hl(0, "CmpItemKindColor", {bg = oxocharcoal.none, fg = oxocharcoal.teal})
vim.api.nvim_set_hl(0, "CmpItemKindTypeParameter", {bg = oxocharcoal.none, fg = oxocharcoal.color2})
vim.api.nvim_set_hl(0, "CmpItemKindText", {bg = oxocharcoal.none, fg = oxocharcoal.color27})
vim.api.nvim_set_hl(0, "CmpItemKindEnum", {bg = oxocharcoal.none, fg = oxocharcoal.color2})
vim.api.nvim_set_hl(0, "CmpItemKindKeyword", {bg = oxocharcoal.none, fg = oxocharcoal.color1})
vim.api.nvim_set_hl(0, "CmpItemKindConstant", {bg = oxocharcoal.none, fg = oxocharcoal.color3})
vim.api.nvim_set_hl(0, "CmpItemKindConstructor", {bg = oxocharcoal.none, fg = oxocharcoal.color2})
vim.api.nvim_set_hl(0, "CmpItemKindReference", {bg = oxocharcoal.none, fg = oxocharcoal.orange})
vim.api.nvim_set_hl(0, "CmpItemKindFunction", {bg = oxocharcoal.none, fg = oxocharcoal.color16})
vim.api.nvim_set_hl(0, "CmpItemKindStruct", {bg = oxocharcoal.none, fg = oxocharcoal.color2})
vim.api.nvim_set_hl(0, "CmpItemKindClass", {bg = oxocharcoal.none, fg = oxocharcoal.color2})
vim.api.nvim_set_hl(0, "CmpItemKindModule", {bg = oxocharcoal.none, fg = oxocharcoal.color2})
vim.api.nvim_set_hl(0, "CmpItemKindOperator", {bg = oxocharcoal.none, fg = oxocharcoal.color14})
vim.api.nvim_set_hl(0, "CmpItemKindField", {bg = oxocharcoal.none, fg = oxocharcoal.color18})
vim.api.nvim_set_hl(0, "CmpItemKindProperty", {bg = oxocharcoal.none, fg = oxocharcoal.color18})
vim.api.nvim_set_hl(0, "CmpItemKindEvent", {bg = oxocharcoal.none, fg = oxocharcoal.color18})
vim.api.nvim_set_hl(0, "CmpItemKindUnit", {bg = oxocharcoal.none, fg = oxocharcoal.green})
vim.api.nvim_set_hl(0, "CmpItemKindSnippet", {bg = oxocharcoal.none, fg = oxocharcoal.green})
vim.api.nvim_set_hl(0, "CmpItemKindFolder", {bg = oxocharcoal.none, fg = oxocharcoal.green})
vim.api.nvim_set_hl(0, "CmpItemKindVariable", {bg = oxocharcoal.none, fg = oxocharcoal.white})
vim.api.nvim_set_hl(0, "CmpItemKindFile", {bg = oxocharcoal.none, fg = oxocharcoal.lavander})
vim.api.nvim_set_hl(0, "CmpItemKindMethod", {bg = oxocharcoal.none, fg = oxocharcoal.color16})
vim.api.nvim_set_hl(0, "CmpItemKindValue", {bg = oxocharcoal.none, fg = oxocharcoal.lightblue})
vim.api.nvim_set_hl(0, "CmpItemKindEnumMember", {bg = oxocharcoal.none, fg = oxocharcoal.color3})
vim.api.nvim_set_hl(0, "NvimTreeImageFile", {fg = oxocharcoal.pink, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "NvimTreeFolderIcon", {fg = oxocharcoal.pink, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "NvimTreeWinSeparator", {fg = oxocharcoal.black, bg = oxocharcoal.black})
vim.api.nvim_set_hl(0, "NvimTreeFolderName", {fg = oxocharcoal.base09, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "NvimTreeIndentMarker", {fg = oxocharcoal.grey02, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "NvimTreeEmptyFolderName", {fg = oxocharcoal.lightblue, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "NvimTreeOpenedFolderName", {fg = oxocharcoal.lightblue, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "NvimTreeNormal", {fg = oxocharcoal.grey04, bg = oxocharcoal.black})
vim.api.nvim_set_hl(0, "NeogitBranch", {fg = oxocharcoal.orange, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "NeogitRemote", {fg = oxocharcoal.base09, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "NeogitHunkHeader", {fg = oxocharcoal.grey04, bg = oxocharcoal.grey02})
vim.api.nvim_set_hl(0, "NeogitHunkHeaderHighlight", {fg = oxocharcoal.grey04, bg = oxocharcoal.grey03})
vim.api.nvim_set_hl(0, "HydraRed", {fg = oxocharcoal.pink, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "HydraBlue", {fg = oxocharcoal.base09, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "HydraAmaranth", {fg = oxocharcoal.color10, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "HydraTeal", {fg = oxocharcoal.teal, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "HydraHint", {fg = oxocharcoal.none, bg = oxocharcoal.blend})
vim.api.nvim_set_hl(0, "alpha1", {fg = oxocharcoal.grey03, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "alpha2", {fg = oxocharcoal.grey04, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "alpha3", {fg = oxocharcoal.grey03, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "CodeBlock", {fg = oxocharcoal.none, bg = oxocharcoal.grey01})
vim.api.nvim_set_hl(0, "BufferLineFill", {bg = oxocharcoal.abyss, fg = oxocharcoal.grey01})
vim.api.nvim_set_hl(0, "BufferLineBackground", {bg = oxocharcoal.black, fg = oxocharcoal.grey02})
vim.api.nvim_set_hl(0, "BufferLineDiagnostic", {fg = oxocharcoal.color10, bg = oxocharcoal.none, bold = true})
vim.api.nvim_set_hl(0, "BufferLineDiagnosticVisible", {fg = oxocharcoal.color10, bg = oxocharcoal.none, bold = true})
vim.api.nvim_set_hl(0, "htmlH1", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "mkdRule", {link = "markdownRule"})
vim.api.nvim_set_hl(0, "mkdListItem", {link = "markdownListMarker"})
vim.api.nvim_set_hl(0, "mkdListItemCheckbox", {link = "markdownListMarker"})
vim.api.nvim_set_hl(0, "VimwikiHeader1", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "VimwikiHeader2", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "VimwikiHeader3", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "VimwikiHeader4", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "VimwikiHeader5", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "VimwikiHeader6", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "VimwikiHeaderChar", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "VimwikiList", {link = "markdownListMarker"})
vim.api.nvim_set_hl(0, "VimwikiLink", {link = "markdownUrl"})
vim.api.nvim_set_hl(0, "VimwikiCode", {link = "markdownCode"})
vim.api.nvim_set_hl(0, "WhichKey", {link = "method"})
vim.api.nvim_set_hl(0, "WhichKeyGroup", {link = "keyword"})
vim.api.nvim_set_hl(0, "WhichKeyDesc", {link = "text"})
vim.api.nvim_set_hl(0, "WhichKeyValue", {link = "comment"})
vim.api.nvim_set_hl(0, "LazySpecial", {link = "uri"})
return {oxocharcoal = oxocharcoal}