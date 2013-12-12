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
(global-set-key (kbd "M-1") 'shell-command)
(global-set-key (kbd "C-S-o")
                '(lambda ()
                   (interactive)
                   (comment-dwim nil)
                   (evil-insert 1)))
(global-set-key (kbd "M-'")
                '(lambda ()
                   (interactive)
                   (insert "`")))
(global-set-key (kbd "C-x C-m") 'magit-git-command)
(global-set-key (kbd "C-x g l") 'magit-log)
(global-set-key (kbd "M-n") 'comment-open-below)
(global-set-key (kbd "M-e") 'comment-open-above)
(global-set-key (kbd "C-r") 'copy-to-register)
(global-set-key (kbd "M-r") 'insert-register)
(global-set-key (kbd "M-c") 'compile)
(global-set-key (kbd "C-x g b") 'magit-branch-manager)
(global-set-key (kbd "M-SPC") 'mc/mark-all-like-this-dwim)
(global-set-key (kbd "M-m") 'mc/mark-more-like-this-extended)
(global-set-key (kbd "C-x g d") 'magit-diff)
(global-set-key (kbd "C-x x j") 'direx:jump-to-directory-other-window)
(global-set-key (kbd "C-x x f") 'direx:find-directory-other-window)
(global-set-key (kbd "M-d") 'dired)
(global-set-key (kbd "M-f") 'find-file)
(global-set-key (kbd "M-b") 'switch-to-buffer)

 ;; C-8 will increase opacity (== decrease transparency)
 ;; C-9 will decrease opacity (== increase transparency
 ;; C-0 will returns the state to normal
(global-set-key (kbd "C-8") '(lambda()(interactive)(djcb-opacity-modify)))
(global-set-key (kbd "C-9") '(lambda()(interactive)(djcb-opacity-modify t)))
(global-set-key (kbd "C-0") '(lambda()(interactive)
                               (modify-frame-parameters nil `((alpha . 100)))))
