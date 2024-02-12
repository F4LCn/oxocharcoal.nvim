;;                               O X O C A R B O N
;        _..._         _..._         _..._         _..._         _..._
;;      .:::::::.     .::::. `.     .::::  `.     .::'   `.     .'     `.
;;     :::::::::::   :::::::.  :   ::::::    :   :::       :   :         :
;;     :::::::::::   ::::::::  :   ::::::    :   :::       :   :         :
;;     `:::::::::'   `::::::' .'   `:::::   .'   `::.     .'   `.       .'
;;       `':::''       `'::'-'       `'::.-'       `':..-'       `-...-'
;;
;;   Colorscheme name:    oxocharcoal themeing system
;;   Description:         Neovim Colorschemes based on base16 in fennel made with (hs)luv <3
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

;; oxocharcoal palette

(local base00 "#050505")
(local base06 "#ffffff")
(local base09 "#78a9ff")

(local oxocharcoal (or (and (= vim.o.background :dark)
                          {: base00
                           :base01 (blend-hex base00 base06 0.085)
                           :base02 (blend-hex base00 base06 0.18)
                           :base03 (blend-hex base00 base06 0.3)
                           :base04 (blend-hex base00 base06 0.82)
                           :base05 (blend-hex base00 base06 0.95)
                           : base06
                           :base07 "#08bdba"
                           :base08 "#3ddbd9"
                           : base09
                           :base10 "#ee5396"
                           :base11 "#33b1ff"
                           :base12 "#ff7eb6"
                           :base13 "#42be65"
                           :base14 "#be95ff"
                           :base15 "#82cfff"
                           :base16 "#ffc37e"
                           :blend "#090909"
                           :none :NONE})
                     {:base00 base06
                      :base01 (blend-hex base00 base06 0.95)
                      :base02 (blend-hex base00 base06 0.82)
                      :base03 base00
                      :base04 "#37474F"
                      :base05 "#90A4AE"
                      :base06 "#525252"
                      :base07 "#08bdba"
                      :base08 "#ff7eb6"
                      :base09 "#ee5396"
                      :base10 "#FF6F00"
                      :base11 "#0f62fe"
                      :base12 "#673AB7"
                      :base13 "#42be65"
                      :base14 "#be95ff"
                      :base15 "#FFAB91"
                      :base16 :base10
                      :blend "#FAFAFA"
                      :none :NONE}))

;; terminal

(let! terminal_color_0 oxocharcoal.base01)
(let! terminal_color_1 oxocharcoal.base11)
(let! terminal_color_2 oxocharcoal.base14)
(let! terminal_color_3 oxocharcoal.base13)
(let! terminal_color_4 oxocharcoal.base09)
(let! terminal_color_5 oxocharcoal.base15)
(let! terminal_color_6 oxocharcoal.base08)
(let! terminal_color_7 oxocharcoal.base05)
(let! terminal_color_8 oxocharcoal.base03)
(let! terminal_color_9 oxocharcoal.base11)
(let! terminal_color_10 oxocharcoal.base14)
(let! terminal_color_11 oxocharcoal.base13)
(let! terminal_color_12 oxocharcoal.base09)
(let! terminal_color_13 oxocharcoal.base15)
(let! terminal_color_14 oxocharcoal.base07)
(let! terminal_color_15 oxocharcoal.base06)

;; editor

(custom-set-face! :ColorColumn [] {:fg oxocharcoal.none :bg oxocharcoal.base01})
(custom-set-face! :Cursor [] {:fg oxocharcoal.base00 :bg oxocharcoal.base04})
(custom-set-face! :CursorLine [] {:fg oxocharcoal.none :bg oxocharcoal.base01})
(custom-set-face! :CursorColumn [] {:fg oxocharcoal.none :bg oxocharcoal.base01})
(custom-set-face! :CursorLineNr [] {:fg oxocharcoal.base04 :bg oxocharcoal.none})
(custom-set-face! :QuickFixLine [] {:fg oxocharcoal.none :bg oxocharcoal.base01})
(custom-set-face! :Error [] {:fg oxocharcoal.base10 :bg oxocharcoal.base01})
(custom-set-face! :LineNr [] {:fg oxocharcoal.base03 :bg oxocharcoal.base00})
(custom-set-face! :NonText [] {:fg oxocharcoal.base02 :bg oxocharcoal.none})
(custom-set-face! :Normal [] {:fg oxocharcoal.base04 :bg oxocharcoal.base00})
(custom-set-face! :Pmenu [] {:fg oxocharcoal.base04 :bg oxocharcoal.base01})
(custom-set-face! :PmenuSbar [] {:fg oxocharcoal.base04 :bg oxocharcoal.base01})
(custom-set-face! :PmenuSel [] {:fg oxocharcoal.base08 :bg oxocharcoal.base02})
(custom-set-face! :PmenuThumb [] {:fg oxocharcoal.base08 :bg oxocharcoal.base02})
(custom-set-face! :SpecialKey [] {:fg oxocharcoal.base03 :bg oxocharcoal.none})
(custom-set-face! :Visual [] {:fg oxocharcoal.none :bg oxocharcoal.base03})
(custom-set-face! :VisualNOS [] {:fg oxocharcoal.none :bg oxocharcoal.base03})
(custom-set-face! :TooLong [] {:fg oxocharcoal.none :bg oxocharcoal.base02})
(custom-set-face! :Debug [] {:fg oxocharcoal.base13 :bg oxocharcoal.none})
(custom-set-face! :Macro [] {:fg oxocharcoal.base07 :bg oxocharcoal.none})
(custom-set-face! :MatchParen [:underline]
                  {:fg oxocharcoal.none :bg oxocharcoal.base02})
