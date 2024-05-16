;;                               O X O C A R B O N
;        _..._         _..._         _..._         _..._         _..._
;;      .:::::::.     .::::. `.     .::::  `.     .::'   `.     .'     `.
;;     :::::::::::   :::::::.  :   ::::::    :   :::       :   :         :
;;     :::::::::::   ::::::::  :   ::::::    :   :::       :   :         :
;;     `:::::::::'   `::::::' .'   `:::::   .'   `::.     .'   `.       .'
;;       `':::''       `'::'-'       `'::.-'       `':..-'       `-...-'
;;
;;   Colorscheme name:    oxocharcoal themeing system
;;   Description:         Neovim Colorschemes based on orange in fennel made with (hs)luv <3
;;   Author:              https://github.com/f4lcn
;;   Original:            https://github.com/shaunsingh

(local {: blend-hex : darken-hex} (require :oxocharcoal.colorutils))

;; utilities

(macro let! [...]
  (fn let-with-scope! [[scope] name value]
    (let [name (tostring name)
          scope (tostring scope)]
      `(tset ,(match scope
                :b `vim.b
                :w `vim.w
                :t `vim.t
                :g `vim.g) ,name ,value)))

  (match [...]
    [[scope] name value] (let-with-scope! [scope] name value)
    [name value] (let-with-scope! [:g] name value)
    _ (error "expected let! to have at least two arguments: name value")))

(macro set! [option]
  (let [option (tostring option)]
    `(tset vim.o ,option true)))

(macro custom-set-face! [name attributes colors]
  (let [definition (collect [_ attr (ipairs attributes) &into colors]
                     (tostring attr)
                     true)]
    `(vim.api.nvim_set_hl 0 ,name ,definition)))

;; reset variables

(when vim.g.colors_name
  (vim.cmd.hi :clear))

;; set defaults

(let! colors_name :oxocharcoal)
(set! termguicolors)

; (vim.api.nvim_set_var "t_Cs" "\\e[4:3m")
; (vim.api.nvim_set_var "t_Ce" "\\e[4:0m")

;; oxocharcoal palette

(local abyss "#000000")
(local black "#101010")
(local white "#ffffff")
(local blend "#0B0B0B")
(local base09 "#78a9ff")

(local oxocharcoal {
                     : abyss
                     : black
                     :grey01 (blend-hex black white 0.085)
                     :grey02 (blend-hex black white 0.18)
                     :grey03 (blend-hex black white 0.3)
                     :grey60 (blend-hex black white 0.6)
                     :grey04 (blend-hex black white 0.82)
                     :grey05 (blend-hex black white 0.95)
                     : white
                     :cyan "#08bdba"
                     :teal "#3ddbd9"
                     : base09
                     :blue "#33b1ff"
                     :pink "#ff7eb6"
                     :green "#42be65"
                     :lavander "#be95ff"
                     :lightblue "#82cfff"
                     :orange "#ffc37e"
                     :color1 "#94c4ff"
                     :color2 "#e9b1ff"
                     :color3 "#96be78"
                     :color4 "#50b4be"
                     :color6 "#808080" 
                     :color7 "#c8b47d" 
                     :color8 "#61afe1" 
                     :color9 "#e88c00" 
                     :color10 "#dd3962" 
                     :color11 "#c88cdc" 
                     :color13 "#b7b7b7" 
                     :color14 "#bed4e0" 
                     :color16 "#ffb987" 
                     :color18 "#ff9696" 
                     :color19 "#bbb529" 
                     :color21 "#80ff80" 
                     :color22 "#ffcf97" 
                     :color24 "#97f1fd" 
                     :color27 "#dadfe5" 
                     :color28 "#61afe1"
                     :color29 "#00ff00"
                     :color30 "#324146"
                     :color31 "#c35082"
                     :color32 "#283246"
                     :color33 "#ffc86e"
                     :color34 "#ff7eb6"
                     :color35 "#c6dbff"
                     :color36 "#5378c8"
                     : blend
                     :none :NONE})

;; terminal

;; black
(let! terminal_color_0 oxocharcoal.black)
(let! terminal_color_8 oxocharcoal.grey02)
;; red
(let! terminal_color_1 oxocharcoal.color18)
(let! terminal_color_9 oxocharcoal.color10)
;; green
(let! terminal_color_2 oxocharcoal.color3)
(let! terminal_color_10 oxocharcoal.color29)
;; yellow
(let! terminal_color_3 oxocharcoal.color9)
(let! terminal_color_11 oxocharcoal.color16)
;; blue
(let! terminal_color_4 oxocharcoal.color8)
(let! terminal_color_12 oxocharcoal.color1)
;; magenta
(let! terminal_color_5 "#FF7EB6")
(let! terminal_color_13 "#FF7EB6")
;; cyan
(let! terminal_color_6 oxocharcoal.color4)
(let! terminal_color_14 oxocharcoal.color4)
;; white
(let! terminal_color_7 oxocharcoal.grey04)
(let! terminal_color_15 oxocharcoal.white)

;; editor

(custom-set-face! :ColorColumn [] {:fg oxocharcoal.none :bg oxocharcoal.grey01})
(custom-set-face! :Conceal [] {:fg oxocharcoal.color6 :bg oxocharcoal.none})
(custom-set-face! :CurSearch [:underline] {:fg oxocharcoal.black :bg oxocharcoal.color1})
(custom-set-face! :Cursor [] {:fg oxocharcoal.black :bg oxocharcoal.white})
(custom-set-face! :CursorLine [] {:fg oxocharcoal.none :bg oxocharcoal.grey01})
(custom-set-face! :CursorColumn [] {:fg oxocharcoal.none :bg oxocharcoal.grey01})
(custom-set-face! :CursorLineNr [] {:fg oxocharcoal.grey04 :bg oxocharcoal.none})
(custom-set-face! :QuickFixLine [:bold] {:fg oxocharcoal.none :bg oxocharcoal.grey01})
(custom-set-face! :Error [] {:fg oxocharcoal.color10 :bg oxocharcoal.grey01})
(custom-set-face! :LineNr [] {:fg oxocharcoal.grey03 :bg oxocharcoal.black})
(custom-set-face! :NonText [] {:fg oxocharcoal.grey02 :bg oxocharcoal.none})
(custom-set-face! :Normal [] {:fg oxocharcoal.white :bg oxocharcoal.black})
(custom-set-face! :Pmenu [] {:fg oxocharcoal.grey05 :bg oxocharcoal.blend})
(custom-set-face! :PmenuSbar [] {:fg oxocharcoal.grey04 :bg oxocharcoal.blend})
(custom-set-face! :PmenuSel [] {:fg oxocharcoal.color24 :bg oxocharcoal.grey01})
(custom-set-face! :PmenuThumb [] {:fg oxocharcoal.color24 :bg oxocharcoal.grey02})
(custom-set-face! :SpecialKey [] {:fg oxocharcoal.grey03 :bg oxocharcoal.none})
(custom-set-face! :Visual [] {:fg oxocharcoal.black :bg oxocharcoal.color35})
(custom-set-face! :VisualNOS [] {:fg oxocharcoal.black :bg oxocharcoal.color35})
(custom-set-face! :TooLong [] {:fg oxocharcoal.none :bg oxocharcoal.grey02})
(custom-set-face! :Debug [] {:fg oxocharcoal.green :bg oxocharcoal.none})
(custom-set-face! :Macro [] {:fg oxocharcoal.color11 :bg oxocharcoal.none})
(custom-set-face! :MatchParen [] {:fg oxocharcoal.none :bg oxocharcoal.color30})
(custom-set-face! :Bold [:bold] {:fg oxocharcoal.none :bg oxocharcoal.none})
(custom-set-face! :Italic [:italic] {:fg oxocharcoal.none :bg oxocharcoal.none})
(custom-set-face! :Underlined [:underline] {:fg oxocharcoal.none :bg oxocharcoal.none})

;; gutter

(custom-set-face! :Folded [] {:fg oxocharcoal.color6 :bg oxocharcoal.color32})
(custom-set-face! :FoldColumn [] {:fg oxocharcoal.grey01 :bg oxocharcoal.black})
(custom-set-face! :SignColumn [] {:fg oxocharcoal.grey01 :bg oxocharcoal.black})

;; navigation

(custom-set-face! :Directory [] {:fg oxocharcoal.color28 :bg oxocharcoal.none})

;; prompts

(custom-set-face! :EndOfBuffer [] {:fg oxocharcoal.grey01 :bg oxocharcoal.none})
(custom-set-face! :ErrorMsg [] {:fg oxocharcoal.color10 :bg oxocharcoal.none})
(custom-set-face! :ModeMsg [] {:fg oxocharcoal.grey04 :bg oxocharcoal.none})
(custom-set-face! :MoreMsg [] {:fg oxocharcoal.teal :bg oxocharcoal.none})
(custom-set-face! :Question [] {:fg oxocharcoal.color33 :bg oxocharcoal.none})
(custom-set-face! :Substitute [] {:fg oxocharcoal.color24 :bg oxocharcoal.color31})
(custom-set-face! :WarningMsg [] {:fg oxocharcoal.color9 :bg oxocharcoal.none})
(custom-set-face! :WildMenu [] {:fg oxocharcoal.teal :bg oxocharcoal.grey01})
(custom-set-face! :GitSignsAdd [] {:fg oxocharcoal.color29 :bg oxocharcoal.none})
(custom-set-face! :GitSignsChange [] {:fg oxocharcoal.color3 :bg oxocharcoal.none})
(custom-set-face! :GitSignsDelete [] {:fg oxocharcoal.color10 :bg oxocharcoal.none})

;; diff

(custom-set-face! :DiffAdded [] {:fg oxocharcoal.color29 :bg oxocharcoal.none})
(custom-set-face! :DiffChanged [] {:fg oxocharcoal.color3 :bg oxocharcoal.none})
(custom-set-face! :DiffRemoved [] {:fg oxocharcoal.color10 :bg oxocharcoal.none})
(custom-set-face! :DiffAdd [] {:bg (darken-hex oxocharcoal.color29 0.6)  :fg oxocharcoal.none})
(custom-set-face! :DiffChange [] {:bg (darken-hex oxocharcoal.color3 0.6) :fg oxocharcoal.none})
(custom-set-face! :DiffText [] {:bg (darken-hex oxocharcoal.color3 0.6) :fg oxocharcoal.none})
(custom-set-face! :DiffDelete [] {:bg (darken-hex oxocharcoal.color10 0.6) :fg oxocharcoal.none})

;; todo

(custom-set-face! :TodoBgFIX [] {:bg oxocharcoal.color10 :fg oxocharcoal.black})
(custom-set-face! :TodoFgFIX [] {:bg oxocharcoal.none :fg oxocharcoal.color10})

(custom-set-face! :TodoBgHACK [] {:bg oxocharcoal.color9 :fg oxocharcoal.black})
(custom-set-face! :TodoFgHACK [] {:bg oxocharcoal.none :fg oxocharcoal.color9})

(custom-set-face! :TodoBgNOTE [] {:bg oxocharcoal.color28 :fg oxocharcoal.black})
(custom-set-face! :TodoFgNOTE [] {:bg oxocharcoal.none :fg oxocharcoal.color28})

(custom-set-face! :TodoBgPERF [] {:bg oxocharcoal.color28 :fg oxocharcoal.black})
(custom-set-face! :TodoFgPERF [] {:bg oxocharcoal.none :fg oxocharcoal.color28})

(custom-set-face! :TodoBgTEST [] {:bg oxocharcoal.color32 :fg oxocharcoal.black})
(custom-set-face! :TodoFgTEST [] {:bg oxocharcoal.none :fg oxocharcoal.color32})

(custom-set-face! :TodoBgTODO [] {:bg oxocharcoal.color29 :fg oxocharcoal.black})
(custom-set-face! :TodoFgTODO [] {:bg oxocharcoal.none :fg oxocharcoal.color29})

(custom-set-face! :TodoBgWARN [] {:bg oxocharcoal.color9 :fg oxocharcoal.black})
(custom-set-face! :TodoFgWARN [] {:bg oxocharcoal.none :fg oxocharcoal.color9})


;; search

(custom-set-face! :IncSearch [] {:fg oxocharcoal.black :bg oxocharcoal.color1})
(custom-set-face! :Search [] {:fg oxocharcoal.white :bg oxocharcoal.color32})

;; tabs

(custom-set-face! :TabLine [] {:link "StatusLineNC"})
(custom-set-face! :TabLineFill [] {:link "TabLine"})
(custom-set-face! :TabLineSel [] {:link "StatusLine"})

;; window

(custom-set-face! :Title [] {:fg oxocharcoal.grey04 :bg oxocharcoal.none})
(custom-set-face! :VertSplit [] {:fg oxocharcoal.grey01 :bg oxocharcoal.black})

;; neovim

(custom-set-face! :NvimInternalError [] {:fg oxocharcoal.black :bg oxocharcoal.color10})
(custom-set-face! :NormalFloat [] {:fg oxocharcoal.grey05 :bg oxocharcoal.blend})
(custom-set-face! :FloatBorder [] {:fg oxocharcoal.blend :bg oxocharcoal.blend})
(custom-set-face! :NormalNC [] {:fg oxocharcoal.grey03 :bg oxocharcoal.black})
(custom-set-face! :TermCursor [] {:fg oxocharcoal.black :bg oxocharcoal.grey04})
(custom-set-face! :TermCursorNC [] {:fg oxocharcoal.black :bg oxocharcoal.grey04})

;; diagnostics

(custom-set-face! :DiagnosticWarn [] {:fg oxocharcoal.color9 :bg oxocharcoal.none})
(custom-set-face! :DiagnosticError [] {:fg oxocharcoal.color10 :bg oxocharcoal.none})
(custom-set-face! :DiagnosticInfo [] {:fg oxocharcoal.color28 :bg oxocharcoal.none})
(custom-set-face! :DiagnosticHint [] {:fg oxocharcoal.color29 :bg oxocharcoal.none})
(custom-set-face! :DiagnosticUnderlineWarn [:undercurl]
                  {:fg oxocharcoal.none :sp oxocharcoal.color9 :bg oxocharcoal.none})
(custom-set-face! :DiagnosticUnderlineError [:undercurl]
                  {:fg oxocharcoal.none :sp oxocharcoal.color10 :bg oxocharcoal.none})
(custom-set-face! :DiagnosticUnderlineInfo [:undercurl]
                  {:fg oxocharcoal.none :sp oxocharcoal.color28 :bg oxocharcoal.none})
(custom-set-face! :DiagnosticUnderlineHint [:underdotted]
                  {:fg oxocharcoal.none :sp oxocharcoal.color29 :bg oxocharcoal.none})


;; health
(custom-set-face! :HealthError [] {:fg oxocharcoal.color10 :bg oxocharcoal.none})
(custom-set-face! :HealthWarning [] {:fg oxocharcoal.color9 :bg oxocharcoal.none})
(custom-set-face! :HealthSuccess [] {:fg oxocharcoal.green :bg oxocharcoal.none})

;; ledger

(custom-set-face! "@text.literal.commodity" [] {:fg oxocharcoal.green :bg oxocharcoal.none})
(custom-set-face! "@number" [] {:fg oxocharcoal.base09 :bg oxocharcoal.none})
(custom-set-face! "@number.date" [] {:fg oxocharcoal.teal :bg oxocharcoal.none})
(custom-set-face! "@number.date.effective" [] {:fg oxocharcoal.green :bg oxocharcoal.none})
(custom-set-face! "@number.interval" [] {:fg oxocharcoal.base09 :bg oxocharcoal.none})
(custom-set-face! "@number.status" [] {:fg oxocharcoal.pink :bg oxocharcoal.none})
(custom-set-face! "@number.quantity" [] {:fg oxocharcoal.blue :bg oxocharcoal.none})
(custom-set-face! "@number.quantity.negative" [] {:fg oxocharcoal.color10 :bg oxocharcoal.none})

;; lsp

(custom-set-face! :LspInlayHint [] {:fg oxocharcoal.grey60 :bg oxocharcoal.none})
(custom-set-face! :LspCodeLens [] {:fg oxocharcoal.grey60 :bg oxocharcoal.none})
(custom-set-face! :LspReferenceText [] {:fg oxocharcoal.none :bg oxocharcoal.grey03})
(custom-set-face! :LspReferenceread [] {:fg oxocharcoal.none :bg oxocharcoal.grey03})
(custom-set-face! :LspReferenceWrite [] {:fg oxocharcoal.none :bg oxocharcoal.grey03})
(custom-set-face! :LspSignatureActiveParameter [:bold] {:fg oxocharcoal.teal :bg oxocharcoal.none})

;; semantic classes mapping
(custom-set-face! "keyword" [] {:fg oxocharcoal.color1 :bg oxocharcoal.none})
(custom-set-face! "identifier" [] {:fg oxocharcoal.color2 :bg oxocharcoal.none})
(custom-set-face! "string" [] {:fg oxocharcoal.color3 :bg oxocharcoal.none})
(custom-set-face! "escape_char" [] {:fg oxocharcoal.color4 :bg oxocharcoal.none})
(custom-set-face! "constant" [] {:fg oxocharcoal.color3 :bg oxocharcoal.none})
(custom-set-face! "comment" [] {:fg oxocharcoal.color6 :bg oxocharcoal.none})
(custom-set-face! "todo" [] {:fg oxocharcoal.color7 :bg oxocharcoal.none})
(custom-set-face! "note" [] {:fg oxocharcoal.color8 :bg oxocharcoal.none})
(custom-set-face! "warn" [] {:fg oxocharcoal.color9 :bg oxocharcoal.none})
(custom-set-face! "error" [] {:fg oxocharcoal.color10 :bg oxocharcoal.none})
(custom-set-face! "preprocessor" [] {:fg oxocharcoal.color11 :bg oxocharcoal.none})
(custom-set-face! "number" [] {:fg oxocharcoal.color3 :bg oxocharcoal.none})
(custom-set-face! "label" [] {:fg oxocharcoal.color13 :bg oxocharcoal.none})
(custom-set-face! "operator" [] {:fg oxocharcoal.color14 :bg oxocharcoal.none})
(custom-set-face! "type" [] {:fg oxocharcoal.color2 :bg oxocharcoal.none})
(custom-set-face! "method" [] {:fg oxocharcoal.color16 :bg oxocharcoal.none})
(custom-set-face! "punctuation" [] {:fg oxocharcoal.color14 :bg oxocharcoal.none})
(custom-set-face! "instance_field" [] {:fg oxocharcoal.color18 :bg oxocharcoal.none})
(custom-set-face! "decorator" [] {:fg oxocharcoal.color19 :bg oxocharcoal.none})
(custom-set-face! "self_param" [] {:fg oxocharcoal.color1 :bg oxocharcoal.none})
(custom-set-face! "format_item" [] {:fg oxocharcoal.color21 :bg oxocharcoal.none})
(custom-set-face! "interface" [] {:fg oxocharcoal.color22 :bg oxocharcoal.none})
(custom-set-face! "namespace" [] {:fg oxocharcoal.color2 :bg oxocharcoal.none})
(custom-set-face! "parameter" [] {:fg oxocharcoal.color24 :bg oxocharcoal.none})
(custom-set-face! "variable" [] {:fg oxocharcoal.white :bg oxocharcoal.none})
(custom-set-face! "symbol" [] {:fg oxocharcoal.color2 :bg oxocharcoal.none})
(custom-set-face! "lifetime" [] {:fg oxocharcoal.color4 :bg oxocharcoal.none})
(custom-set-face! "text" [] {:fg oxocharcoal.color27 :bg oxocharcoal.none})
(custom-set-face! "text_heading" [] {:fg oxocharcoal.color11 :bg oxocharcoal.none})
(custom-set-face! "uri" [] {:fg oxocharcoal.color8 :bg oxocharcoal.none})

;; lps-semantic-tokens
(custom-set-face! "@lsp.type.class" [] {:link "type"})
(custom-set-face! "@lsp.type.decorator" [] {:link "decorator"})
(custom-set-face! "@lsp.type.function" [] {:link "method"})
(custom-set-face! "@lsp.type.macro" [] {})
(custom-set-face! "@lsp.type.method" [] {:link "method"})
(custom-set-face! "@lsp.type.struct" [] {:link "type"})
(custom-set-face! "@lsp.type.type" [] {:link "type"})
(custom-set-face! "@lsp.type.typeParameter" [] {:link "keyword"})
(custom-set-face! "@lsp.type.selfParameter" [] {:link "self_param"})
(custom-set-face! "@lsp.type.builtinConstant" [] {:link "constant"})
(custom-set-face! "@lsp.type.magicFunction" [] {:link "method"})
(custom-set-face! "@lsp.type.boolean" [] {:link "keyword"})
(custom-set-face! "@lsp.type.builtinType" [] {:link "type"})
(custom-set-face! "@lsp.type.comment" [] {:link "comment"})
(custom-set-face! "@lsp.type.enum" [] {:link "type"})
(custom-set-face! "@lsp.type.enumMember" [] {:link "constant"})
(custom-set-face! "@lsp.type.escapeSequence" [] {:link "escape_char"})
(custom-set-face! "@lsp.type.formatSpecifier" [] {:link "format_item"})
(custom-set-face! "@lsp.type.interface" [] {:link "interface"})
(custom-set-face! "@lsp.type.keyword" [] {:link "keyword"})
(custom-set-face! "@lsp.type.namespace" [] {:link "namespace"})
(custom-set-face! "@lsp.type.number" [] {:link "number"})
(custom-set-face! "@lsp.type.operator" [] {:link "operator"})
(custom-set-face! "@lsp.type.parameter" [] {:link "parameter"})
(custom-set-face! "@lsp.type.property" [] {:link "instance_field"})
(custom-set-face! "@lsp.type.selfKeyword" [] {:link "self_param"})
(custom-set-face! "@lsp.type.string.rust" [] {:link "string"})
(custom-set-face! "@lsp.type.typeAlias" [] {:link "type"})
(custom-set-face! "@lsp.type.unresolvedReference" [] {:link "error"})
(custom-set-face! "@lsp.type.variable" [] {:link "variable"} )
(custom-set-face! "@lsp.typemod.variable.globalScope" [] {:link "identifier"} )
(custom-set-face! "@lsp.mod.readonly" [] {})
(custom-set-face! "@lsp.mod.typeHint" [] {:link "type"})
(custom-set-face! "@lsp.mod.builtin" [] {})
(custom-set-face! "@lsp.typemod.class.defaultLibrary" [] {:link "type"})
(custom-set-face! "@lsp.typemod.enum.defaultLibrary" [] {:link "type"})
(custom-set-face! "@lsp.typemod.enumMember.defaultLibrary" [] {:link "constant"})
(custom-set-face! "@lsp.typemod.function.defaultLibrary" [] {:link "method"})
(custom-set-face! "@lsp.typemod.keyword.async" [] {:link "keyword"})
(custom-set-face! "@lsp.typemod.macro.defaultLibrary" [] {})
(custom-set-face! "@lsp.typemod.method.defaultLibrary" [] {})
(custom-set-face! "@lsp.typemod.operator.injected" [] {:link "operator"})
(custom-set-face! "@lsp.typemod.string.injected" [] {:link "string"})
(custom-set-face! "@lsp.typemod.operator.controlFlow" [] {})
(custom-set-face! "@lsp.typemod.keyword.documentation" [] {})
(custom-set-face! "@lsp.typemod.variable.global" [] {:link "symbol"})
(custom-set-face! "@lsp.typemod.variable.static" [] {})
(custom-set-face! "@lsp.typemod.variable.defaultLibrary" [] {})
(custom-set-face! "@lsp.typemod.function.builtin" [] {})
(custom-set-face! "@lsp.typemod.function.readonly" [] {})
(custom-set-face! "@lsp.typemod.type.defaultLibrary" [] {})
(custom-set-face! "@lsp.typemod.variable.defaultLibrary" [] {})
(custom-set-face! "@lsp.typemod.variable.injected" [] {:link "variable"})

;; treesitter
;;; misc

(custom-set-face! "@comment" [] {:link "comment"})
(custom-set-face! "@comment.todo" [] {:link "todo"})
(custom-set-face! "@comment.note" [] {:link "note"})
(custom-set-face! "@comment.warning" [] {:link "warn"})
(custom-set-face! "@comment.error" [] {:link "error"})
(custom-set-face! "@error" [] {:link "error"})

;; @none
(custom-set-face! "@preproc" [] {:link "preprocessor"})
(custom-set-face! "@define" [] {:link "preprocessor"})

(custom-set-face! "@operator" [] {:link "operator"})

;;; punctuation

(custom-set-face! "@punctuation.delimiter" [] {:link "punctuation"})
(custom-set-face! "@punctuation.bracket" [] {:link "punctuation"})
(custom-set-face! "@punctuation.special" [] {:link "punctuation"})

;;; literals

(custom-set-face! "@string" [] {:link "string"})
(custom-set-face! "@string.regex" [] {:link "regex"})
(custom-set-face! "@string.escape" [] {:link "escape_char"})

;; @string.special

(custom-set-face! "@character" [] {:link "string"})

;; @character.special

(custom-set-face! "@boolean" [] {:link "keyword"})
(custom-set-face! "@number" [] {:link "number"})
(custom-set-face! "@float" [] {:link "number"})

;;; functions

(custom-set-face! "@function" [] {:link "method"})
(custom-set-face! "@function.builtin" [] {:link "method"})

;; @function.call

(custom-set-face! "@function.macro" [] {:link "method"})
(custom-set-face! "@method" [] {:link "method"})

;; @method.call

(custom-set-face! "@constructor" [] {:link "type"})
(custom-set-face! "@parameter" [] {:link "parameter"})

;;; keywords

(custom-set-face! "@keyword" [] {:link "keyword"})
(custom-set-face! "@keyword.function" [] {:link "keyword"})
(custom-set-face! "@keyword.operator" [] {:link "operator"})

;; @keyword.return

(custom-set-face! "@conditional" [] {:link "keyword"})
(custom-set-face! "@repeat" [] {:link "keyword"})

;; @debug

(custom-set-face! "@label" [] {:link "label"})
(custom-set-face! "@include" [] {:link "preprocessor"})
(custom-set-face! "@exception" [] {})

;;; types

(custom-set-face! "@type" [] {:link "type"})
(custom-set-face! "@type.builtin" [] {:link "type"})

;; @type.defintion
(custom-set-face! "@type.qualifier" [] {:link "keyword"})
(custom-set-face! "@type.storageclass" [] {:link "keyword"})
(custom-set-face! "@type.lifetime" [] {:link "lifetime"})

(custom-set-face! "@attribute" [] {:link "decorator"})
(custom-set-face! "@field" [] {:link "instance_field"})
(custom-set-face! "@property" [] {:link "instance_field"})

;;; identifiers

(custom-set-face! "@variable" [] {:link "variable"})
(custom-set-face! "@variable.builtin" [] {:link "variable"})
(custom-set-face! "@variable.global" [] {:link "identifier"})
(custom-set-face! "@constant" [] {:link "constant"})
(custom-set-face! "@constant.builtin" [] {:link "constant"})
(custom-set-face! "@constant.macro" [] {})
(custom-set-face! "@namespace" [] {:link "namespace"})
(custom-set-face! "@symbol" [] {:link "symbol"})

;;; text

(custom-set-face! "@markup" [] {:link "text"})
(custom-set-face! "@markup.strong" [:bold] {:link "text"})
(custom-set-face! "@markup.emphasis" [:italic :bold]
                  {:link "text"})
(custom-set-face! "@markup.underline" [:underline]
                  {:link "text"})
(custom-set-face! "@markup.strike" [:strikethrough]
                  {:link "text"})
(custom-set-face! "@markup.title" [] {:link "text_heading"})
(custom-set-face! "@markup.literal" [] {:link "text"})
(custom-set-face! "@markup.uri" [:underline] {:link "uri"})

;; @markup.math
;; @markup.environment
;; @markup.environment.name
;; @markup.reference
(custom-set-face! "@markup.todo" [] {:link "todo"})
(custom-set-face! "@markup.note" [] {:link "note"})
(custom-set-face! "@markup.warning" [] {:link "warn"})
(custom-set-face! "@markup.danger" [] {:link "error"})
;; @markup.diff.add
;; @markup.diff.delete
;;; tags

(custom-set-face! "@tag" [] {:fg oxocharcoal.base09 :bg oxocharcoal.none})
(custom-set-face! "@tag.attribute" [] {:fg oxocharcoal.lightblue :bg oxocharcoal.none})
(custom-set-face! "@tag.delimiter" [] {:fg oxocharcoal.lightblue :bg oxocharcoal.none})

;;; Conceal
;; @conceal
;;; Spell
;; @spell
;; @nospell
;;; non-standard
;;; locals
;; @definition
;; @definition.constant
;; @definition.function
;; @definition.method
;; @definition.var
;; @definition.parameter
;; @definition.macro
;; @definition.type
;; @definition.field
;; @definition.enum
;; @definition.namespace
;; @definition.import
;; @definition.associated
;; @scope

(custom-set-face! "@reference" [] {:fg oxocharcoal.grey04 :bg oxocharcoal.none})


;; vimhelp

(custom-set-face! :helpHyperTextJump []
                  {:fg oxocharcoal.teal :bg oxocharcoal.none})

(custom-set-face! :helpSpecial [] {:fg oxocharcoal.base09 :bg oxocharcoal.none})
(custom-set-face! :helpHeadline [] {:fg oxocharcoal.color10 :bg oxocharcoal.none})
(custom-set-face! :helpHeader [] {:fg oxocharcoal.lightblue :bg oxocharcoal.none})

;; regular syntax

; (custom-set-face! :Boolean [] {:fg oxocharcoal.base09 :bg oxocharcoal.none})
; (custom-set-face! :Character [] {:fg oxocharcoal.green :bg oxocharcoal.none})
; (custom-set-face! :Comment [:italic]
;                   {:fg oxocharcoal.grey03 :bg oxocharcoal.none})
; (custom-set-face! :Conditional [] {:fg oxocharcoal.base09 :bg oxocharcoal.none})
; (custom-set-face! :Constant [] {:fg oxocharcoal.grey04 :bg oxocharcoal.none})
; (custom-set-face! :Decorator [] {:fg oxocharcoal.pink :bg oxocharcoal.none})
; (custom-set-face! :Define [] {:fg oxocharcoal.base09 :bg oxocharcoal.none})
; (custom-set-face! :Delimeter [] {:fg oxocharcoal.white :bg oxocharcoal.none})
; (custom-set-face! :Exception [] {:fg oxocharcoal.base09 :bg oxocharcoal.none})
; (custom-set-face! :Float [] {:link "Number"})
; (custom-set-face! :Function [] {:fg oxocharcoal.teal :bg oxocharcoal.none})
; (custom-set-face! :Identifier [] {:fg oxocharcoal.grey04 :bg oxocharcoal.none})
; (custom-set-face! :Include [] {:fg oxocharcoal.base09 :bg oxocharcoal.none})
; (custom-set-face! :Keyword [] {:fg oxocharcoal.base09 :bg oxocharcoal.none})
; (custom-set-face! :Label [] {:fg oxocharcoal.base09 :bg oxocharcoal.none})
; (custom-set-face! :Number [] {:fg oxocharcoal.lightblue :bg oxocharcoal.none})
; (custom-set-face! :Operator [] {:fg oxocharcoal.base09 :bg oxocharcoal.none})
; (custom-set-face! :PreProc [] {:fg oxocharcoal.base09 :bg oxocharcoal.none})
; (custom-set-face! :Repeat [] {:fg oxocharcoal.base09 :bg oxocharcoal.none})
; (custom-set-face! :Special [] {:fg oxocharcoal.grey04 :bg oxocharcoal.none})
; (custom-set-face! :SpecialChar [] {:fg oxocharcoal.grey04 :bg oxocharcoal.none})
; (custom-set-face! :SpecialComment [] {:fg oxocharcoal.teal :bg oxocharcoal.none})
; (custom-set-face! :Statement [] {:fg oxocharcoal.base09 :bg oxocharcoal.none})
; (custom-set-face! :StorageClass [] {:fg oxocharcoal.base09 :bg oxocharcoal.none})
; (custom-set-face! :String [] {:fg oxocharcoal.green :bg oxocharcoal.none})
; (custom-set-face! :Structure [] {:fg oxocharcoal.lavander :bg oxocharcoal.none})
; (custom-set-face! :Tag [] {:fg oxocharcoal.grey04 :bg oxocharcoal.none})
; (custom-set-face! :Todo [:bold] {:fg oxocharcoal.orange :bg oxocharcoal.none})
; (custom-set-face! :Type [] {:fg oxocharcoal.lavander :bg oxocharcoal.none})
; (custom-set-face! :Typedef [] {:fg oxocharcoal.lavander :bg oxocharcoal.none})

;; markdown

(custom-set-face! :markdownBlockquote []
                  {:fg oxocharcoal.teal :bg oxocharcoal.none})
(custom-set-face! :markdownBold [] {:link "Bold"})
(custom-set-face! :markdownItalic [] {:link "Italic"})
(custom-set-face! :markdownBoldItalic [:bold :italic]
                  {:fg oxocharcoal.none :bg oxocharcoal.none})
(custom-set-face! :markdownRule [] {:link "Comment"})
(custom-set-face! :markdownH1 [] {:fg oxocharcoal.color10 :bg oxocharcoal.none})
(custom-set-face! :markdownH2 [] {:link "markdownH1"})
(custom-set-face! :markdownH3 [] {:link "markdownH1"})
(custom-set-face! :markdownH4 [] {:link "markdownH1"})
(custom-set-face! :markdownH5 [] {:link "markdownH1"})
(custom-set-face! :markdownH6 [] {:link "markdownH1"})
(custom-set-face! :markdownHeadingDelimiter [] {:link "markdownH1"})
(custom-set-face! :markdownHeadingRule [] {:link "markdownH1"})
(custom-set-face! :markdownUrl [:underline]
                  {:fg oxocharcoal.color28 :bg oxocharcoal.none})
(custom-set-face! :markdownCode [] {:link "String"})
(custom-set-face! :markdownCodeBlock [] {:link "markdownCode"})
(custom-set-face! :markdownCodeDelimiter [] {:link "markdownCode"})
; (custom-set-face! :markdownUrl [] {:link "String"})
(custom-set-face! :markdownListMarker []
                  {:fg oxocharcoal.teal :bg oxocharcoal.none})
(custom-set-face! :markdownOrderedListMarker []
                  {:fg oxocharcoal.teal :bg oxocharcoal.none})

;; asciidoc

(custom-set-face! :asciidocAttributeEntry [] {:fg oxocharcoal.lightblue :bg oxocharcoal.none})
(custom-set-face! :asciidocAttributeList [] {:link "asciidocAttributeEntry"})
(custom-set-face! :asciidocAttributeRef [] {:link "asciidocAttributeEntry"})
(custom-set-face! :asciidocHLabel [] {:link "markdownH1"})
(custom-set-face! :asciidocOneLineTitle [] {:link "markdownH1"})
(custom-set-face! :asciidocQuotedMonospaced [] {:link "markdownBlockquote"})
(custom-set-face! :asciidocURL [] {:link "markdownUrl"})

;; statusline/winbar

(custom-set-face! :StatusLine [] {:fg oxocharcoal.grey05 :bg oxocharcoal.black})
(custom-set-face! :StatusLineNC [] {:fg oxocharcoal.grey04 :bg oxocharcoal.grey01})
(custom-set-face! :StatusReplace [] {:fg oxocharcoal.black :bg oxocharcoal.color24})
(custom-set-face! :StatusInsert [] {:fg oxocharcoal.black :bg oxocharcoal.color34})
(custom-set-face! :StatusVisual [] {:fg oxocharcoal.black :bg oxocharcoal.color2})
(custom-set-face! :StatusTerminal [] {:fg oxocharcoal.black :bg oxocharcoal.grey03})
(custom-set-face! :StatusNormal [] {:fg oxocharcoal.black :bg oxocharcoal.color1})
(custom-set-face! :StatusCommand [] {:fg oxocharcoal.black :bg oxocharcoal.color3})
(custom-set-face! :StatusLineDiagnosticWarn [] {:fg oxocharcoal.color9 :bg oxocharcoal.black})
(custom-set-face! :StatusLineDiagnosticError [:bold] {:fg oxocharcoal.color10 :bg oxocharcoal.black})

;; telescope

(custom-set-face! :TelescopeBorder [] {:fg oxocharcoal.blend :bg oxocharcoal.blend})
(custom-set-face! :TelescopePromptBorder [] {:fg oxocharcoal.grey02 :bg oxocharcoal.grey02})
(custom-set-face! :TelescopePromptNormal [] {:fg oxocharcoal.grey05 :bg oxocharcoal.grey02})
(custom-set-face! :TelescopePromptPrefix [] {:fg oxocharcoal.grey03 :bg oxocharcoal.none})
(custom-set-face! :TelescopeNormal [] {:fg oxocharcoal.grey05 :bg oxocharcoal.blend})
(custom-set-face! :TelescopePreviewTitle [] {:fg oxocharcoal.grey01 :bg oxocharcoal.pink})
(custom-set-face! :TelescopePromptTitle [] {:fg oxocharcoal.grey01 :bg oxocharcoal.blue})
(custom-set-face! :TelescopeResultsTitle [] {:fg oxocharcoal.blend :bg oxocharcoal.blend})
(custom-set-face! :TelescopeSelection [] {:fg oxocharcoal.none :bg oxocharcoal.grey02})
(custom-set-face! :TelescopePreviewLine [] {:fg oxocharcoal.white :bg oxocharcoal.grey01})
(custom-set-face! :TelescopeMatching [] {:fg oxocharcoal.black :bg oxocharcoal.color36})
(custom-set-face! :TelescopePreviewMatch [] {:fg oxocharcoal.black :bg oxocharcoal.color36})

;; notify

(custom-set-face! :NotifyERRORBorder [] {:fg oxocharcoal.color10 :bg oxocharcoal.none})
(custom-set-face! :NotifyWARNBorder [] {:fg oxocharcoal.color9 :bg oxocharcoal.none})
(custom-set-face! :NotifyINFOBorder [] {:fg oxocharcoal.color28 :bg oxocharcoal.none})
(custom-set-face! :NotifyDEBUGBorder [] {:fg oxocharcoal.green :bg oxocharcoal.none})
(custom-set-face! :NotifyTRACEBorder [] {:fg oxocharcoal.green :bg oxocharcoal.none})
(custom-set-face! :NotifyERRORIcon [] {:fg oxocharcoal.color10 :bg oxocharcoal.none})
(custom-set-face! :NotifyWARNIcon [] {:fg oxocharcoal.color9 :bg oxocharcoal.none})
(custom-set-face! :NotifyINFOIcon [] {:fg oxocharcoal.color28 :bg oxocharcoal.none})
(custom-set-face! :NotifyDEBUGIcon [] {:fg oxocharcoal.green :bg oxocharcoal.none})
(custom-set-face! :NotifyTRACEIcon [] {:fg oxocharcoal.green :bg oxocharcoal.none})
(custom-set-face! :NotifyERRORTitle [] {:fg oxocharcoal.color10 :bg oxocharcoal.none})
(custom-set-face! :NotifyWARNTitle [] {:fg oxocharcoal.color9 :bg oxocharcoal.none})
(custom-set-face! :NotifyINFOTitle [] {:fg oxocharcoal.color28 :bg oxocharcoal.none})
(custom-set-face! :NotifyDEBUGTitle [] {:fg oxocharcoal.green :bg oxocharcoal.none})
(custom-set-face! :NotifyTRACETitle [] {:fg oxocharcoal.green :bg oxocharcoal.none})

;; cmp

(custom-set-face! :CmpItemAbbr [] {:fg oxocharcoal.grey04 :bg oxocharcoal.none})
(custom-set-face! :CmpItemAbbrMatch [:bold]
                  {:fg oxocharcoal.white :bg oxocharcoal.none})
(custom-set-face! :CmpItemAbbrMatchFuzzy [:bold]
                  {:fg oxocharcoal.grey05 :bg oxocharcoal.none})
(custom-set-face! :CmpItemMenu [:italic]
                  {:fg oxocharcoal.grey04 :bg oxocharcoal.none})
(custom-set-face! :CmpItemKindInterface [] {:bg oxocharcoal.none :fg oxocharcoal.color22})
(custom-set-face! :CmpItemKindColor [] {:bg oxocharcoal.none :fg oxocharcoal.teal})
(custom-set-face! :CmpItemKindTypeParameter [] {:bg oxocharcoal.none :fg oxocharcoal.color2})
(custom-set-face! :CmpItemKindText [] {:bg oxocharcoal.none :fg oxocharcoal.color27})
(custom-set-face! :CmpItemKindEnum [] {:bg oxocharcoal.none :fg oxocharcoal.color2})
(custom-set-face! :CmpItemKindKeyword [] {:bg oxocharcoal.none :fg oxocharcoal.color1})
(custom-set-face! :CmpItemKindConstant [] {:bg oxocharcoal.none :fg oxocharcoal.color3})
(custom-set-face! :CmpItemKindConstructor [] {:bg oxocharcoal.none :fg oxocharcoal.color2})
(custom-set-face! :CmpItemKindReference [] {:bg oxocharcoal.none :fg oxocharcoal.orange})
(custom-set-face! :CmpItemKindFunction [] {:bg oxocharcoal.none :fg oxocharcoal.color16})
(custom-set-face! :CmpItemKindStruct [] {:bg oxocharcoal.none :fg oxocharcoal.color2})
(custom-set-face! :CmpItemKindClass [] {:bg oxocharcoal.none :fg oxocharcoal.color2})
(custom-set-face! :CmpItemKindModule [] {:bg oxocharcoal.none :fg oxocharcoal.color2})
(custom-set-face! :CmpItemKindOperator [] {:bg oxocharcoal.none :fg oxocharcoal.color14})
(custom-set-face! :CmpItemKindField [] {:bg oxocharcoal.none :fg oxocharcoal.color18})
(custom-set-face! :CmpItemKindProperty [] {:bg oxocharcoal.none :fg oxocharcoal.color18})
(custom-set-face! :CmpItemKindEvent [] {:bg oxocharcoal.none :fg oxocharcoal.color18})
(custom-set-face! :CmpItemKindUnit [] {:bg oxocharcoal.none :fg oxocharcoal.green})
(custom-set-face! :CmpItemKindSnippet [] {:bg oxocharcoal.none :fg oxocharcoal.green})
(custom-set-face! :CmpItemKindFolder [] {:bg oxocharcoal.none :fg oxocharcoal.green})
(custom-set-face! :CmpItemKindVariable [] {:bg oxocharcoal.none :fg oxocharcoal.white})
(custom-set-face! :CmpItemKindFile [] {:bg oxocharcoal.none :fg oxocharcoal.lavander})
(custom-set-face! :CmpItemKindMethod [] {:bg oxocharcoal.none :fg oxocharcoal.color16})
(custom-set-face! :CmpItemKindValue [] {:bg oxocharcoal.none :fg oxocharcoal.lightblue})
(custom-set-face! :CmpItemKindEnumMember [] {:bg oxocharcoal.none :fg oxocharcoal.color3})

;; nvimtree

(custom-set-face! :NvimTreeImageFile [] {:fg oxocharcoal.pink :bg oxocharcoal.none})
(custom-set-face! :NvimTreeFolderIcon [] {:fg oxocharcoal.pink :bg oxocharcoal.none})
(custom-set-face! :NvimTreeWinSeparator [] {:fg oxocharcoal.black :bg oxocharcoal.black})
(custom-set-face! :NvimTreeFolderName [] {:fg oxocharcoal.base09 :bg oxocharcoal.none})
(custom-set-face! :NvimTreeIndentMarker [] {:fg oxocharcoal.grey02 :bg oxocharcoal.none})
(custom-set-face! :NvimTreeEmptyFolderName [] {:fg oxocharcoal.lightblue :bg oxocharcoal.none})
(custom-set-face! :NvimTreeOpenedFolderName [] {:fg oxocharcoal.lightblue :bg oxocharcoal.none})
(custom-set-face! :NvimTreeNormal [] {:fg oxocharcoal.grey04 :bg oxocharcoal.black})

;; neogit

(custom-set-face! :NeogitBranch [] {:fg oxocharcoal.orange :bg oxocharcoal.none})
(custom-set-face! :NeogitRemote [] {:fg oxocharcoal.base09 :bg oxocharcoal.none})
(custom-set-face! :NeogitHunkHeader [] {:fg oxocharcoal.grey04 :bg oxocharcoal.grey02})
(custom-set-face! :NeogitHunkHeaderHighlight [] {:fg oxocharcoal.grey04 :bg oxocharcoal.grey03})

;; hydra

(custom-set-face! :HydraRed [] {:fg oxocharcoal.pink :bg oxocharcoal.none})
(custom-set-face! :HydraBlue [] {:fg oxocharcoal.base09 :bg oxocharcoal.none})
(custom-set-face! :HydraAmaranth [] {:fg oxocharcoal.color10 :bg oxocharcoal.none})
(custom-set-face! :HydraTeal [] {:fg oxocharcoal.teal :bg oxocharcoal.none})
(custom-set-face! :HydraHint [] {:fg oxocharcoal.none :bg oxocharcoal.blend})

;; alpha

(custom-set-face! :alpha1 [] {:fg oxocharcoal.grey03 :bg oxocharcoal.none})
(custom-set-face! :alpha2 [] {:fg oxocharcoal.grey04 :bg oxocharcoal.none})
(custom-set-face! :alpha3 [] {:fg oxocharcoal.grey03 :bg oxocharcoal.none})

;; headlines.nvim

(custom-set-face! :CodeBlock [] {:fg oxocharcoal.none :bg oxocharcoal.grey01})

;; nvim-bufferline

(custom-set-face! :BufferLineFill [] {:bg oxocharcoal.abyss :fg oxocharcoal.grey01})
(custom-set-face! :BufferLineBackground [] {:bg oxocharcoal.black :fg oxocharcoal.grey02})
(custom-set-face! :BufferLineDiagnostic [:bold]
                  {:fg oxocharcoal.color10 :bg oxocharcoal.none})

(custom-set-face! :BufferLineDiagnosticVisible [:bold]
                  {:fg oxocharcoal.color10 :bg oxocharcoal.none})

;; preservim/vim-markdown

(custom-set-face! :htmlH1 [] {:link "markdownH1"})
(custom-set-face! :mkdRule [] {:link "markdownRule"})
(custom-set-face! :mkdListItem [] {:link "markdownListMarker"})
(custom-set-face! :mkdListItemCheckbox [] {:link "markdownListMarker"})

;; vimwiki/vimwiki

(custom-set-face! :VimwikiHeader1 [] {:link "markdownH1"})
(custom-set-face! :VimwikiHeader2 [] {:link "markdownH1"})
(custom-set-face! :VimwikiHeader3 [] {:link "markdownH1"})
(custom-set-face! :VimwikiHeader4 [] {:link "markdownH1"})
(custom-set-face! :VimwikiHeader5 [] {:link "markdownH1"})
(custom-set-face! :VimwikiHeader6 [] {:link "markdownH1"})
(custom-set-face! :VimwikiHeaderChar [] {:link "markdownH1"})
(custom-set-face! :VimwikiList [] {:link "markdownListMarker"})
(custom-set-face! :VimwikiLink [] {:link "markdownUrl"})
(custom-set-face! :VimwikiCode [] {:link "markdownCode"})

;; Which-key
(custom-set-face! :WhichKey [] {:link "method"})
(custom-set-face! :WhichKeyGroup [] {:link "keyword"})
(custom-set-face! :WhichKeyDesc [] {:link "text"})
(custom-set-face! :WhichKeyValue [] {:link "comment"})

;; Lazy
(custom-set-face! :LazySpecial [] {:link "uri"})

;; disable illuminate default highlighting
(custom-set-face! :IlluminatedWordText [] {:fg oxocharcoal.none :bg oxocharcoal.none})
(custom-set-face! :IlluminatedWordRead [] {:fg oxocharcoal.none :bg oxocharcoal.none})
(custom-set-face! :IlluminatedWordWrite [] {:fg oxocharcoal.none :bg oxocharcoal.none})

{ : oxocharcoal }
