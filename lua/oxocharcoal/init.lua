local _local_1_ = require("oxocharcoal.colorutils")
local blend_hex = _local_1_["blend-hex"]
if vim.g.colors_name then
  vim.cmd.hi("clear")
else
end
vim.g["colors_name"] = "oxocharcoal"
vim.o["termguicolors"] = true
local base00 = "#161616"
local base06 = "#ffffff"
local base09 = "#78a9ff"
local oxocharcoal = (((vim.o.background == "dark") and {base00 = base00, base01 = blend_hex(base00, base06, 0.085), base02 = blend_hex(base00, base06, 0.18), base03 = blend_hex(base00, base06, 0.3), base04 = blend_hex(base00, base06, 0.82), base05 = blend_hex(base00, base06, 0.95), base06 = base06, base07 = "#08bdba", base08 = "#3ddbd9", base09 = base09, base10 = "#ee5396", base11 = "#33b1ff", base12 = "#ff7eb6", base13 = "#42be65", base14 = "#be95ff", base15 = "#82cfff", base16 = "#ffc37e", blend = "#131313", none = "NONE"}) or {base00 = base06, base01 = blend_hex(base00, base06, 0.95), base02 = blend_hex(base00, base06, 0.82), base03 = base00, base04 = "#37474F", base05 = "#90A4AE", base06 = "#525252", base07 = "#08bdba", base08 = "#ff7eb6", base09 = "#ee5396", base10 = "#FF6F00", base11 = "#0f62fe", base12 = "#673AB7", base13 = "#42be65", base14 = "#be95ff", base15 = "#FFAB91", base16 = "base10", blend = "#FAFAFA", none = "NONE"})
do end (vim.g)["terminal_color_0"] = oxocharcoal.base01
vim.g["terminal_color_1"] = oxocharcoal.base11
vim.g["terminal_color_2"] = oxocharcoal.base14
vim.g["terminal_color_3"] = oxocharcoal.base13
vim.g["terminal_color_4"] = oxocharcoal.base09
vim.g["terminal_color_5"] = oxocharcoal.base15
vim.g["terminal_color_6"] = oxocharcoal.base08
vim.g["terminal_color_7"] = oxocharcoal.base05
vim.g["terminal_color_8"] = oxocharcoal.base03
vim.g["terminal_color_9"] = oxocharcoal.base11
vim.g["terminal_color_10"] = oxocharcoal.base14
vim.g["terminal_color_11"] = oxocharcoal.base13
vim.g["terminal_color_12"] = oxocharcoal.base09
vim.g["terminal_color_13"] = oxocharcoal.base15
vim.g["terminal_color_14"] = oxocharcoal.base07
vim.g["terminal_color_15"] = oxocharcoal.base06
vim.api.nvim_set_hl(0, "ColorColumn", {fg = oxocharcoal.none, bg = oxocharcoal.base01})
vim.api.nvim_set_hl(0, "Cursor", {fg = oxocharcoal.base00, bg = oxocharcoal.base04})
vim.api.nvim_set_hl(0, "CursorLine", {fg = oxocharcoal.none, bg = oxocharcoal.base01})
vim.api.nvim_set_hl(0, "CursorColumn", {fg = oxocharcoal.none, bg = oxocharcoal.base01})
vim.api.nvim_set_hl(0, "CursorLineNr", {fg = oxocharcoal.base04, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "QuickFixLine", {fg = oxocharcoal.none, bg = oxocharcoal.base01})
vim.api.nvim_set_hl(0, "Error", {fg = oxocharcoal.base10, bg = oxocharcoal.base01})
vim.api.nvim_set_hl(0, "LineNr", {fg = oxocharcoal.base03, bg = oxocharcoal.base00})
vim.api.nvim_set_hl(0, "NonText", {fg = oxocharcoal.base02, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "Normal", {fg = oxocharcoal.base04, bg = oxocharcoal.base00})
vim.api.nvim_set_hl(0, "Pmenu", {fg = oxocharcoal.base04, bg = oxocharcoal.base01})
vim.api.nvim_set_hl(0, "PmenuSbar", {fg = oxocharcoal.base04, bg = oxocharcoal.base01})
vim.api.nvim_set_hl(0, "PmenuSel", {fg = oxocharcoal.base08, bg = oxocharcoal.base02})
vim.api.nvim_set_hl(0, "PmenuThumb", {fg = oxocharcoal.base08, bg = oxocharcoal.base02})
vim.api.nvim_set_hl(0, "SpecialKey", {fg = oxocharcoal.base03, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "Visual", {fg = oxocharcoal.none, bg = oxocharcoal.base02})
vim.api.nvim_set_hl(0, "VisualNOS", {fg = oxocharcoal.none, bg = oxocharcoal.base02})
vim.api.nvim_set_hl(0, "TooLong", {fg = oxocharcoal.none, bg = oxocharcoal.base02})
vim.api.nvim_set_hl(0, "Debug", {fg = oxocharcoal.base13, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "Macro", {fg = oxocharcoal.base07, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "MatchParen", {fg = oxocharcoal.none, bg = oxocharcoal.base02, underline = true})
vim.api.nvim_set_hl(0, "Bold", {fg = oxocharcoal.none, bg = oxocharcoal.none, bold = true})
vim.api.nvim_set_hl(0, "Italic", {fg = oxocharcoal.none, bg = oxocharcoal.none, italic = true})
vim.api.nvim_set_hl(0, "Underlined", {fg = oxocharcoal.none, bg = oxocharcoal.none, underline = true})
vim.api.nvim_set_hl(0, "DiagnosticWarn", {fg = oxocharcoal.base14, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "DiagnosticError", {fg = oxocharcoal.base10, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "DiagnosticInfo", {fg = oxocharcoal.base09, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "DiagnosticHint", {fg = oxocharcoal.base04, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", {fg = oxocharcoal.base14, bg = oxocharcoal.none, undercurl = true})
vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", {fg = oxocharcoal.base10, bg = oxocharcoal.none, undercurl = true})
vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", {fg = oxocharcoal.base04, bg = oxocharcoal.none, undercurl = true})
vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", {fg = oxocharcoal.base04, bg = oxocharcoal.none, undercurl = true})
vim.api.nvim_set_hl(0, "HealthError", {fg = oxocharcoal.base10, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "HealthWarning", {fg = oxocharcoal.base14, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "HealthSuccess", {fg = oxocharcoal.base13, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "@comment", {link = "Comment"})
vim.api.nvim_set_hl(0, "@text.literal.commodity", {fg = oxocharcoal.base13, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "@number", {fg = oxocharcoal.base09, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "@number.date", {fg = oxocharcoal.base08, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "@number.date.effective", {fg = oxocharcoal.base13, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "@number.interval", {fg = oxocharcoal.base09, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "@number.status", {fg = oxocharcoal.base12, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "@number.quantity", {fg = oxocharcoal.base11, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "@number.quantity.negative", {fg = oxocharcoal.base10, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "LspReferenceText", {fg = oxocharcoal.none, bg = oxocharcoal.base03})
vim.api.nvim_set_hl(0, "LspReferenceread", {fg = oxocharcoal.none, bg = oxocharcoal.base03})
vim.api.nvim_set_hl(0, "LspReferenceWrite", {fg = oxocharcoal.none, bg = oxocharcoal.base03})
vim.api.nvim_set_hl(0, "LspSignatureActiveParameter", {fg = oxocharcoal.base08, bg = oxocharcoal.none, bold = true})
vim.api.nvim_set_hl(0, "@lsp.type.class", {link = "Structure"})
vim.api.nvim_set_hl(0, "@lsp.type.decorator", {link = "Decorator"})
vim.api.nvim_set_hl(0, "@lsp.type.function", {link = "@function"})
vim.api.nvim_set_hl(0, "@lsp.type.macro", {link = "Macro"})
vim.api.nvim_set_hl(0, "@lsp.type.method", {link = "@function"})
vim.api.nvim_set_hl(0, "@lsp.type.struct", {link = "Structure"})
vim.api.nvim_set_hl(0, "@lsp.type.type", {link = "Type"})
vim.api.nvim_set_hl(0, "@lsp.type.typeParameter", {link = "Typedef"})
vim.api.nvim_set_hl(0, "@lsp.type.selfParameter", {link = "@variable.builtin"})
vim.api.nvim_set_hl(0, "@lsp.type.builtinConstant", {link = "@constant.builtin"})
vim.api.nvim_set_hl(0, "@lsp.type.magicFunction", {link = "@function.builtin"})
vim.api.nvim_set_hl(0, "@lsp.type.boolean", {link = "@boolean"})
vim.api.nvim_set_hl(0, "@lsp.type.builtinType", {link = "@type.builtin"})
vim.api.nvim_set_hl(0, "@lsp.type.comment", {link = "@comment"})
vim.api.nvim_set_hl(0, "@lsp.type.enum", {link = "@type"})
vim.api.nvim_set_hl(0, "@lsp.type.enumMember", {link = "@constant"})
vim.api.nvim_set_hl(0, "@lsp.type.escapeSequence", {link = "@string.escape"})
vim.api.nvim_set_hl(0, "@lsp.type.formatSpecifier", {link = "@punctuation.special"})
vim.api.nvim_set_hl(0, "@lsp.type.keyword", {link = "@keyword"})
vim.api.nvim_set_hl(0, "@lsp.type.namespace", {link = "@namespace"})
vim.api.nvim_set_hl(0, "@lsp.type.number", {link = "@number"})
vim.api.nvim_set_hl(0, "@lsp.type.operator", {link = "@operator"})
vim.api.nvim_set_hl(0, "@lsp.type.parameter", {link = "@parameter"})
vim.api.nvim_set_hl(0, "@lsp.type.property", {link = "@property"})
vim.api.nvim_set_hl(0, "@lsp.type.selfKeyword", {link = "@variable.builtin"})
vim.api.nvim_set_hl(0, "@lsp.type.string.rust", {link = "@string"})
vim.api.nvim_set_hl(0, "@lsp.type.typeAlias", {link = "@type.definition"})
vim.api.nvim_set_hl(0, "@lsp.type.unresolvedReference", {link = "Error"})
vim.api.nvim_set_hl(0, "@lsp.type.variable", {link = "@variable"})
vim.api.nvim_set_hl(0, "@lsp.mod.readonly", {link = "@constant"})
vim.api.nvim_set_hl(0, "@lsp.mod.typeHint", {link = "Type"})
vim.api.nvim_set_hl(0, "@lsp.mod.builtin", {link = "Special"})
vim.api.nvim_set_hl(0, "@lsp.typemod.class.defaultLibrary", {link = "@type.builtin"})
vim.api.nvim_set_hl(0, "@lsp.typemod.enum.defaultLibrary", {link = "@type.builtin"})
vim.api.nvim_set_hl(0, "@lsp.typemod.enumMember.defaultLibrary", {link = "@constant.builtin"})
vim.api.nvim_set_hl(0, "@lsp.typemod.function.defaultLibrary", {link = "@function.builtin"})
vim.api.nvim_set_hl(0, "@lsp.typemod.keyword.async", {link = "@keyword.coroutine"})
vim.api.nvim_set_hl(0, "@lsp.typemod.macro.defaultLibrary", {link = "@function.builtin"})
vim.api.nvim_set_hl(0, "@lsp.typemod.method.defaultLibrary", {link = "@function.builtin"})
vim.api.nvim_set_hl(0, "@lsp.typemod.operator.injected", {link = "@operator"})
vim.api.nvim_set_hl(0, "@lsp.typemod.string.injected", {link = "@string"})
vim.api.nvim_set_hl(0, "@lsp.typemod.operator.controlFlow", {link = "@exception"})
vim.api.nvim_set_hl(0, "@lsp.typemod.keyword.documentation", {link = "Special"})
vim.api.nvim_set_hl(0, "@lsp.typemod.variable.global", {link = "@constant"})
vim.api.nvim_set_hl(0, "@lsp.typemod.variable.static", {link = "@constant"})
vim.api.nvim_set_hl(0, "@lsp.typemod.variable.defaultLibrary", {link = "Special"})
vim.api.nvim_set_hl(0, "@lsp.typemod.function.builtin", {link = "@function.builtin"})
vim.api.nvim_set_hl(0, "@lsp.typemod.function.readonly", {link = "@method"})
vim.api.nvim_set_hl(0, "@lsp.typemod.variable.defaultLibrary", {link = "@variable.builtin"})
vim.api.nvim_set_hl(0, "@lsp.typemod.variable.injected", {link = "@variable"})
vim.api.nvim_set_hl(0, "Folded", {fg = oxocharcoal.base02, bg = oxocharcoal.base01})
vim.api.nvim_set_hl(0, "FoldColumn", {fg = oxocharcoal.base01, bg = oxocharcoal.base00})
vim.api.nvim_set_hl(0, "SignColumn", {fg = oxocharcoal.base01, bg = oxocharcoal.base00})
vim.api.nvim_set_hl(0, "Directory", {fg = oxocharcoal.base08, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "EndOfBuffer", {fg = oxocharcoal.base01, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "ErrorMsg", {fg = oxocharcoal.base10, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "ModeMsg", {fg = oxocharcoal.base04, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "MoreMsg", {fg = oxocharcoal.base08, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "Question", {fg = oxocharcoal.base04, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "Substitute", {fg = oxocharcoal.base01, bg = oxocharcoal.base08})
vim.api.nvim_set_hl(0, "WarningMsg", {fg = oxocharcoal.base14, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "WildMenu", {fg = oxocharcoal.base08, bg = oxocharcoal.base01})
vim.api.nvim_set_hl(0, "helpHyperTextJump", {fg = oxocharcoal.base08, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "helpSpecial", {fg = oxocharcoal.base09, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "helpHeadline", {fg = oxocharcoal.base10, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "helpHeader", {fg = oxocharcoal.base15, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "DiffAdded", {fg = oxocharcoal.base07, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "DiffChanged", {fg = oxocharcoal.base09, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "DiffRemoved", {fg = oxocharcoal.base10, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "DiffAdd", {bg = "#122f2f", fg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "DiffChange", {bg = "#222a39", fg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "DiffText", {bg = "#2f3f5c", fg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "DiffDelete", {bg = "#361c28", fg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "IncSearch", {fg = oxocharcoal.base06, bg = oxocharcoal.base10})
vim.api.nvim_set_hl(0, "Search", {fg = oxocharcoal.base01, bg = oxocharcoal.base08})
vim.api.nvim_set_hl(0, "TabLine", {link = "StatusLineNC"})
vim.api.nvim_set_hl(0, "TabLineFill", {link = "TabLine"})
vim.api.nvim_set_hl(0, "TabLineSel", {link = "StatusLine"})
vim.api.nvim_set_hl(0, "Title", {fg = oxocharcoal.base04, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "VertSplit", {fg = oxocharcoal.base01, bg = oxocharcoal.base00})
vim.api.nvim_set_hl(0, "Boolean", {fg = oxocharcoal.base09, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "Character", {fg = oxocharcoal.base13, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "Comment", {fg = oxocharcoal.base03, bg = oxocharcoal.none, italic = true})
vim.api.nvim_set_hl(0, "Conceal", {fg = oxocharcoal.none, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "Conditional", {fg = oxocharcoal.base09, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "Constant", {fg = oxocharcoal.base04, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "Decorator", {fg = oxocharcoal.base12, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "Define", {fg = oxocharcoal.base09, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "Delimeter", {fg = oxocharcoal.base06, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "Exception", {fg = oxocharcoal.base09, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "Float", {link = "Number"})
vim.api.nvim_set_hl(0, "Function", {fg = oxocharcoal.base08, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "Identifier", {fg = oxocharcoal.base04, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "Include", {fg = oxocharcoal.base09, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "Keyword", {fg = oxocharcoal.base09, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "Label", {fg = oxocharcoal.base09, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "Number", {fg = oxocharcoal.base15, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "Operator", {fg = oxocharcoal.base09, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "PreProc", {fg = oxocharcoal.base09, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "Repeat", {fg = oxocharcoal.base09, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "Special", {fg = oxocharcoal.base04, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "SpecialChar", {fg = oxocharcoal.base04, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "SpecialComment", {fg = oxocharcoal.base08, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "Statement", {fg = oxocharcoal.base09, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "StorageClass", {fg = oxocharcoal.base09, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "String", {fg = oxocharcoal.base13, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "Structure", {fg = oxocharcoal.base14, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "Tag", {fg = oxocharcoal.base04, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "Todo", {fg = oxocharcoal.base16, bg = oxocharcoal.none, bold = true})
vim.api.nvim_set_hl(0, "Type", {fg = oxocharcoal.base14, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "Typedef", {fg = oxocharcoal.base14, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "markdownBlockquote", {fg = oxocharcoal.base08, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "markdownBold", {link = "Bold"})
vim.api.nvim_set_hl(0, "markdownItalic", {link = "Italic"})
vim.api.nvim_set_hl(0, "markdownBoldItalic", {fg = oxocharcoal.none, bg = oxocharcoal.none, bold = true, italic = true})
vim.api.nvim_set_hl(0, "markdownRule", {link = "Comment"})
vim.api.nvim_set_hl(0, "markdownH1", {fg = oxocharcoal.base10, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "markdownH2", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "markdownH3", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "markdownH4", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "markdownH5", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "markdownH6", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "markdownHeadingDelimiter", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "markdownHeadingRule", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "markdownUrl", {fg = oxocharcoal.base14, bg = oxocharcoal.none, underline = true})
vim.api.nvim_set_hl(0, "markdownCode", {link = "String"})
vim.api.nvim_set_hl(0, "markdownCodeBlock", {link = "markdownCode"})
vim.api.nvim_set_hl(0, "markdownCodeDelimiter", {link = "markdownCode"})
vim.api.nvim_set_hl(0, "markdownUrl", {link = "String"})
vim.api.nvim_set_hl(0, "markdownListMarker", {fg = oxocharcoal.base08, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "markdownOrderedListMarker", {fg = oxocharcoal.base08, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "asciidocAttributeEntry", {fg = oxocharcoal.base15, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "asciidocAttributeList", {link = "asciidocAttributeEntry"})
vim.api.nvim_set_hl(0, "asciidocAttributeRef", {link = "asciidocAttributeEntry"})
vim.api.nvim_set_hl(0, "asciidocHLabel", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "asciidocOneLineTitle", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "asciidocQuotedMonospaced", {link = "markdownBlockquote"})
vim.api.nvim_set_hl(0, "asciidocURL", {link = "markdownUrl"})
vim.api.nvim_set_hl(0, "@comment", {link = "Comment"})
vim.api.nvim_set_hl(0, "@error", {fg = oxocharcoal.base11, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "@operator", {link = "Operator"})
vim.api.nvim_set_hl(0, "@punctuation.delimiter", {fg = oxocharcoal.base04, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "@punctuation.bracket", {fg = oxocharcoal.base04, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "@punctuation.special", {fg = oxocharcoal.base04, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "@string", {link = "String"})
vim.api.nvim_set_hl(0, "@string.regex", {fg = oxocharcoal.base07, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "@string.escape", {fg = oxocharcoal.base15, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "@character", {link = "Character"})
vim.api.nvim_set_hl(0, "@boolean", {link = "Boolean"})
vim.api.nvim_set_hl(0, "@number", {link = "Number"})
vim.api.nvim_set_hl(0, "@float", {link = "Float"})
vim.api.nvim_set_hl(0, "@function", {fg = oxocharcoal.base12, bg = oxocharcoal.none, bold = true})
vim.api.nvim_set_hl(0, "@function.builtin", {fg = oxocharcoal.base12, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "@function.macro", {fg = oxocharcoal.base07, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "@method", {fg = oxocharcoal.base07, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "@constructor", {fg = oxocharcoal.base09, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "@parameter", {fg = oxocharcoal.base08, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "@keyword", {fg = oxocharcoal.base11, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "@keyword.function", {fg = oxocharcoal.base08, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "@keyword.operator", {fg = oxocharcoal.base05, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "@conditional", {fg = oxocharcoal.base09, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "@repeat", {fg = oxocharcoal.base09, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "@label", {fg = oxocharcoal.base15, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "@include", {fg = oxocharcoal.base09, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "@exception", {fg = oxocharcoal.base15, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "@type", {link = "Type"})
vim.api.nvim_set_hl(0, "@type.builtin", {link = "Type"})
vim.api.nvim_set_hl(0, "@attribute", {fg = oxocharcoal.base15, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "@field", {fg = oxocharcoal.base04, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "@property", {fg = oxocharcoal.base16, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "@variable", {fg = oxocharcoal.base04, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "@variable.builtin", {fg = oxocharcoal.base04, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "@constant", {fg = oxocharcoal.base11, bg = oxocharcoal.none, bold = true})
vim.api.nvim_set_hl(0, "@constant.builtin", {fg = oxocharcoal.base07, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "@constant.macro", {fg = oxocharcoal.base07, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "@namespace", {fg = oxocharcoal.base07, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "@symbol", {fg = oxocharcoal.base15, bg = oxocharcoal.none, bold = true})
vim.api.nvim_set_hl(0, "@text", {fg = oxocharcoal.base04, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "@text.strong", {fg = oxocharcoal.none, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "@text.emphasis", {fg = oxocharcoal.base10, bg = oxocharcoal.none, bold = true})
vim.api.nvim_set_hl(0, "@text.underline", {fg = oxocharcoal.base10, bg = oxocharcoal.none, underline = true})
vim.api.nvim_set_hl(0, "@text.strike", {fg = oxocharcoal.base10, bg = oxocharcoal.none, strikethrough = true})
vim.api.nvim_set_hl(0, "@text.title", {fg = oxocharcoal.base10, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "@text.literal", {fg = oxocharcoal.base04, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "@text.uri", {fg = oxocharcoal.base14, bg = oxocharcoal.none, underline = true})
vim.api.nvim_set_hl(0, "@tag", {fg = oxocharcoal.base09, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "@tag.attribute", {fg = oxocharcoal.base15, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "@tag.delimiter", {fg = oxocharcoal.base15, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "@reference", {fg = oxocharcoal.base04, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "NvimInternalError", {fg = oxocharcoal.base00, bg = oxocharcoal.base08})
vim.api.nvim_set_hl(0, "NormalFloat", {fg = oxocharcoal.base05, bg = oxocharcoal.blend})
vim.api.nvim_set_hl(0, "FloatBorder", {fg = oxocharcoal.blend, bg = oxocharcoal.blend})
vim.api.nvim_set_hl(0, "NormalNC", {fg = oxocharcoal.base05, bg = oxocharcoal.base00})
vim.api.nvim_set_hl(0, "TermCursor", {fg = oxocharcoal.base00, bg = oxocharcoal.base04})
vim.api.nvim_set_hl(0, "TermCursorNC", {fg = oxocharcoal.base00, bg = oxocharcoal.base04})
vim.api.nvim_set_hl(0, "StatusLine", {fg = oxocharcoal.base04, bg = oxocharcoal.base00})
vim.api.nvim_set_hl(0, "StatusLineNC", {fg = oxocharcoal.base04, bg = oxocharcoal.base01})
vim.api.nvim_set_hl(0, "StatusReplace", {fg = oxocharcoal.base00, bg = oxocharcoal.base08})
vim.api.nvim_set_hl(0, "StatusInsert", {fg = oxocharcoal.base00, bg = oxocharcoal.base12})
vim.api.nvim_set_hl(0, "StatusVisual", {fg = oxocharcoal.base00, bg = oxocharcoal.base14})
vim.api.nvim_set_hl(0, "StatusTerminal", {fg = oxocharcoal.base00, bg = oxocharcoal.base11})
vim.api.nvim_set_hl(0, "StatusNormal", {fg = oxocharcoal.base00, bg = oxocharcoal.base15})
vim.api.nvim_set_hl(0, "StatusCommand", {fg = oxocharcoal.base00, bg = oxocharcoal.base13})
vim.api.nvim_set_hl(0, "StatusLineDiagnosticWarn", {fg = oxocharcoal.base14, bg = oxocharcoal.base00, bold = true})
vim.api.nvim_set_hl(0, "StatusLineDiagnosticError", {fg = oxocharcoal.base10, bg = oxocharcoal.base00, bold = true})
vim.api.nvim_set_hl(0, "TelescopeBorder", {fg = oxocharcoal.blend, bg = oxocharcoal.blend})
vim.api.nvim_set_hl(0, "TelescopePromptBorder", {fg = oxocharcoal.base02, bg = oxocharcoal.base02})
vim.api.nvim_set_hl(0, "TelescopePromptNormal", {fg = oxocharcoal.base05, bg = oxocharcoal.base02})
vim.api.nvim_set_hl(0, "TelescopePromptPrefix", {fg = oxocharcoal.base08, bg = oxocharcoal.base02})
vim.api.nvim_set_hl(0, "TelescopeNormal", {fg = oxocharcoal.none, bg = oxocharcoal.blend})
vim.api.nvim_set_hl(0, "TelescopePreviewTitle", {fg = oxocharcoal.base02, bg = oxocharcoal.base12})
vim.api.nvim_set_hl(0, "TelescopePromptTitle", {fg = oxocharcoal.base02, bg = oxocharcoal.base11})
vim.api.nvim_set_hl(0, "TelescopeResultsTitle", {fg = oxocharcoal.blend, bg = oxocharcoal.blend})
vim.api.nvim_set_hl(0, "TelescopeSelection", {fg = oxocharcoal.none, bg = oxocharcoal.base02})
vim.api.nvim_set_hl(0, "TelescopePreviewLine", {fg = oxocharcoal.none, bg = oxocharcoal.base01})
vim.api.nvim_set_hl(0, "TelescopeMatching", {fg = oxocharcoal.base08, bg = oxocharcoal.none, bold = true, italic = true})
vim.api.nvim_set_hl(0, "NotifyERRORBorder", {fg = oxocharcoal.base08, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "NotifyWARNBorder", {fg = oxocharcoal.base14, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "NotifyINFOBorder", {fg = oxocharcoal.base05, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "NotifyDEBUGBorder", {fg = oxocharcoal.base13, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "NotifyTRACEBorder", {fg = oxocharcoal.base13, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "NotifyERRORIcon", {fg = oxocharcoal.base08, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "NotifyWARNIcon", {fg = oxocharcoal.base14, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "NotifyINFOIcon", {fg = oxocharcoal.base05, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "NotifyDEBUGIcon", {fg = oxocharcoal.base13, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "NotifyTRACEIcon", {fg = oxocharcoal.base13, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "NotifyERRORTitle", {fg = oxocharcoal.base08, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "NotifyWARNTitle", {fg = oxocharcoal.base14, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "NotifyINFOTitle", {fg = oxocharcoal.base05, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "NotifyDEBUGTitle", {fg = oxocharcoal.base13, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "NotifyTRACETitle", {fg = oxocharcoal.base13, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "CmpItemAbbr", {fg = "#adadad", bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", {fg = oxocharcoal.base05, bg = oxocharcoal.none, bold = true})
vim.api.nvim_set_hl(0, "CmpItemAbbrMatchFuzzy", {fg = oxocharcoal.base04, bg = oxocharcoal.none, bold = true})
vim.api.nvim_set_hl(0, "CmpItemMenu", {fg = oxocharcoal.base04, bg = oxocharcoal.none, italic = true})
vim.api.nvim_set_hl(0, "CmpItemKindInterface", {fg = oxocharcoal.base01, bg = oxocharcoal.base08})
vim.api.nvim_set_hl(0, "CmpItemKindColor", {fg = oxocharcoal.base01, bg = oxocharcoal.base08})
vim.api.nvim_set_hl(0, "CmpItemKindTypeParameter", {fg = oxocharcoal.base01, bg = oxocharcoal.base08})
vim.api.nvim_set_hl(0, "CmpItemKindText", {fg = oxocharcoal.base01, bg = oxocharcoal.base09})
vim.api.nvim_set_hl(0, "CmpItemKindEnum", {fg = oxocharcoal.base01, bg = oxocharcoal.base09})
vim.api.nvim_set_hl(0, "CmpItemKindKeyword", {fg = oxocharcoal.base01, bg = oxocharcoal.base09})
vim.api.nvim_set_hl(0, "CmpItemKindConstant", {fg = oxocharcoal.base01, bg = oxocharcoal.base16})
vim.api.nvim_set_hl(0, "CmpItemKindConstructor", {fg = oxocharcoal.base01, bg = oxocharcoal.base16})
vim.api.nvim_set_hl(0, "CmpItemKindReference", {fg = oxocharcoal.base01, bg = oxocharcoal.base16})
vim.api.nvim_set_hl(0, "CmpItemKindFunction", {fg = oxocharcoal.base01, bg = oxocharcoal.base11})
vim.api.nvim_set_hl(0, "CmpItemKindStruct", {fg = oxocharcoal.base01, bg = oxocharcoal.base11})
vim.api.nvim_set_hl(0, "CmpItemKindClass", {fg = oxocharcoal.base01, bg = oxocharcoal.base11})
vim.api.nvim_set_hl(0, "CmpItemKindModule", {fg = oxocharcoal.base01, bg = oxocharcoal.base11})
vim.api.nvim_set_hl(0, "CmpItemKindOperator", {fg = oxocharcoal.base01, bg = oxocharcoal.base11})
vim.api.nvim_set_hl(0, "CmpItemKindField", {fg = oxocharcoal.base01, bg = oxocharcoal.base12})
vim.api.nvim_set_hl(0, "CmpItemKindProperty", {fg = oxocharcoal.base01, bg = oxocharcoal.base12})
vim.api.nvim_set_hl(0, "CmpItemKindEvent", {fg = oxocharcoal.base01, bg = oxocharcoal.base12})
vim.api.nvim_set_hl(0, "CmpItemKindUnit", {fg = oxocharcoal.base01, bg = oxocharcoal.base13})
vim.api.nvim_set_hl(0, "CmpItemKindSnippet", {fg = oxocharcoal.base01, bg = oxocharcoal.base13})
vim.api.nvim_set_hl(0, "CmpItemKindFolder", {fg = oxocharcoal.base01, bg = oxocharcoal.base13})
vim.api.nvim_set_hl(0, "CmpItemKindVariable", {fg = oxocharcoal.base01, bg = oxocharcoal.base14})
vim.api.nvim_set_hl(0, "CmpItemKindFile", {fg = oxocharcoal.base01, bg = oxocharcoal.base14})
vim.api.nvim_set_hl(0, "CmpItemKindMethod", {fg = oxocharcoal.base01, bg = oxocharcoal.base15})
vim.api.nvim_set_hl(0, "CmpItemKindValue", {fg = oxocharcoal.base01, bg = oxocharcoal.base15})
vim.api.nvim_set_hl(0, "CmpItemKindEnumMember", {fg = oxocharcoal.base01, bg = oxocharcoal.base15})
vim.api.nvim_set_hl(0, "NvimTreeImageFile", {fg = oxocharcoal.base12, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "NvimTreeFolderIcon", {fg = oxocharcoal.base12, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "NvimTreeWinSeparator", {fg = oxocharcoal.base00, bg = oxocharcoal.base00})
vim.api.nvim_set_hl(0, "NvimTreeFolderName", {fg = oxocharcoal.base09, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "NvimTreeIndentMarker", {fg = oxocharcoal.base02, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "NvimTreeEmptyFolderName", {fg = oxocharcoal.base15, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "NvimTreeOpenedFolderName", {fg = oxocharcoal.base15, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "NvimTreeNormal", {fg = oxocharcoal.base04, bg = oxocharcoal.base00})
vim.api.nvim_set_hl(0, "NeogitBranch", {fg = oxocharcoal.base16, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "NeogitRemote", {fg = oxocharcoal.base09, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "NeogitHunkHeader", {fg = oxocharcoal.base04, bg = oxocharcoal.base02})
vim.api.nvim_set_hl(0, "NeogitHunkHeaderHighlight", {fg = oxocharcoal.base04, bg = oxocharcoal.base03})
vim.api.nvim_set_hl(0, "HydraRed", {fg = oxocharcoal.base12, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "HydraBlue", {fg = oxocharcoal.base09, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "HydraAmaranth", {fg = oxocharcoal.base10, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "HydraTeal", {fg = oxocharcoal.base08, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "HydraHint", {fg = oxocharcoal.none, bg = oxocharcoal.blend})
vim.api.nvim_set_hl(0, "alpha1", {fg = oxocharcoal.base03, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "alpha2", {fg = oxocharcoal.base04, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "alpha3", {fg = oxocharcoal.base03, bg = oxocharcoal.none})
vim.api.nvim_set_hl(0, "CodeBlock", {fg = oxocharcoal.none, bg = oxocharcoal.base01})
vim.api.nvim_set_hl(0, "BufferLineDiagnostic", {fg = oxocharcoal.base10, bg = oxocharcoal.none, bold = true})
vim.api.nvim_set_hl(0, "BufferLineDiagnosticVisible", {fg = oxocharcoal.base10, bg = oxocharcoal.none, bold = true})
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
return {oxocharcoal = oxocharcoal}