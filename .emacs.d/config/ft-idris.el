(company-mode 1)
(hl-highlight-mode 1)
(rainbow-mode 1)
(rainbow-delimiters-mode 1)
(smartparens-mode 1)
(turn-on-eldoc-mode)

(setq-local indent-tabs-mode nil)
(setq-local indent-line-function 'indent-relative-maybe)
(setq-local tab-width 2)
(setq-local tab-stop-list (number-sequence 2 200 2))
(setq-local evil-shift-width 2)

(define-key evil-insert-state-map (kbd "C") 'self-insert-command)
