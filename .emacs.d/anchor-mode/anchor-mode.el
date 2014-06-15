(defun previous-line-column ()
  "Start column of the previous line"
  (interactive)
  (previous-line)
  (unless (bobp)
    (message "%d" (current-column))))

(define-key (kbd C-c))
(defun anchor-indent ()
  "Indent to the same level as the previous line."
  ()))

(define-minor-mode anchor-mode
  "A Haskell indentation mode that is better than simple-indent,
  and simpler than structured-haskell-mode"

  :lighter " ⚓"
  :group 'haskell
  :keymap '(([backtab]  . anchor-left)
            ([tab]      . anchor-right))
  (kill-local-variable 'indent-line-function)
  (when anchor-mode
    (set (make-local-variable 'indent-line-function)
         'anchor-indent)
    (run-hooks 'anchor-mode-hook)))
