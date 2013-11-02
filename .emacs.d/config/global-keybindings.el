;; Global keybindings for Emacs

(global-set-key (kbd "C-x g s") 'magit-status)
(global-set-key [f11] 'toggle-fullscreen)
(global-set-key (kbd "RET") 'newline-and-indent)
(global-set-key (kbd "C-d") 'dired)
(global-set-key (kbd "C-\\") 'dabbrev-expand)
(global-set-key (kbd "C-x C-k") 'kill-this-buffer)
(global-set-key (kbd "C-x v") 'set-variable)
(global-set-key (kbd "C-x C-o") 'other-window)
(global-set-key (kbd "C-x C-b") 'switch-to-buffer)
(global-set-key (kbd "C-x C-e") 'eval-region)
(global-set-key (kbd "C-x b") 'eval-buffer)
