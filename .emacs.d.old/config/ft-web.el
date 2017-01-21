(setq-local indent-tabs-mode nil)
(setq-local tab-stop-list (number-sequence 2 200 2))
(setq-local tab-width 2)
(setq-local evil-shift-width 2)
(setq-local web-mode-markup-indent-offset 2)

(smartparens-mode 1)
(rainbow-mode 1)
(rainbow-delimiters-mode 1)
(highlight-indentation-current-column-mode 1)

(local-set-key (kbd "C-j") 'newline-and-indent)
