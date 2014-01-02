(autopair-mode 1)
(auto-fill-mode 1)
(auto-complete-mode 1)
(yas-minor-mode)

(setq-local fill-column 80)

(setq-local indent-tabs-mode nil)
(setq-local evil-shift-width 4)
(setq-local tab-width 4)
(setq-local tab-stop-list (number-sequence 4 80 4))

(local-set-key (kbd "M-e") 'comment-open-above)
