;; Indentation is 4 in python

(setq-local indent-tabs-mode nil)
(setq-local tab-stop-list (number-sequence 4 80 4))
(setq-local evil-shift-width 4)
(setq-local tab-width 4)

(define-key elpy-mode-map (kbd "M-n") 'comment-open-below)
(define-key elpy-mode-map (kbd "M-e") 'comment-open-above)
