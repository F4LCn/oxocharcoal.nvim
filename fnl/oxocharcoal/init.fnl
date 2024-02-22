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
;;   Author:              https://github.com/shaunsingh

(local {: blend-hex} (require :oxocharcoal.colorutils))

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
(set! vim.g.background :dark)

;; oxocharcoal palette

(local black "#161616")
(local white "#ffffff")
(local base09 "#78a9ff")

(local oxocharcoal {: black
                     :grey01 (blend-hex black white 0.085)
                     :grey02 (blend-hex black white 0.18)
                     :grey03 (blend-hex black white 0.3)
                     :grey04 (blend-hex black white 0.82)
                     :grey05 (blend-hex black white 0.95)
                     : white
                     :cyan "#08bdba"
                     :teal "#3ddbd9"
                     : base09
                     :fushia "#ee5396"
                     :blue "#33b1ff"
                     :pink "#ff7eb6"
                     :green "#42be65"
                     :lavander "#be95ff"
                     :lightblue "#82cfff"
                     :orange "#ffc37e"
                     :blend "#131313"
                     :none :NONE})

;; terminal

(let! terminal_color_0 oxocharcoal.grey01)
(let! terminal_color_1 oxocharcoal.blue)
(let! terminal_color_2 oxocharcoal.lavander)
(let! terminal_color_3 oxocharcoal.green)
(let! terminal_color_4 oxocharcoal.base09)
(let! terminal_color_5 oxocharcoal.lightblue)
(let! terminal_color_6 oxocharcoal.teal)
(let! terminal_color_7 oxocharcoal.grey05)
(let! terminal_color_8 oxocharcoal.grey03)
(let! terminal_color_9 oxocharcoal.blue)
(let! terminal_color_10 oxocharcoal.lavander)
(let! terminal_color_11 oxocharcoal.green)
(let! terminal_color_12 oxocharcoal.base09)
(let! terminal_color_13 oxocharcoal.lightblue)
(let! terminal_color_14 oxocharcoal.cyan)
(let! terminal_color_15 oxocharcoal.white)

;; editor

(custom-set-face! :ColorColumn [] {:fg oxocharcoal.none :bg oxocharcoal.grey01})
(custom-set-face! :Cursor [] {:fg oxocharcoal.black :bg oxocharcoal.grey04})
(custom-set-face! :CursorLine [] {:fg oxocharcoal.none :bg oxocharcoal.grey01})
(custom-set-face! :CursorColumn [] {:fg oxocharcoal.none :bg oxocharcoal.grey01})
(custom-set-face! :CursorLineNr [] {:fg oxocharcoal.grey04 :bg oxocharcoal.none})
(custom-set-face! :QuickFixLine [] {:fg oxocharcoal.none :bg oxocharcoal.grey01})
(custom-set-face! :Error [] {:fg oxocharcoal.fushia :bg oxocharcoal.grey01})
(custom-set-face! :LineNr [] {:fg oxocharcoal.grey03 :bg oxocharcoal.black})
(custom-set-face! :NonText [] {:fg oxocharcoal.grey02 :bg oxocharcoal.none})
(custom-set-face! :Normal [] {:fg oxocharcoal.grey04 :bg oxocharcoal.black})
(custom-set-face! :Pmenu [] {:fg oxocharcoal.grey04 :bg oxocharcoal.grey01})
(custom-set-face! :PmenuSbar [] {:fg oxocharcoal.grey04 :bg oxocharcoal.grey01})
(custom-set-face! :PmenuSel [] {:fg oxocharcoal.teal :bg oxocharcoal.grey02})
(custom-set-face! :PmenuThumb [] {:fg oxocharcoal.teal :bg oxocharcoal.grey02})
(custom-set-face! :SpecialKey [] {:fg oxocharcoal.grey03 :bg oxocharcoal.none})
(custom-set-face! :Visual [] {:fg oxocharcoal.none :bg oxocharcoal.grey02})
(custom-set-face! :VisualNOS [] {:fg oxocharcoal.none :bg oxocharcoal.grey02})
(custom-set-face! :TooLong [] {:fg oxocharcoal.none :bg oxocharcoal.grey02})
(custom-set-face! :Debug [] {:fg oxocharcoal.green :bg oxocharcoal.none})
(custom-set-face! :Macro [] {:fg oxocharcoal.cyan :bg oxocharcoal.none})
(custom-set-face! :MatchParen [:underline]
                  {:fg oxocharcoal.none :bg oxocharcoal.grey02})
