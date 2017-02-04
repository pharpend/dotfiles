(smartparens-mode 1)
(rainbow-mode 1)
(rainbow-delimiters-mode 1)
(wc-mode 1)

(setq-local fill-column 80)
(setq-local indent-tabs-mode nil)
(setq-local tab-width 2)
(setq-local tab-stop-list (number-sequence 2 200 2))
(setq-local evil-shift-width 2)

(define-key evil-insert-state-map (kbd "`") 'self-insert-command)