(custom-set-face! :Bold [:bold] {:fg oxocharcoal.none :bg oxocharcoal.none})
(custom-set-face! :Italic [:italic] {:fg oxocharcoal.none :bg oxocharcoal.none})
(custom-set-face! :Underlined [:underline]
                  {:fg oxocharcoal.none :bg oxocharcoal.none})

;; diagnostics

(custom-set-face! :DiagnosticWarn [] {:fg oxocharcoal.base14 :bg oxocharcoal.none})
(custom-set-face! :DiagnosticError [] {:fg oxocharcoal.base10 :bg oxocharcoal.none})
(custom-set-face! :DiagnosticInfo [] {:fg oxocharcoal.base09 :bg oxocharcoal.none})
(custom-set-face! :DiagnosticHint [] {:fg oxocharcoal.base04 :bg oxocharcoal.none})
(custom-set-face! :DiagnosticUnderlineWarn [:undercurl]
                  {:fg oxocharcoal.base14 :bg oxocharcoal.none})
(custom-set-face! :DiagnosticUnderlineError [:undercurl]
                  {:fg oxocharcoal.base10 :bg oxocharcoal.none})
(custom-set-face! :DiagnosticUnderlineInfo [:undercurl]
                  {:fg oxocharcoal.base04 :bg oxocharcoal.none})
(custom-set-face! :DiagnosticUnderlineHint [:undercurl]
                  {:fg oxocharcoal.base04 :bg oxocharcoal.none})

;; health
(custom-set-face! :HealthError [] {:fg oxocharcoal.base10 :bg oxocharcoal.none})
(custom-set-face! :HealthWarning [] {:fg oxocharcoal.base14 :bg oxocharcoal.none})
(custom-set-face! :HealthSuccess [] {:fg oxocharcoal.base13 :bg oxocharcoal.none})

;; ledger

(custom-set-face! "@comment" [] {:link "Comment"})
(custom-set-face! "@text.literal.commodity" [] {:fg oxocharcoal.base13 :bg oxocharcoal.none})
(custom-set-face! "@number" [] {:fg oxocharcoal.base09 :bg oxocharcoal.none})
(custom-set-face! "@number.date" [] {:fg oxocharcoal.base08 :bg oxocharcoal.none})
(custom-set-face! "@number.date.effective" [] {:fg oxocharcoal.base13 :bg oxocharcoal.none})
(custom-set-face! "@number.interval" [] {:fg oxocharcoal.base09 :bg oxocharcoal.none})
(custom-set-face! "@number.status" [] {:fg oxocharcoal.base12 :bg oxocharcoal.none})
(custom-set-face! "@number.quantity" [] {:fg oxocharcoal.base11 :bg oxocharcoal.none})
(custom-set-face! "@number.quantity.negative" [] {:fg oxocharcoal.base10 :bg oxocharcoal.none})

;; lsp

(custom-set-face! :LspReferenceText [] {:fg oxocharcoal.none :bg oxocharcoal.base03})
(custom-set-face! :LspReferenceread [] {:fg oxocharcoal.none :bg oxocharcoal.base03})
(custom-set-face! :LspReferenceWrite [] {:fg oxocharcoal.none :bg oxocharcoal.base03})
(custom-set-face! :LspSignatureActiveParameter [] {:fg oxocharcoal.base08 :bg oxocharcoal.none})