(custom-set-face! :Bold [:bold] {:fg oxocharcoal.none :bg oxocharcoal.none})
(custom-set-face! :Italic [:italic] {:fg oxocharcoal.none :bg oxocharcoal.none})
(custom-set-face! :Underlined [:underline]
                  {:fg oxocharcoal.none :bg oxocharcoal.none})

;; diagnostics

(custom-set-face! :DiagnosticWarn [] {:fg oxocharcoal.lavander :bg oxocharcoal.none})
(custom-set-face! :DiagnosticError [] {:fg oxocharcoal.fushia :bg oxocharcoal.none})
(custom-set-face! :DiagnosticInfo [] {:fg oxocharcoal.base09 :bg oxocharcoal.none})
(custom-set-face! :DiagnosticHint [] {:fg oxocharcoal.grey04 :bg oxocharcoal.none})
(custom-set-face! :DiagnosticUnderlineWarn [:undercurl]
                  {:fg oxocharcoal.lavander :bg oxocharcoal.none})
(custom-set-face! :DiagnosticUnderlineError [:undercurl]
                  {:fg oxocharcoal.fushia :bg oxocharcoal.none})
(custom-set-face! :DiagnosticUnderlineInfo [:undercurl]
                  {:fg oxocharcoal.grey04 :bg oxocharcoal.none})
(custom-set-face! :DiagnosticUnderlineHint [:undercurl]
                  {:fg oxocharcoal.grey04 :bg oxocharcoal.none})

;; health
(custom-set-face! :HealthError [] {:fg oxocharcoal.fushia :bg oxocharcoal.none})
(custom-set-face! :HealthWarning [] {:fg oxocharcoal.lavander :bg oxocharcoal.none})
(custom-set-face! :HealthSuccess [] {:fg oxocharcoal.green :bg oxocharcoal.none})

;; ledger

; (custom-set-face! "@comment" [] {:link "Comment"})
(custom-set-face! "@text.literal.commodity" [] {:fg oxocharcoal.green :bg oxocharcoal.none})
(custom-set-face! "@number" [] {:fg oxocharcoal.base09 :bg oxocharcoal.none})
(custom-set-face! "@number.date" [] {:fg oxocharcoal.teal :bg oxocharcoal.none})
(custom-set-face! "@number.date.effective" [] {:fg oxocharcoal.green :bg oxocharcoal.none})
(custom-set-face! "@number.interval" [] {:fg oxocharcoal.base09 :bg oxocharcoal.none})
(custom-set-face! "@number.status" [] {:fg oxocharcoal.pink :bg oxocharcoal.none})
(custom-set-face! "@number.quantity" [] {:fg oxocharcoal.blue :bg oxocharcoal.none})
(custom-set-face! "@number.quantity.negative" [] {:fg oxocharcoal.fushia :bg oxocharcoal.none})

;; lsp

(custom-set-face! :LspReferenceText [] {:fg oxocharcoal.none :bg oxocharcoal.grey03})
(custom-set-face! :LspReferenceread [] {:fg oxocharcoal.none :bg oxocharcoal.grey03})
(custom-set-face! :LspReferenceWrite [] {:fg oxocharcoal.none :bg oxocharcoal.grey03})
(custom-set-face! :LspSignatureActiveParameter [:bold] {:fg oxocharcoal.teal :bg oxocharcoal.none})

