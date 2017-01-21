;; Filetype options for dired

(define-key dired-mode-map (kbd "C-c w") 'wdired-change-to-wdired-mode)
;; (eval-after-load "dired-x" '(progn
;;  (define-key dired-mode-map (kbd "p")
;;    (lookup-key dired-mode-map (kbd "e")))
;;  (define-key dired-mode-map (kbd "e") 'dired-previous-line)))
