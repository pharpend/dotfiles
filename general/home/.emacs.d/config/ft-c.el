(setq-local evil-shift-width 2)
(setq-local tab-width 2)
(setq-local tab-stop-list (number-sequence 2 200 2))
(setq-local indent-tabs-mode nil)

(auto-complete-mode -1)
(autopair-mode 1)
(company-mode 1)
(rainbow-mode 1)
(rainbow-delimiters-mode 1)

(setq-local comment-start "// ")
(setq-local comment-end "")

;; (local-set-key (kbd "M-e") 'comment-open-above)

(c-set-style "user")
(setq-local c-basic-offset 2)
(setq-local c-syntactic-indentation t)
(c-set-offset block-open 2)
