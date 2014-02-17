;; Filetype options for Markdown

(setq-local indent-tabs-mode nil)
(setq-local tab-width 2)
(setq-local tab-stop-list (number-sequence 2 200 2))
(setq-local evil-shift-width 2)

(auto-fill-mode 1)
(flyspell-mode 1)
(turn-on-pandoc)

;; (pandoc-set-write "html5")
;; (pandoc-set-output (format "%s.html" (buffer-file-name)))
(define-key pandoc-mode-map (kbd "C-c / o") 'pandoc-set-output)

(local-set-key (kbd "M-n") 'windmove-down)
