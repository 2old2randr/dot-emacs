;;; -*- coding: utf-8; -*-
;; isar-unicode-tokens.el --- Tokens for Unicode Tokens package
;;
;; Copyright(C) 2008 David Aspinall / LFCS Edinburgh
;; Author:    David Aspinall <David.Aspinall@ed.ac.uk>
;;
;; This file is loaded by `proof-unicode-tokens.el'.
;;
;; It sets the variables defined at the top of unicode-tokens.el,
;; unicode-tokens-<foo> is set from isar-<foo>.  See the corresponding
;; variable for documentation.
;;

(defconst isar-token-format "\\<%s>")
(defconst isar-charref-format "\\<#x%x>")
(defconst isar-token-prefix "\\<")
(defconst isar-token-suffix ">")
(defconst isar-token-match "\\\\<\\([a-zA-Z0-9]+\\)")
(defconst isar-hexcode-match "\\\\<\\(#[xX][0-9A-Fa-f]+\\)")

(defconst isar-token-name-alist
  '(; token name, unicode char sequence
   ("alpha" . "α")
   ("beta" . "β")
   ("gamma" . "γ")
   ("delta" . "δ")
   ("epsilon" . "ϵ")
   ("varepsilon" . "ε")
   ("zeta" . "ζ")
   ("eta" . "η")
   ("theta" . "θ")
   ("vartheta" . "ϑ")
   ("iota" . "ι")
   ("kappa" . "κ")
   ("lambda" . "λ")
   ("mu" . "μ")
   ("nu" . "ν")
   ("xi" . "ξ")
   ("o" . "ο")
   ("pi" . "π")
   ("varpi" . "ϖ")
   ("rho" . "ρ")
   ("varrho" . "ϱ")
   ("sigma" . "σ")
   ("varsigma" . "ς")
   ("tau" . "τ")
   ("upsilon" . "υ")
   ("phi" . "ϕ")
   ("varphi" . "φ")
   ("chi" . "χ")
   ("psi" . "ψ")
   ("omega" . "ω")
   ("Gamma" . "Γ")
   ("Delta" . "Δ")
   ("Theta" . "Θ")
   ("Lambda" . "Λ")
   ("Xi" . "Ξ")
   ("Pi" . "Π")
   ("Sigma" . "Σ")
   ("Upsilon" . "Υ")
   ("Phi" . "Φ")
   ("Psi" . "Ψ")
   ("Omega" . "Ω")
   ("aleph" . "ℵ")
   ("hbar" . "ℏ")
   ("index" . "ı")
   ("ell" . "ℓ")
   ("wp" . "℘")
   ("Re" . "ℜ")
   ("Im" . "ℑ")
   ("partial" . "∂")
   ("infinity" . "∞")
   ("Box" . "□")
   ("emptyset" . "∅")
   ("nabla" . "∇")
   ("surd" . "√")
   ("top" . "⊤")
   ("angle" . "∠")
   ("triangle" . "△")
   ("Diamond" . "◇")
   ("exists" . "∃")
   ("forall" . "∀")
   ("not" . "¬")
   ("flat" . "♭")
   ("natural" . "♮")
   ("sharp" . "♯")
   ("clubsuit" . "♣")
   ("diamondsuit" . "♢")
   ("heartsuit" . "♡")
   ("spadesuit" . "♠")
   ("Sum" . "∑")
   ("Prod" . "∏")
   ("Coprod" . "∐")
   ("integral" . "∫")
   ("ointegral" . "∮")
   ("Inter" . "⋂")
   ("Union" . "⋃")
   ("Squnion" . "⨆")
   ("Or" . "⋁")
   ("And" . "⋀")
   ("Odot" . "⨀")
   ("Otimes" . "⨂")
   ("Oplus" . "⨁")
   ("Uplus" . "⨄")
   ("pm" . "±")
   ("mp" . "∓")
   ("setminus" . "∖")
   ("cdot" . "⋅")
   ("times" . "×")
   ("ast" . "∗")
   ("star" . "⋆")
   ("diamond" . "⋄")
   ("circ" . "∘")
   ("bullet" . "∙")
   ("div" . "÷")
   ("lhd" . "⊲")
   ("inter" . "∩")
   ("union" . "∪")
   ("uplus" . "⊎")
   ("sqinter" . "⊓")
   ("squnion" . "⊔")
   ("triangleleft" . "◁")
   ("triangleright" . "▷")
   ("wr" . "≀")
   ("bigcirc" . "◯")
   ("bigtriangleup" . "△")
   ("bigtriangledown" . "▽")
   ("rhd" . "⊳")
   ("or" . "∨")
   ("and" . "∧")
   ("oplus" . "⊕")
   ("ominus" . "⊖")
   ("otimes" . "⊗")
   ("oslash" . "⊘")
   ("odot" . "⊙")
   ("dagger" . "†")
   ("ddagger" . "‡")
   ("amalg" . "⨿")
   ("unlhd" . "⊴")
   ("unrhd" . "⊵")
   ("le" . "≤")
   ("prec" . "≺")
   ("preceq" . "≼")
   ("lless" . "≪")
   ("subset" . "⊂")
   ("subseteq" . "⊆")
   ("sqsubseteq" . "⊑")
   ("in" . "∈")
   ("turnstile" . "⊢")
   ("smile" . "⌣")
   ("frown" . "⌢")
   ("sqsubset" . "⊏")
   ("ge" . "≥")
   ("succ" . "≻")
   ("succeq" . "≽")
   ("ggreater" . "≫")
   ("supset" . "⊃")
   ("supseteq" . "⊇")
   ("sqsupseteq" . "⊒")
   ("ni" . "∋")
   ("dashv" . "⊣")
   ("mid" . "∣")
   ("parallel" . "∥")
   ("sqsupset" . "⊐")
   ("equiv" . "≡")
   ("sim" . "∼")
   ("simeq" . "≃")
   ("asymp" . "≍")
   ("approx" . "≈")
   ("cong" . "≅")
   ("bowtie" . "⋈")
   ("propto" . "∝")
   ("Turnstile" . "⊨")
   ("doteq" . "≐")
   ("bottom" . "⊥")
   ("Join" . "⨝")
   ("notlt" . "≮")
   ("notle" . "≰")
   ("notprec" . "⊀")
   ("notpreceq" . "⋠")
   ("notsubset" . "⊄")
   ("notsubseteq" . "⊈")
   ("not" . "⋢")
   ("notgt" . "≯")
   ("notge" . "≱")
   ("notsucc" . "⊁")
   ("notsucceq" . "⋡")
   ("notsupset" . "⊅")
   ("notsupseteq" . "⊉")
   ("notsqsupseteq" . "⋣")
   ("noteq" . "≠")
   ("notequiv" . "≢")
   ("notsim" . "≁")
   ("notsimeq" . "≄")
   ("notapprox" . "≉")
   ("notcong" . "≇")
   ("notasymp" . "≭")
   ("leftarrow" . "←")
   ("Leftarrow" . "⇐")
   ("rightarrow" . "→")
   ("Rightarrow" . "⇒")
   ("leftrightarrow" . "↔")
   ("Leftrightarrow" . "⇔")
   ("mapsto" . "↦")
   ("hookleftarrow" . "↩")
   ("leftharpoonup" . "↼")
   ("leftharpoondown" . "↽")
   ("rightleftharpoons" . "⇌")
;; Real long symbols, may work in some places: if
;; you see symbols below, you're lucky!
;;;    ("longleftarrow" . "⟵")
;;;    ("Longleftarrow" . "⟸")
;;;    ("longrightarrow" . "⟶")
;;;    ("Longrightarrow" . "⟹")
;;;    ("longleftrightarrow" . "⟷")
;;;    ("longmapsto" . "⟼")
;; Faked long symbols, for use otherwise:
     ("longleftarrow" . "←-")
     ("Longleftarrow" . "⇐=")
     ("longrightarrow" . "-→")
     ("Longrightarrow" . "=⇒")
     ("longleftrightarrow" . "←→")
     ("Longleftrightarrow" . "⇐⇒")
     ("longmapsto" . "❘→")
   ("hookrightarrow" . "↪")
   ("rightharpoonup" . "⇀")
   ("rightharpoondown" . "⇁")
   ("leadsto" . "↝")
   ("uparrow" . "↑")
   ("Uparrow" . "⇑")
   ("downarrow" . "↓")
   ("Downarrow" . "⇓")
   ("updown" . "↕")
   ("Updownarrow" . "⇕")
   ("nearrow" . "↗")
   ("searrow" . "↘")
   ("swarrow" . "↙")
   ("nwarrow" . "↖")
   ("lfloor" . "⌊")
   ("langle" . "⟨")
   ("lceil" . "⌈")
   ("langle" . "⟪")
   ("lbrakk" . "⟦")
   ("rfloor" . "⌋")
   ("rangle" . "⟩")
   ("rceil" . "⌉")
   ("rangle" . "⟫")
   ("rbrakk" . "⟧")
   ("vdots" . "⋮")
   ("cdots" . "⋯")
   ("ddots" . "⋱")
   ("closequote" . "’")
   ("openquote" . "‘")
   ("opendblquote" . "”")
   ("closedblquote" . "“")
   ("hyphen" . "‐")
   ("endash" . "–")
   ("emdash" . "—")
   ("prime" . "′")
   ("doubleprime" . "″")
   ("tripleprime" . "‴")
   ("quadrupleprime" . "⁗")
   ("exclamdown" . "¡")
   ("questiondown" . "¿")
   ("nbspace" . " ")
   ("thinspace" . " ")
   ("copyright" . "©")
   ("pounds" . "£")
   ("ldots" . "…")
   ("nat" . "ℕ")
   ("int" . "ℤ")
   ("rat" . "ℚ")
   ("real" . "ℝ")
   ("complex" . "ℂ")
   ("notin" . "∉")
   ("Colon" . "∷")
   ("bar" . "¦")
   ("Sqinter" . "⨅")
   ("guillemotleft" . "«")
   ("guillemotright" . "»")
   ("acute" . "´")
   ("inverse" . "¯")
   ("notni" . "∌")
   ("euro" . "€")
   ("yen" . "¥")
   ("cent" . "¢")
   ;;; Not in plain Isar-X-Symbol
   ("oe" . "œ")
   ("OE" . "Œ")
   ("ae" . "æ")
   ("AE" . "Æ")
   ("aa" . "å")
   ("AA" . "Å")
   ("o" . "ø") ;; LaTeX \o
   ("O" . "Ø") ;; LaTeX \O
   ("l" . "ł") ;; LaTeX \l
   ("L" . "Ł") ;; LaTeX \L
   ("ss" . "ß") ;; LaTeX \ss
   ("S" . "§")  ;; LaTeX \S
   ("P" . "¶")  ;; LaTeX \P
   ("colonequals" . "≔")
   ("ff" . "ﬀ")
   ("fi" . "ﬁ")
   ("fl" . "ﬂ")
   ("ffi" . "ﬃ")
   ("ffl" . "ﬄ")
   ))

;; FIXME: not all of these shortcuts work, for some reason
;; e.g. /0 although appears in input method prompts
;; long arrows --> ==> don't appear in prompts
(defvar isar-shortcut-alist
  '(; short cut, unicode string
    ("<>" . "⋄")
    ("|>" . "⊳")
    ("\\/" . "∨")
    ("/\\" . "∧")
    ("+O" . "⊕")
    ("-O" . "⊖")
    ("xO" . "⊗")
    ("/O" . "⊘")
    (".O" . "⊙")
    ("|+" . "†")
    ("|++" . "‡")
    ("<=" . "≤")
    ("|-" . "⊢")
    (">=" . "≥")
    ("-|" . "⊣")
    ("||" . "∥")
    ("==" . "≡")
    ("~=" . "≃")
    ("~~~" . "≍")
    ("~~" . "≈")
    ("~==" . "≅")
    ("|<>|" . "⋈")
    ("|=" . "⊨")
    ("=." . "≐")
    ("_|_" . "⊥")
    ("</" . "≮")
    (">=/" . "≱")
    ("=/" . "≠")
    ("==/" . "≢")
    ("~/" . "≁")
    ("~=/" . "≄")
    ("~~/" . "≉")
    ("~==/" . "≇")
    ("<-" . "←")
    ("<=" . "⇐")
    ("->" . "→")
    ("=>" . "⇒")
    ("<->" . "↔")
    ("<=>" . "⇔")
    ("|->" . "↦")
    ("<--" . "⟵")
    ("<==" . "⟸")
    ("-->" . "⟶")
    ("==>" . "⟹")
    ("<==>" . "⟷")
    ("|-->" . "⟼")
    ("<--" . "←⎯")
    ("<-->" . "⟷")
    ("<<" . "⟪")
    ("[|" . "⟦")
    (">>" . "⟫")
    ("|]" . "⟧")
    ("``" . "”")
    ("''" . "“")
    ("--" . "–")
    ("---" . "—")
    ("''" . "″")
    ("'''" . "‴")
    ("''''" . "⁗")
    (":=" . "≔")
    ;; some word shortcuts, started with backslash otherwise
    ;; too annoying.
    ("\nat" . "ℕ")
    ("\int" . "ℤ")
    ("\rat" . "ℚ")
    ("\real" . "ℝ")
    ("\complex" . "ℂ")
    ("\euro" . "€")
    ("\yen" . "¥")
    ("\cent" . "¢")))


;;
;; prover symbol support 
;;

(eval-after-load "isar" 
  '(setq 
    proof-xsym-activate-command
    (isar-markup-ml "change print_mode (insert (op =) \"xsymbols\")")
    proof-xsym-deactivate-command
    (isar-markup-ml "change print_mode (remove (op =) \"xsymbols\")")))



(provide 'isar-unicode-tokens)

;;; isar-unicode-tokens.el ends here
