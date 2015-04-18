(auto-complete-mode -1)
(company-mode 1)
(highlight-indentation-current-column-mode 1)
(hindent-mode 1)
(rainbow-mode 1)
(rainbow-delimiters-mode 1)
(smartparens-mode 1)
;; (structured-haskell-mode -1)
(turn-on-eldoc-mode)
(turn-off-haskell-simple-indent)

(setq-local indent-tabs-mode nil)
(setq-local indent-line-function 'indent-relative-maybe)
(setq-local tab-width 2)
(setq-local tab-stop-list (number-sequence 2 200 2))
(setq-local evil-shift-width 2)
(setq-local fill-column 72)

;; (define-key haskell-mode-map (kbd "<C-return>") 'hindent/reformat-decl)
(define-key haskell-mode-map (kbd "C-c i a") 'haskell-add-import)
(define-key haskell-mode-map (kbd "C-c i s") 'haskell-add-import)
(define-key haskell-mode-map (kbd "C-c c d") 'haskell-cabal-add-dependency)
(define-key haskell-mode-map (kbd "C-c s c") 'haskell-session-change)

;; (setq-local haskell-literate "tex")