;; lps-semantic-tokens
(custom-set-face! "@lsp.type.class" [] {:link "Structure"})
(custom-set-face! "@lsp.type.decorator" [] {:link "Decorator"})
(custom-set-face! "@lsp.type.function" [] {:link "@function"})
(custom-set-face! "@lsp.type.macro" [] {:link "Macro"})
(custom-set-face! "@lsp.type.method" [] {:link "@function"})
(custom-set-face! "@lsp.type.struct" [] {:link "Structure"})
(custom-set-face! "@lsp.type.type" [] {:link "Type"})
(custom-set-face! "@lsp.type.typeParameter" [] {:link "Typedef"})
(custom-set-face! "@lsp.type.selfParameter" [] {:link "@variable.builtin"})
(custom-set-face! "@lsp.type.builtinConstant" [] {:link "@constant.builtin"})
(custom-set-face! "@lsp.type.magicFunction" [] {:link "@function.builtin"})
(custom-set-face! "@lsp.type.boolean" [] {:link "@boolean"})
(custom-set-face! "@lsp.type.builtinType" [] {:link "@type.builtin"})
(custom-set-face! "@lsp.type.comment" [] {:link "@comment"})
(custom-set-face! "@lsp.type.enum" [] {:link "@type"})
(custom-set-face! "@lsp.type.enumMember" [] {:link "@constant"})
(custom-set-face! "@lsp.type.escapeSequence" [] {:link "@string.escape"})
(custom-set-face! "@lsp.type.formatSpecifier" [] {:link "@punctuation.special"})
;;(custom-set-face! "@lsp.type.interface" [] {})
(custom-set-face! "@lsp.type.keyword" [] {:link "@keyword"})
(custom-set-face! "@lsp.type.namespace" [] {:link "@namespace"})
(custom-set-face! "@lsp.type.number" [] {:link "@number"})
(custom-set-face! "@lsp.type.operator" [] {:link "@operator"})
(custom-set-face! "@lsp.type.parameter" [] {:link "@parameter"})
(custom-set-face! "@lsp.type.property" [] {:link "@property"})
(custom-set-face! "@lsp.type.selfKeyword" [] {:link "@variable.builtin"})
(custom-set-face! "@lsp.type.string.rust" [] {:link "@string"})
(custom-set-face! "@lsp.type.typeAlias" [] {:link "@type.definition"})
(custom-set-face! "@lsp.type.unresolvedReference" [] {:link "Error"})
(custom-set-face! "@lsp.type.variable" [] {:link "@variable"} )
(custom-set-face! "@lsp.mod.readonly" [] {:link "@constant"})
(custom-set-face! "@lsp.mod.typeHint" [] {:link "Type"})
(custom-set-face! "@lsp.mod.builtin" [] {:link "Special"})
(custom-set-face! "@lsp.typemod.class.defaultLibrary" [] {:link "@type.builtin"})
(custom-set-face! "@lsp.typemod.enum.defaultLibrary" [] {:link "@type.builtin"})
(custom-set-face! "@lsp.typemod.enumMember.defaultLibrary" [] {:link "@constant.builtin"})
(custom-set-face! "@lsp.typemod.function.defaultLibrary" [] {:link "@function.builtin"})
(custom-set-face! "@lsp.typemod.keyword.async" [] {:link "@keyword.coroutine"})
(custom-set-face! "@lsp.typemod.macro.defaultLibrary" [] {:link "@function.builtin"})
(custom-set-face! "@lsp.typemod.method.defaultLibrary" [] {:link "@function.builtin"})
(custom-set-face! "@lsp.typemod.operator.injected" [] {:link "@operator"})
(custom-set-face! "@lsp.typemod.string.injected" [] {:link "@string"})
(custom-set-face! "@lsp.typemod.operator.controlFlow" [] {:link "@exception"})
(custom-set-face! "@lsp.typemod.keyword.documentation" [] {:link "Special"})
(custom-set-face! "@lsp.typemod.variable.global" [] {:link "@constant"})
(custom-set-face! "@lsp.typemod.variable.static" [] {:link "@constant"})
(custom-set-face! "@lsp.typemod.variable.defaultLibrary" [] {:link "Special"})
(custom-set-face! "@lsp.typemod.function.builtin" [] {:link "@function.builtin"})
(custom-set-face! "@lsp.typemod.function.readonly" [] {:link "@method"})
;;(custom-set-face! "@lsp.typemod.type.defaultLibrary" [] {})
(custom-set-face! "@lsp.typemod.variable.defaultLibrary" [] {:link "@variable.builtin"})
(custom-set-face! "@lsp.typemod.variable.injected" [] {:link "@variable"})

;; gutter

(custom-set-face! :Folded [] {:fg oxocharcoal.base02 :bg oxocharcoal.base01})
(custom-set-face! :FoldColumn [] {:fg oxocharcoal.base01 :bg oxocharcoal.base00})
(custom-set-face! :SignColumn [] {:fg oxocharcoal.base01 :bg oxocharcoal.base00})

;; navigation

(custom-set-face! :Directory [] {:fg oxocharcoal.base08 :bg oxocharcoal.none})

;; prompts

(custom-set-face! :EndOfBuffer [] {:fg oxocharcoal.base01 :bg oxocharcoal.none})
(custom-set-face! :ErrorMsg [] {:fg oxocharcoal.base10 :bg oxocharcoal.none})
(custom-set-face! :ModeMsg [] {:fg oxocharcoal.base04 :bg oxocharcoal.none})
(custom-set-face! :MoreMsg [] {:fg oxocharcoal.base08 :bg oxocharcoal.none})
(custom-set-face! :Question [] {:fg oxocharcoal.base04 :bg oxocharcoal.none})
(custom-set-face! :Substitute [] {:fg oxocharcoal.base01 :bg oxocharcoal.base08})
(custom-set-face! :WarningMsg [] {:fg oxocharcoal.base14 :bg oxocharcoal.none})
(custom-set-face! :WildMenu [] {:fg oxocharcoal.base08 :bg oxocharcoal.base01})

;; vimhelp

(custom-set-face! :helpHyperTextJump []
                  {:fg oxocharcoal.base08 :bg oxocharcoal.none})

(custom-set-face! :helpSpecial [] {:fg oxocharcoal.base09 :bg oxocharcoal.none})
(custom-set-face! :helpHeadline [] {:fg oxocharcoal.base10 :bg oxocharcoal.none})
(custom-set-face! :helpHeader [] {:fg oxocharcoal.base15 :bg oxocharcoal.none})

