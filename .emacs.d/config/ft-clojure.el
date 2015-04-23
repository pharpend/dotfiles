(auto-complete-mode 1)
(paredit-mode 1)
(rainbow-mode 1)
(rainbow-delimiters-mode-enable)

(setq-local fill-column 80)

(setq-local evil-shift-width 2)
(setq-local tab-width 2)
(setq-local tab-stop-list (number-sequence 2 200 2))
(setq-local indent-tabs-mode nil)

(local-set-key (kbd "M-d") 'ido-dired)
(local-set-key (kbd "C-a") 'paredit-backward)
(local-set-key (kbd "C-t") 'paredit-forward)
