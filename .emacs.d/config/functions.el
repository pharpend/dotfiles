;; Functions - my functions in Emacs Lisp. Most of these are just
;; shortcuts to other functions.

(defun kb ()
  "Kill buffer"
  (interactive)
  (kill-this-buffer))

(defun kbn (n)
  "Kill buffer by name"
  (interactive "sKill buffer: ")
  (kill-buffer n))