;; diff

(custom-set-face! :DiffAdded [] {:fg oxocharcoal.base07 :bg oxocharcoal.none})
(custom-set-face! :DiffChanged [] {:fg oxocharcoal.base09 :bg oxocharcoal.none})
(custom-set-face! :DiffRemoved [] {:fg oxocharcoal.base10 :bg oxocharcoal.none})
(custom-set-face! :DiffAdd [] {:bg "#122f2f" :fg oxocharcoal.none})
(custom-set-face! :DiffChange [] {:bg "#222a39" :fg oxocharcoal.none})
(custom-set-face! :DiffText [] {:bg "#2f3f5c" :fg oxocharcoal.none})
(custom-set-face! :DiffDelete [] {:bg "#361c28" :fg oxocharcoal.none})

;; search

(custom-set-face! :IncSearch [] {:fg oxocharcoal.base06 :bg oxocharcoal.base10})
(custom-set-face! :Search [] {:fg oxocharcoal.base01 :bg oxocharcoal.base08})

;; tabs

(custom-set-face! :TabLine [] {:link "StatusLineNC"})
(custom-set-face! :TabLineFill [] {:link "TabLine"})
(custom-set-face! :TabLineSel [] {:link "StatusLine"})

;; window

(custom-set-face! :Title [] {:fg oxocharcoal.base04 :bg oxocharcoal.none})
(custom-set-face! :VertSplit [] {:fg oxocharcoal.base01 :bg oxocharcoal.base00})

;; regular syntax

(custom-set-face! :Boolean [] {:fg oxocharcoal.base09 :bg oxocharcoal.none})
(custom-set-face! :Character [] {:fg oxocharcoal.base14 :bg oxocharcoal.none})
(custom-set-face! :Comment [:italic]
                  {:fg oxocharcoal.base03 :bg oxocharcoal.none})
(custom-set-face! :Conceal [] {:fg oxocharcoal.none :bg oxocharcoal.none})
(custom-set-face! :Conditional [] {:fg oxocharcoal.base09 :bg oxocharcoal.none})
(custom-set-face! :Constant [] {:fg oxocharcoal.base04 :bg oxocharcoal.none})
(custom-set-face! :Decorator [] {:fg oxocharcoal.base12 :bg oxocharcoal.none})
(custom-set-face! :Define [] {:fg oxocharcoal.base09 :bg oxocharcoal.none})
(custom-set-face! :Delimeter [] {:fg oxocharcoal.base06 :bg oxocharcoal.none})
(custom-set-face! :Exception [] {:fg oxocharcoal.base09 :bg oxocharcoal.none})
(custom-set-face! :Float [] {:link "Number"})
(custom-set-face! :Function [] {:fg oxocharcoal.base08 :bg oxocharcoal.none})
(custom-set-face! :Identifier [] {:fg oxocharcoal.base04 :bg oxocharcoal.none})
(custom-set-face! :Include [] {:fg oxocharcoal.base09 :bg oxocharcoal.none})
(custom-set-face! :Keyword [] {:fg oxocharcoal.base09 :bg oxocharcoal.none})
(custom-set-face! :Label [] {:fg oxocharcoal.base09 :bg oxocharcoal.none})
(custom-set-face! :Number [] {:fg oxocharcoal.base15 :bg oxocharcoal.none})
(custom-set-face! :Operator [] {:fg oxocharcoal.base09 :bg oxocharcoal.none})
(custom-set-face! :PreProc [] {:fg oxocharcoal.base09 :bg oxocharcoal.none})
(custom-set-face! :Repeat [] {:fg oxocharcoal.base09 :bg oxocharcoal.none})
(custom-set-face! :Special [] {:fg oxocharcoal.base04 :bg oxocharcoal.none})
(custom-set-face! :SpecialChar [] {:fg oxocharcoal.base04 :bg oxocharcoal.none})
(custom-set-face! :SpecialComment [] {:fg oxocharcoal.base08 :bg oxocharcoal.none})
(custom-set-face! :Statement [] {:fg oxocharcoal.base09 :bg oxocharcoal.none})
(custom-set-face! :StorageClass [] {:fg oxocharcoal.base09 :bg oxocharcoal.none})
(custom-set-face! :String [] {:fg oxocharcoal.base14 :bg oxocharcoal.none})
(custom-set-face! :Structure [] {:fg oxocharcoal.base09 :bg oxocharcoal.none})
(custom-set-face! :Tag [] {:fg oxocharcoal.base04 :bg oxocharcoal.none})
(custom-set-face! :Todo [] {:fg oxocharcoal.base13 :bg oxocharcoal.none})
(custom-set-face! :Type [] {:fg oxocharcoal.base09 :bg oxocharcoal.none})
(custom-set-face! :Typedef [] {:fg oxocharcoal.base09 :bg oxocharcoal.none})

;; markdown

(custom-set-face! :markdownBlockquote []
                  {:fg oxocharcoal.base08 :bg oxocharcoal.none})
