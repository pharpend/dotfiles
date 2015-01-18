;; Common Lisp filetype extension

(company-mode 1)
(paredit-mode 1)
(eldoc-mode 1)
(rainbow-mode 1)
(rainbow-delimiters-mode 1)
;; (rainbow-identifiers-mode 1)
(smartparens-mode 1)

(setq-local indent-tabs-mode nil)
(setq-local tab-width 2)
(setq-local evil-shift-width 2)
(setq-local tab-stop-list (number-sequence 2 200 2))