;; semantic classes mapping
(custom-set-face! "keyword" [] {:fg "#94C4FF" :bg oxocharcoal.none})
(custom-set-face! "identifier" [] {:fg "#E9B1FF" :bg oxocharcoal.none})
(custom-set-face! "string" [] {:fg "#96BE78" :bg oxocharcoal.none})
(custom-set-face! "escape_char" [] {:fg "#50B4BE" :bg oxocharcoal.none})
(custom-set-face! "constant" [] {:fg "#96BE78" :bg oxocharcoal.none})
(custom-set-face! "comment" [] {:fg "#808080" :bg oxocharcoal.none})
(custom-set-face! "todo" [] {:fg "#C8B47D" :bg oxocharcoal.none})
(custom-set-face! "note" [] {:fg "#61AFE1" :bg oxocharcoal.none})
(custom-set-face! "warn" [] {:fg "#E88C00" :bg oxocharcoal.none})
(custom-set-face! "error" [] {:fg "#DD3962" :bg oxocharcoal.none})
(custom-set-face! "preprocessor" [] {:fg "#C88CDC" :bg oxocharcoal.none})
(custom-set-face! "number" [] {:fg "#96BE78" :bg oxocharcoal.none})
(custom-set-face! "label" [] {:fg "#B7B7B7" :bg oxocharcoal.none})
(custom-set-face! "operator" [] {:fg "#BED4E0" :bg oxocharcoal.none})
(custom-set-face! "type" [] {:fg "#E9B1FF" :bg oxocharcoal.none})
(custom-set-face! "method" [] {:fg "#FFB987" :bg oxocharcoal.none})
(custom-set-face! "punctuation" [] {:fg "#BED4E0" :bg oxocharcoal.none})
(custom-set-face! "instance_field" [] {:fg "#FF9696" :bg oxocharcoal.none})
(custom-set-face! "decorator" [] {:fg "#BBB529" :bg oxocharcoal.none})
(custom-set-face! "self_param" [] {:fg "#94C4FF" :bg oxocharcoal.none})
(custom-set-face! "format_item" [] {:fg "#80FF80" :bg oxocharcoal.none})
(custom-set-face! "interface" [] {:fg "#FFCF97" :bg oxocharcoal.none})
(custom-set-face! "namespace" [] {:fg "#E9B1FF" :bg oxocharcoal.none})
(custom-set-face! "parameter" [] {:fg "#97F1FD" :bg oxocharcoal.none})
(custom-set-face! "variable" [] {:fg "#FFFFFF" :bg oxocharcoal.none})
(custom-set-face! "symbol" [] {:fg "#E9B1FF" :bg oxocharcoal.none})
(custom-set-face! "lifetime" [] {:fg "#50B4BE" :bg oxocharcoal.none})
(custom-set-face! "text" [] {:fg "#DADFE5" :bg oxocharcoal.none})
(custom-set-face! "text_heading" [] {:fg "#C88CDC" :bg oxocharcoal.none})
(custom-set-face! "uri" [] {:fg "#61AFE1" :bg oxocharcoal.none})

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

;; gutter

(custom-set-face! :Folded [] {:fg oxocharcoal.grey02 :bg oxocharcoal.grey01})
(custom-set-face! :FoldColumn [] {:fg oxocharcoal.grey01 :bg oxocharcoal.black})
(custom-set-face! :SignColumn [] {:fg oxocharcoal.grey01 :bg oxocharcoal.black})

;; navigation

(custom-set-face! :Directory [] {:fg oxocharcoal.teal :bg oxocharcoal.none})

;; prompts

(custom-set-face! :EndOfBuffer [] {:fg oxocharcoal.grey01 :bg oxocharcoal.none})
(custom-set-face! :ErrorMsg [] {:fg oxocharcoal.fushia :bg oxocharcoal.none})
(custom-set-face! :ModeMsg [] {:fg oxocharcoal.grey04 :bg oxocharcoal.none})
(custom-set-face! :MoreMsg [] {:fg oxocharcoal.teal :bg oxocharcoal.none})
(custom-set-face! :Question [] {:fg oxocharcoal.grey04 :bg oxocharcoal.none})
(custom-set-face! :Substitute [] {:fg oxocharcoal.grey01 :bg oxocharcoal.teal})
(custom-set-face! :WarningMsg [] {:fg oxocharcoal.lavander :bg oxocharcoal.none})
(custom-set-face! :WildMenu [] {:fg oxocharcoal.teal :bg oxocharcoal.grey01})

;; vimhelp

(custom-set-face! :helpHyperTextJump []
                  {:fg oxocharcoal.teal :bg oxocharcoal.none})

(custom-set-face! :helpSpecial [] {:fg oxocharcoal.base09 :bg oxocharcoal.none})
(custom-set-face! :helpHeadline [] {:fg oxocharcoal.fushia :bg oxocharcoal.none})
(custom-set-face! :helpHeader [] {:fg oxocharcoal.lightblue :bg oxocharcoal.none})

;; diff

