(autopair-mode 1)
(auto-fill-mode 1)

(setq-local fill-column 80)

(setq-local evil-indent 2)
(setq-local c-basic-offset 2)
(setq-local evil-shift-width 2)
(setq-local tab-width 2)
(setq-local tab-stop-list (number-sequence 2 80 2))
(setq-local indent-tabs-mode nil)

(local-set-key (kbd "M-e") 'open-comment-above)
