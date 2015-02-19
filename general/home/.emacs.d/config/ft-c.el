(setq-local evil-shift-width 2)
(setq-local tab-width 2)
(setq-local tab-stop-list (number-sequence 2 200 2))
(setq-local indent-tabs-mode nil)
(setq-local c-syntactic-indentation 2)
;; (c-set-style "k&r")

(smartparens-mode 1)
(rainbow-mode 1)
(rainbow-delimiters-mode 1)

(setq-local comment-start "// ")
(setq-local comment-end "")

;; (local-set-key (kbd "M-e") 'comment-open-above)
