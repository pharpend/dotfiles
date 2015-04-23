(company-mode 1)
(highlight-indentation-current-column-mode 1)
(rainbow-delimiters-mode 1)
(rainbow-mode 1)
(smartparens-mode 1)

(setq-local fill-column 80)

(setq-local evil-indent 2)
(setq-local c-basic-offset 2)
(setq-local evil-shift-width 2)
(setq-local tab-width 2)
(setq-local tab-stop-list (number-sequence 2 80 2))
(setq-local indent-tabs-mode nil)

(local-set-key (kbd "M-e") 'windmove-up)