(custom-set-face! :markdownBold [] {:link "Bold"})
(custom-set-face! :markdownItalic [] {:link "Italic"})
(custom-set-face! :markdownBoldItalic [:bold :italic]
                  {:fg oxocharcoal.none :bg oxocharcoal.none})
(custom-set-face! :markdownRule [] {:link "Comment"})
(custom-set-face! :markdownH1 [] {:fg oxocharcoal.base10 :bg oxocharcoal.none})
(custom-set-face! :markdownH2 [] {:link "markdownH1"})
(custom-set-face! :markdownH3 [] {:link "markdownH1"})
(custom-set-face! :markdownH4 [] {:link "markdownH1"})
(custom-set-face! :markdownH5 [] {:link "markdownH1"})
(custom-set-face! :markdownH6 [] {:link "markdownH1"})
(custom-set-face! :markdownHeadingDelimiter [] {:link "markdownH1"})
(custom-set-face! :markdownHeadingRule [] {:link "markdownH1"})
(custom-set-face! :markdownUrl [:underline]
                  {:fg oxocharcoal.base14 :bg oxocharcoal.none})
(custom-set-face! :markdownCode [] {:link "String"})
(custom-set-face! :markdownCodeBlock [] {:link "markdownCode"})
(custom-set-face! :markdownCodeDelimiter [] {:link "markdownCode"})
(custom-set-face! :markdownUrl [] {:link "String"})
(custom-set-face! :markdownListMarker []
                  {:fg oxocharcoal.base08 :bg oxocharcoal.none})
(custom-set-face! :markdownOrderedListMarker []
                  {:fg oxocharcoal.base08 :bg oxocharcoal.none})

;; asciidoc

(custom-set-face! :asciidocAttributeEntry [] {:fg oxocharcoal.base15 :bg oxocharcoal.none})
(custom-set-face! :asciidocAttributeList [] {:link "asciidocAttributeEntry"})
(custom-set-face! :asciidocAttributeRef [] {:link "asciidocAttributeEntry"})
(custom-set-face! :asciidocHLabel [] {:link "markdownH1"})
(custom-set-face! :asciidocOneLineTitle [] {:link "markdownH1"})
(custom-set-face! :asciidocQuotedMonospaced [] {:link "markdownBlockquote"})
(custom-set-face! :asciidocURL [] {:link "markdownUrl"})

;; treesitter
;;; misc

(custom-set-face! "@comment" [] {:link "Comment"})
(custom-set-face! "@error" [] {:fg oxocharcoal.base11 :bg oxocharcoal.none})

;; @none
;; @preproc
;; @define

(custom-set-face! "@operator" [] {:link "Operator"})

;;; punctuation

(custom-set-face! "@punctuation.delimiter" [] {:fg oxocharcoal.base08 :bg oxocharcoal.none})
(custom-set-face! "@punctuation.bracket" [] {:fg oxocharcoal.base08 :bg oxocharcoal.none})
(custom-set-face! "@punctuation.special" [] {:fg oxocharcoal.base08 :bg oxocharcoal.none})

;;; literals

(custom-set-face! "@string" [] {:link "String"})
(custom-set-face! "@string.regex" [] {:fg oxocharcoal.base07 :bg oxocharcoal.none})
(custom-set-face! "@string.escape" [] {:fg oxocharcoal.base15 :bg oxocharcoal.none})

;; @string.special

(custom-set-face! "@character" [] {:link "Character"})

;; @character.special

(custom-set-face! "@boolean" [] {:link "Boolean"})
(custom-set-face! "@number" [] {:link "Number"})
(custom-set-face! "@float" [] {:link "Float"})

;;; functions

(custom-set-face! "@function" [:bold]
                  {:fg oxocharcoal.base12 :bg oxocharcoal.none})
(custom-set-face! "@function.builtin" [] {:fg oxocharcoal.base12 :bg oxocharcoal.none})

;; @function.call

(custom-set-face! "@function.macro" [] {:fg oxocharcoal.base07 :bg oxocharcoal.none})
(custom-set-face! "@method" [] {:fg oxocharcoal.base07 :bg oxocharcoal.none})

;; @method.call

(custom-set-face! "@constructor" [] {:fg oxocharcoal.base09 :bg oxocharcoal.none})
(custom-set-face! "@parameter" [] {:fg oxocharcoal.base04 :bg oxocharcoal.none})

;;; keywords

(custom-set-face! "@keyword" [] {:fg oxocharcoal.base09 :bg oxocharcoal.none})
(custom-set-face! "@keyword.function" [] {:fg oxocharcoal.base08 :bg oxocharcoal.none})
(custom-set-face! "@keyword.operator" [] {:fg oxocharcoal.base08 :bg oxocharcoal.none})

;; @keyword.return

(custom-set-face! "@conditional" [] {:fg oxocharcoal.base09 :bg oxocharcoal.none})
(custom-set-face! "@repeat" [] {:fg oxocharcoal.base09 :bg oxocharcoal.none})

;; @debug

(custom-set-face! "@label" [] {:fg oxocharcoal.base15 :bg oxocharcoal.none})
(custom-set-face! "@include" [] {:fg oxocharcoal.base09 :bg oxocharcoal.none})
(custom-set-face! "@exception" [] {:fg oxocharcoal.base15 :bg oxocharcoal.none})