(custom-set-face! :DiffAdded [] {:fg oxocharcoal.cyan :bg oxocharcoal.none})
(custom-set-face! :DiffChanged [] {:fg oxocharcoal.base09 :bg oxocharcoal.none})
(custom-set-face! :DiffRemoved [] {:fg oxocharcoal.fushia :bg oxocharcoal.none})
(custom-set-face! :DiffAdd [] {:bg "#122f2f" :fg oxocharcoal.none})
(custom-set-face! :DiffChange [] {:bg "#222a39" :fg oxocharcoal.none})
(custom-set-face! :DiffText [] {:bg "#2f3f5c" :fg oxocharcoal.none})
(custom-set-face! :DiffDelete [] {:bg "#361c28" :fg oxocharcoal.none})

;; search

(custom-set-face! :IncSearch [] {:fg oxocharcoal.white :bg oxocharcoal.fushia})
(custom-set-face! :Search [] {:fg oxocharcoal.grey01 :bg oxocharcoal.teal})

;; tabs

(custom-set-face! :TabLine [] {:link "StatusLineNC"})
(custom-set-face! :TabLineFill [] {:link "TabLine"})
(custom-set-face! :TabLineSel [] {:link "StatusLine"})

;; window

(custom-set-face! :Title [] {:fg oxocharcoal.grey04 :bg oxocharcoal.none})
(custom-set-face! :VertSplit [] {:fg oxocharcoal.grey01 :bg oxocharcoal.black})

;; regular syntax

; (custom-set-face! :Boolean [] {:fg oxocharcoal.base09 :bg oxocharcoal.none})
; (custom-set-face! :Character [] {:fg oxocharcoal.green :bg oxocharcoal.none})
; (custom-set-face! :Comment [:italic]
;                   {:fg oxocharcoal.grey03 :bg oxocharcoal.none})
; (custom-set-face! :Conceal [] {:fg oxocharcoal.none :bg oxocharcoal.none})
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
(custom-set-face! :markdownH1 [] {:fg oxocharcoal.fushia :bg oxocharcoal.none})
(custom-set-face! :markdownH2 [] {:link "markdownH1"})
(custom-set-face! :markdownH3 [] {:link "markdownH1"})
(custom-set-face! :markdownH4 [] {:link "markdownH1"})
(custom-set-face! :markdownH5 [] {:link "markdownH1"})
(custom-set-face! :markdownH6 [] {:link "markdownH1"})
(custom-set-face! :markdownHeadingDelimiter [] {:link "markdownH1"})
(custom-set-face! :markdownHeadingRule [] {:link "markdownH1"})
(custom-set-face! :markdownUrl [:underline]
                  {:fg oxocharcoal.lavander :bg oxocharcoal.none})
(custom-set-face! :markdownCode [] {:link "String"})
(custom-set-face! :markdownCodeBlock [] {:link "markdownCode"})
(custom-set-face! :markdownCodeDelimiter [] {:link "markdownCode"})
(custom-set-face! :markdownUrl [] {:link "String"})
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

;; neovim

(custom-set-face! :NvimInternalError [] {:fg oxocharcoal.black :bg oxocharcoal.teal})
(custom-set-face! :NormalFloat [] {:fg oxocharcoal.grey05 :bg oxocharcoal.blend})
(custom-set-face! :FloatBorder [] {:fg oxocharcoal.blend :bg oxocharcoal.blend})
(custom-set-face! :NormalNC [] {:fg oxocharcoal.grey05 :bg oxocharcoal.black})
(custom-set-face! :TermCursor [] {:fg oxocharcoal.black :bg oxocharcoal.grey04})
(custom-set-face! :TermCursorNC [] {:fg oxocharcoal.black :bg oxocharcoal.grey04})

;; statusline/winbar

(custom-set-face! :StatusLine [] {:fg oxocharcoal.grey04 :bg oxocharcoal.black})
(custom-set-face! :StatusLineNC [] {:fg oxocharcoal.grey04 :bg oxocharcoal.grey01})
(custom-set-face! :StatusReplace [] {:fg oxocharcoal.black :bg oxocharcoal.teal})
(custom-set-face! :StatusInsert [] {:fg oxocharcoal.black :bg oxocharcoal.pink})
(custom-set-face! :StatusVisual [] {:fg oxocharcoal.black :bg oxocharcoal.lavander})
(custom-set-face! :StatusTerminal [] {:fg oxocharcoal.black :bg oxocharcoal.blue})
(custom-set-face! :StatusNormal [] {:fg oxocharcoal.black :bg oxocharcoal.lightblue})
(custom-set-face! :StatusCommand [] {:fg oxocharcoal.black :bg oxocharcoal.green})
(custom-set-face! :StatusLineDiagnosticWarn [:bold]
                  {:fg oxocharcoal.lavander :bg oxocharcoal.black})
