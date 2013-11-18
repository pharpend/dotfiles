;; Filetype options for dired

(eval-after-load "dired-x" '(progn
 (define-key dired-mode-map (kbd "p")
   (lookup-key dired-mode-map (kbd "e")))
 (define-key dired-mode-map (kbd "e") 'dired-previous-line)))