;;; types

(custom-set-face! "@type" [] {:link "Type"})
(custom-set-face! "@type.builtin" [] {:link "Type"})

;; @type.defintion
;; @type.qualifier
;; @storageclass
;; @storageclass.lifetime

(custom-set-face! "@attribute" [] {:fg oxocharcoal.base15 :bg oxocharcoal.none})
(custom-set-face! "@field" [] {:fg oxocharcoal.base04 :bg oxocharcoal.none})
(custom-set-face! "@property" [] {:fg oxocharcoal.base16 :bg oxocharcoal.none})

;;; identifiers

(custom-set-face! "@variable" [] {:fg oxocharcoal.base04 :bg oxocharcoal.none})
(custom-set-face! "@variable.builtin" [] {:fg oxocharcoal.base04 :bg oxocharcoal.none})
(custom-set-face! "@constant" [] {:fg oxocharcoal.base14 :bg oxocharcoal.none})
(custom-set-face! "@constant.builtin" [] {:fg oxocharcoal.base07 :bg oxocharcoal.none})
(custom-set-face! "@constant.macro" [] {:fg oxocharcoal.base07 :bg oxocharcoal.none})
(custom-set-face! "@namespace" [] {:fg oxocharcoal.base07 :bg oxocharcoal.none})
(custom-set-face! "@symbol" [:bold]
                  {:fg oxocharcoal.base15 :bg oxocharcoal.none})

;;; text

(custom-set-face! "@text" [] {:fg oxocharcoal.base04 :bg oxocharcoal.none})
(custom-set-face! "@text.strong" [] {:fg oxocharcoal.none :bg oxocharcoal.none})
(custom-set-face! "@text.emphasis" [:bold]
                  {:fg oxocharcoal.base10 :bg oxocharcoal.none})
(custom-set-face! "@text.underline" [:underline]
                  {:fg oxocharcoal.base10 :bg oxocharcoal.none})
(custom-set-face! "@text.strike" [:strikethrough]
                  {:fg oxocharcoal.base10 :bg oxocharcoal.none})
(custom-set-face! "@text.title" [] {:fg oxocharcoal.base10 :bg oxocharcoal.none})
(custom-set-face! "@text.literal" [] {:fg oxocharcoal.base04 :bg oxocharcoal.none})
(custom-set-face! "@text.uri" [:underline]
                  {:fg oxocharcoal.base14 :bg oxocharcoal.none})

;; @text.math
;; @text.environment
;; @text.environment.name
;; @text.reference
;; @text.todo
;; @text.note
;; @text.warning
;; @text.danger
;; @text.diff.add
;; @text.diff.delete
;;; tags

(custom-set-face! "@tag" [] {:fg oxocharcoal.base09 :bg oxocharcoal.none})
(custom-set-face! "@tag.attribute" [] {:fg oxocharcoal.base15 :bg oxocharcoal.none})
(custom-set-face! "@tag.delimiter" [] {:fg oxocharcoal.base15 :bg oxocharcoal.none})

;;; Conceal
;; @conceal
;;; Spell
;; @spell
;; @nospell
;;; non-standard
;; @variable.global
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

(custom-set-face! "@reference" [] {:fg oxocharcoal.base04 :bg oxocharcoal.none})

;; neovim

(custom-set-face! :NvimInternalError [] {:fg oxocharcoal.base00 :bg oxocharcoal.base08})
(custom-set-face! :NormalFloat [] {:fg oxocharcoal.base05 :bg oxocharcoal.blend})
(custom-set-face! :FloatBorder [] {:fg oxocharcoal.blend :bg oxocharcoal.blend})
(custom-set-face! :NormalNC [] {:fg oxocharcoal.base05 :bg oxocharcoal.base00})
(custom-set-face! :TermCursor [] {:fg oxocharcoal.base00 :bg oxocharcoal.base04})
(custom-set-face! :TermCursorNC [] {:fg oxocharcoal.base00 :bg oxocharcoal.base04})

;; statusline/winbar

(custom-set-face! :StatusLine [] {:fg oxocharcoal.base04 :bg oxocharcoal.base00})
(custom-set-face! :StatusLineNC [] {:fg oxocharcoal.base04 :bg oxocharcoal.base01})
(custom-set-face! :StatusReplace [] {:fg oxocharcoal.base00 :bg oxocharcoal.base08})
(custom-set-face! :StatusInsert [] {:fg oxocharcoal.base00 :bg oxocharcoal.base12})
(custom-set-face! :StatusVisual [] {:fg oxocharcoal.base00 :bg oxocharcoal.base14})
(custom-set-face! :StatusTerminal [] {:fg oxocharcoal.base00 :bg oxocharcoal.base11})
(custom-set-face! :StatusNormal [] {:fg oxocharcoal.base00 :bg oxocharcoal.base15})
(custom-set-face! :StatusCommand [] {:fg oxocharcoal.base00 :bg oxocharcoal.base13})
(custom-set-face! :StatusLineDiagnosticWarn [:bold]
                  {:fg oxocharcoal.base14 :bg oxocharcoal.base00})