(custom-set-face! :StatusLineDiagnosticError [:bold]
                  {:fg oxocharcoal.fushia :bg oxocharcoal.black})

;; telescope

(custom-set-face! :TelescopeBorder [] {:fg oxocharcoal.blend :bg oxocharcoal.blend})
(custom-set-face! :TelescopePromptBorder [] {:fg oxocharcoal.grey02 :bg oxocharcoal.grey02})
(custom-set-face! :TelescopePromptNormal [] {:fg oxocharcoal.grey05 :bg oxocharcoal.grey02})
(custom-set-face! :TelescopePromptPrefix [] {:fg oxocharcoal.teal :bg oxocharcoal.grey02})
(custom-set-face! :TelescopeNormal [] {:fg oxocharcoal.none :bg oxocharcoal.blend})
(custom-set-face! :TelescopePreviewTitle [] {:fg oxocharcoal.grey02 :bg oxocharcoal.pink})
(custom-set-face! :TelescopePromptTitle [] {:fg oxocharcoal.grey02 :bg oxocharcoal.blue})
(custom-set-face! :TelescopeResultsTitle [] {:fg oxocharcoal.blend :bg oxocharcoal.blend})
(custom-set-face! :TelescopeSelection [] {:fg oxocharcoal.none :bg oxocharcoal.grey02})
(custom-set-face! :TelescopePreviewLine [] {:fg oxocharcoal.none :bg oxocharcoal.grey01})
(custom-set-face! :TelescopeMatching [:bold :italic] {:fg oxocharcoal.teal :bg oxocharcoal.none})

;; notify

(custom-set-face! :NotifyERRORBorder [] {:fg oxocharcoal.teal :bg oxocharcoal.none})
(custom-set-face! :NotifyWARNBorder [] {:fg oxocharcoal.lavander :bg oxocharcoal.none})
(custom-set-face! :NotifyINFOBorder [] {:fg oxocharcoal.grey05 :bg oxocharcoal.none})
(custom-set-face! :NotifyDEBUGBorder [] {:fg oxocharcoal.green :bg oxocharcoal.none})
(custom-set-face! :NotifyTRACEBorder [] {:fg oxocharcoal.green :bg oxocharcoal.none})
(custom-set-face! :NotifyERRORIcon [] {:fg oxocharcoal.teal :bg oxocharcoal.none})
(custom-set-face! :NotifyWARNIcon [] {:fg oxocharcoal.lavander :bg oxocharcoal.none})
(custom-set-face! :NotifyINFOIcon [] {:fg oxocharcoal.grey05 :bg oxocharcoal.none})
(custom-set-face! :NotifyDEBUGIcon [] {:fg oxocharcoal.green :bg oxocharcoal.none})
(custom-set-face! :NotifyTRACEIcon [] {:fg oxocharcoal.green :bg oxocharcoal.none})
(custom-set-face! :NotifyERRORTitle [] {:fg oxocharcoal.teal :bg oxocharcoal.none})
(custom-set-face! :NotifyWARNTitle [] {:fg oxocharcoal.lavander :bg oxocharcoal.none})
(custom-set-face! :NotifyINFOTitle [] {:fg oxocharcoal.grey05 :bg oxocharcoal.none})
(custom-set-face! :NotifyDEBUGTitle [] {:fg oxocharcoal.green :bg oxocharcoal.none})
(custom-set-face! :NotifyTRACETitle [] {:fg oxocharcoal.green :bg oxocharcoal.none})

;; cmp

(custom-set-face! :CmpItemAbbr [] {:fg "#adadad" :bg oxocharcoal.none})
(custom-set-face! :CmpItemAbbrMatch [:bold]
                  {:fg oxocharcoal.grey05 :bg oxocharcoal.none})
(custom-set-face! :CmpItemAbbrMatchFuzzy [:bold]
                  {:fg oxocharcoal.grey04 :bg oxocharcoal.none})
(custom-set-face! :CmpItemMenu [:italic]
                  {:fg oxocharcoal.grey04 :bg oxocharcoal.none})
