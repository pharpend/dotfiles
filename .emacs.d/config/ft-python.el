;; Indentation is 4 in python

(auto-complete-mode 1)

(setq-local indent-tabs-mode nil)
(setq-local tab-stop-list (number-sequence 4 80 4))
(setq-local evil-shift-width 4)
(setq-local tab-width 4)

(setq-local python-check-command "/usr/bin/flake8-python")

(define-key elpy-mode-map (kbd "M-n") 'windmove-down)
(define-key elpy-mode-map (kbd "M-e") 'windmove-up)

(local-set-key (kbd "C-c f n") 'flymake-goto-next-error)
(local-set-key (kbd "C-c f p") 'flymake-goto-prev-error)
(local-set-key (kbd "C-c f c") 'flymake-display-err-menu-for-current-line)
