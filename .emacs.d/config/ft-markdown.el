;; Filetype options for Markdown

(setq-local indent-tabs-mode nil)
(setq-local tab-width 4)
(setq-local tab-stop-list (number-sequence 4 400 4))
(setq-local evil-shift-width 4)

(smartparens-mode 1)
(rainbow-mode 1)
(rainbow-delimiters-mode 1)
(flyspell-mode 1)

(local-set-key (kbd "M-n") 'windmove-down)
