;;
;; $Id$
;; 

(customize-set-variable
 'isabelle-isar-prog-name
 (concat (getenv "ISABELLE") " " (getenv "PROOFGENERAL_LOGIC")))

(customize-set-variable 'proof-assistant-table '((isar "Isabelle/Isar" "\\.thy$")))
