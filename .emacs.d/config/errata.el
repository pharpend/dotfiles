;; Extraneous stuff

(defun comment-open-below ()
  "Open comment below"
  (interactive)
  (evil-open-below 1)
  (comment-dwim nil))

(defun comment-open-above ()
  "Open comment above"
  (interactive)
  (evil-open-above 1)
  (comment-dwim nil))

(setq dabbrev-check-other-buffers t)

(elpy-enable)

(eval-after-load "auto-complete"
  '(add-to-list 'ac-modes 'cider-repl-mode))
(setq cider-repl-pop-to-buffer-on-connect nil)

(ac-config-default)
