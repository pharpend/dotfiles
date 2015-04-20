(rainbow-mode 1)
(rainbow-delimiters-mode 1)
(flyspell-mode 1)
(wc-mode 1)
(hl-highlight-mode 1)

(setq-local fill-column 72)
(setq-local indent-tabs-mode nil)
(setq-local tab-width 2)
(setq-local tab-stop-list (number-sequence 2 200 2))
(setq-local evil-shift-width 2)

;; (local-set-key (kbd "C-c C-c") 'compile)
(define-key evil-insert-state-map (kbd "`") 'self-insert-command)
(local-set-key (kbd "RET") 'reindent-then-newline-and-indent)

(defun latex-fill-paragraph (stuff)
  nil)

(setq-local LaTeX-item-indent 0)
(setq-local fill-paragraph-function nil)