(custom-set-face! :StatusLineDiagnosticError [:bold]
                  {:fg oxocharcoal.base10 :bg oxocharcoal.base00})

;; telescope

(custom-set-face! :TelescopeBorder [] {:fg oxocharcoal.blend :bg oxocharcoal.blend})
(custom-set-face! :TelescopePromptBorder [] {:fg oxocharcoal.base02 :bg oxocharcoal.base02})
(custom-set-face! :TelescopePromptNormal [] {:fg oxocharcoal.base05 :bg oxocharcoal.base02})
(custom-set-face! :TelescopePromptPrefix [] {:fg oxocharcoal.base08 :bg oxocharcoal.base02})
(custom-set-face! :TelescopeNormal [] {:fg oxocharcoal.none :bg oxocharcoal.blend})
(custom-set-face! :TelescopePreviewTitle [] {:fg oxocharcoal.base02 :bg oxocharcoal.base12})
(custom-set-face! :TelescopePromptTitle [] {:fg oxocharcoal.base02 :bg oxocharcoal.base11})
(custom-set-face! :TelescopeResultsTitle [] {:fg oxocharcoal.blend :bg oxocharcoal.blend})
(custom-set-face! :TelescopeSelection [] {:fg oxocharcoal.none :bg oxocharcoal.base02})
(custom-set-face! :TelescopePreviewLine [] {:fg oxocharcoal.none :bg oxocharcoal.base01})
(custom-set-face! :TelescopeMatching [:bold :italic] {:fg oxocharcoal.base08 :bg oxocharcoal.none})

;; notify

(custom-set-face! :NotifyERRORBorder [] {:fg oxocharcoal.base08 :bg oxocharcoal.none})
(custom-set-face! :NotifyWARNBorder [] {:fg oxocharcoal.base14 :bg oxocharcoal.none})
(custom-set-face! :NotifyINFOBorder [] {:fg oxocharcoal.base05 :bg oxocharcoal.none})
(custom-set-face! :NotifyDEBUGBorder [] {:fg oxocharcoal.base13 :bg oxocharcoal.none})
(custom-set-face! :NotifyTRACEBorder [] {:fg oxocharcoal.base13 :bg oxocharcoal.none})
(custom-set-face! :NotifyERRORIcon [] {:fg oxocharcoal.base08 :bg oxocharcoal.none})
(custom-set-face! :NotifyWARNIcon [] {:fg oxocharcoal.base14 :bg oxocharcoal.none})
(custom-set-face! :NotifyINFOIcon [] {:fg oxocharcoal.base05 :bg oxocharcoal.none})
(custom-set-face! :NotifyDEBUGIcon [] {:fg oxocharcoal.base13 :bg oxocharcoal.none})
(custom-set-face! :NotifyTRACEIcon [] {:fg oxocharcoal.base13 :bg oxocharcoal.none})
(custom-set-face! :NotifyERRORTitle [] {:fg oxocharcoal.base08 :bg oxocharcoal.none})
(custom-set-face! :NotifyWARNTitle [] {:fg oxocharcoal.base14 :bg oxocharcoal.none})
(custom-set-face! :NotifyINFOTitle [] {:fg oxocharcoal.base05 :bg oxocharcoal.none})
(custom-set-face! :NotifyDEBUGTitle [] {:fg oxocharcoal.base13 :bg oxocharcoal.none})
(custom-set-face! :NotifyTRACETitle [] {:fg oxocharcoal.base13 :bg oxocharcoal.none})

;; cmp

(custom-set-face! :CmpItemAbbr [] {:fg "#adadad" :bg oxocharcoal.none})
(custom-set-face! :CmpItemAbbrMatch [:bold]
                  {:fg oxocharcoal.base05 :bg oxocharcoal.none})
(custom-set-face! :CmpItemAbbrMatchFuzzy [:bold]
                  {:fg oxocharcoal.base04 :bg oxocharcoal.none})
(custom-set-face! :CmpItemMenu [:italic]
                  {:fg oxocharcoal.base04 :bg oxocharcoal.none})