(custom-set-face! :CmpItemKindInterface [] {:fg oxocharcoal.grey01 :bg oxocharcoal.teal})
(custom-set-face! :CmpItemKindColor [] {:fg oxocharcoal.grey01 :bg oxocharcoal.teal})
(custom-set-face! :CmpItemKindTypeParameter [] {:fg oxocharcoal.grey01 :bg oxocharcoal.teal})
(custom-set-face! :CmpItemKindText [] {:fg oxocharcoal.grey01 :bg oxocharcoal.base09})
(custom-set-face! :CmpItemKindEnum [] {:fg oxocharcoal.grey01 :bg oxocharcoal.base09})
(custom-set-face! :CmpItemKindKeyword [] {:fg oxocharcoal.grey01 :bg oxocharcoal.base09})
(custom-set-face! :CmpItemKindConstant [] {:fg oxocharcoal.grey01 :bg oxocharcoal.orange})
(custom-set-face! :CmpItemKindConstructor [] {:fg oxocharcoal.grey01 :bg oxocharcoal.orange})
(custom-set-face! :CmpItemKindReference [] {:fg oxocharcoal.grey01 :bg oxocharcoal.orange})
(custom-set-face! :CmpItemKindFunction [] {:fg oxocharcoal.grey01 :bg oxocharcoal.blue})
(custom-set-face! :CmpItemKindStruct [] {:fg oxocharcoal.grey01 :bg oxocharcoal.blue})
(custom-set-face! :CmpItemKindClass [] {:fg oxocharcoal.grey01 :bg oxocharcoal.blue})
(custom-set-face! :CmpItemKindModule [] {:fg oxocharcoal.grey01 :bg oxocharcoal.blue})
(custom-set-face! :CmpItemKindOperator [] {:fg oxocharcoal.grey01 :bg oxocharcoal.blue})
(custom-set-face! :CmpItemKindField [] {:fg oxocharcoal.grey01 :bg oxocharcoal.pink})
(custom-set-face! :CmpItemKindProperty [] {:fg oxocharcoal.grey01 :bg oxocharcoal.pink})
(custom-set-face! :CmpItemKindEvent [] {:fg oxocharcoal.grey01 :bg oxocharcoal.pink})
(custom-set-face! :CmpItemKindUnit [] {:fg oxocharcoal.grey01 :bg oxocharcoal.green})
(custom-set-face! :CmpItemKindSnippet [] {:fg oxocharcoal.grey01 :bg oxocharcoal.green})
(custom-set-face! :CmpItemKindFolder [] {:fg oxocharcoal.grey01 :bg oxocharcoal.green})
(custom-set-face! :CmpItemKindVariable [] {:fg oxocharcoal.grey01 :bg oxocharcoal.lavander})
(custom-set-face! :CmpItemKindFile [] {:fg oxocharcoal.grey01 :bg oxocharcoal.lavander})
(custom-set-face! :CmpItemKindMethod [] {:fg oxocharcoal.grey01 :bg oxocharcoal.lightblue})
(custom-set-face! :CmpItemKindValue [] {:fg oxocharcoal.grey01 :bg oxocharcoal.lightblue})
(custom-set-face! :CmpItemKindEnumMember [] {:fg oxocharcoal.grey01 :bg oxocharcoal.lightblue})

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
(custom-set-face! :HydraAmaranth [] {:fg oxocharcoal.fushia :bg oxocharcoal.none})
(custom-set-face! :HydraTeal [] {:fg oxocharcoal.teal :bg oxocharcoal.none})
(custom-set-face! :HydraHint [] {:fg oxocharcoal.none :bg oxocharcoal.blend})

;; alpha

(custom-set-face! :alpha1 [] {:fg oxocharcoal.grey03 :bg oxocharcoal.none})
(custom-set-face! :alpha2 [] {:fg oxocharcoal.grey04 :bg oxocharcoal.none})
(custom-set-face! :alpha3 [] {:fg oxocharcoal.grey03 :bg oxocharcoal.none})

;; headlines.nvim

(custom-set-face! :CodeBlock [] {:fg oxocharcoal.none :bg oxocharcoal.grey01})

;; nvim-bufferline

(custom-set-face! :BufferLineDiagnostic [:bold]
                  {:fg oxocharcoal.fushia :bg oxocharcoal.none})

(custom-set-face! :BufferLineDiagnosticVisible [:bold]
                  {:fg oxocharcoal.fushia :bg oxocharcoal.none})

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

{ : oxocharcoal }