(custom-set-face! :CmpItemKindInterface [] {:fg oxocharcoal.base01 :bg oxocharcoal.base08})
(custom-set-face! :CmpItemKindColor [] {:fg oxocharcoal.base01 :bg oxocharcoal.base08})
(custom-set-face! :CmpItemKindTypeParameter [] {:fg oxocharcoal.base01 :bg oxocharcoal.base08})
(custom-set-face! :CmpItemKindText [] {:fg oxocharcoal.base01 :bg oxocharcoal.base09})
(custom-set-face! :CmpItemKindEnum [] {:fg oxocharcoal.base01 :bg oxocharcoal.base09})
(custom-set-face! :CmpItemKindKeyword [] {:fg oxocharcoal.base01 :bg oxocharcoal.base09})
(custom-set-face! :CmpItemKindConstant [] {:fg oxocharcoal.base01 :bg oxocharcoal.base16})
(custom-set-face! :CmpItemKindConstructor [] {:fg oxocharcoal.base01 :bg oxocharcoal.base16})
(custom-set-face! :CmpItemKindReference [] {:fg oxocharcoal.base01 :bg oxocharcoal.base16})
(custom-set-face! :CmpItemKindFunction [] {:fg oxocharcoal.base01 :bg oxocharcoal.base11})
(custom-set-face! :CmpItemKindStruct [] {:fg oxocharcoal.base01 :bg oxocharcoal.base11})
(custom-set-face! :CmpItemKindClass [] {:fg oxocharcoal.base01 :bg oxocharcoal.base11})
(custom-set-face! :CmpItemKindModule [] {:fg oxocharcoal.base01 :bg oxocharcoal.base11})
(custom-set-face! :CmpItemKindOperator [] {:fg oxocharcoal.base01 :bg oxocharcoal.base11})
(custom-set-face! :CmpItemKindField [] {:fg oxocharcoal.base01 :bg oxocharcoal.base12})
(custom-set-face! :CmpItemKindProperty [] {:fg oxocharcoal.base01 :bg oxocharcoal.base12})
(custom-set-face! :CmpItemKindEvent [] {:fg oxocharcoal.base01 :bg oxocharcoal.base12})
(custom-set-face! :CmpItemKindUnit [] {:fg oxocharcoal.base01 :bg oxocharcoal.base13})
(custom-set-face! :CmpItemKindSnippet [] {:fg oxocharcoal.base01 :bg oxocharcoal.base13})
(custom-set-face! :CmpItemKindFolder [] {:fg oxocharcoal.base01 :bg oxocharcoal.base13})
(custom-set-face! :CmpItemKindVariable [] {:fg oxocharcoal.base01 :bg oxocharcoal.base14})
(custom-set-face! :CmpItemKindFile [] {:fg oxocharcoal.base01 :bg oxocharcoal.base14})
(custom-set-face! :CmpItemKindMethod [] {:fg oxocharcoal.base01 :bg oxocharcoal.base15})
(custom-set-face! :CmpItemKindValue [] {:fg oxocharcoal.base01 :bg oxocharcoal.base15})
(custom-set-face! :CmpItemKindEnumMember [] {:fg oxocharcoal.base01 :bg oxocharcoal.base15})

;; nvimtree

(custom-set-face! :NvimTreeImageFile [] {:fg oxocharcoal.base12 :bg oxocharcoal.none})
(custom-set-face! :NvimTreeFolderIcon [] {:fg oxocharcoal.base12 :bg oxocharcoal.none})
(custom-set-face! :NvimTreeWinSeparator [] {:fg oxocharcoal.base00 :bg oxocharcoal.base00})
(custom-set-face! :NvimTreeFolderName [] {:fg oxocharcoal.base09 :bg oxocharcoal.none})
(custom-set-face! :NvimTreeIndentMarker [] {:fg oxocharcoal.base02 :bg oxocharcoal.none})
(custom-set-face! :NvimTreeEmptyFolderName [] {:fg oxocharcoal.base15 :bg oxocharcoal.none})
(custom-set-face! :NvimTreeOpenedFolderName [] {:fg oxocharcoal.base15 :bg oxocharcoal.none})
(custom-set-face! :NvimTreeNormal [] {:fg oxocharcoal.base04 :bg oxocharcoal.base00})

;; neogit

(custom-set-face! :NeogitBranch [] {:fg oxocharcoal.base16 :bg oxocharcoal.none})
(custom-set-face! :NeogitRemote [] {:fg oxocharcoal.base09 :bg oxocharcoal.none})
(custom-set-face! :NeogitHunkHeader [] {:fg oxocharcoal.base04 :bg oxocharcoal.base02})
(custom-set-face! :NeogitHunkHeaderHighlight [] {:fg oxocharcoal.base04 :bg oxocharcoal.base03})

;; hydra

(custom-set-face! :HydraRed [] {:fg oxocharcoal.base12 :bg oxocharcoal.none})
(custom-set-face! :HydraBlue [] {:fg oxocharcoal.base09 :bg oxocharcoal.none})
(custom-set-face! :HydraAmaranth [] {:fg oxocharcoal.base10 :bg oxocharcoal.none})
(custom-set-face! :HydraTeal [] {:fg oxocharcoal.base08 :bg oxocharcoal.none})
(custom-set-face! :HydraHint [] {:fg oxocharcoal.none :bg oxocharcoal.blend})

;; alpha

(custom-set-face! :alpha1 [] {:fg oxocharcoal.base03 :bg oxocharcoal.none})
(custom-set-face! :alpha2 [] {:fg oxocharcoal.base04 :bg oxocharcoal.none})
(custom-set-face! :alpha3 [] {:fg oxocharcoal.base03 :bg oxocharcoal.none})

;; headlines.nvim

(custom-set-face! :CodeBlock [] {:fg oxocharcoal.none :bg oxocharcoal.base01})

;; nvim-bufferline

(custom-set-face! :BufferLineDiagnostic [:bold]
                  {:fg oxocharcoal.base10 :bg oxocharcoal.none})

(custom-set-face! :BufferLineDiagnosticVisible [:bold]
                  {:fg oxocharcoal.base10 :bg oxocharcoal.none})

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

{ : oxocharcoal }