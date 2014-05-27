(setq-local indent-tabs-mode nil)
(setq-local tab-width 2)
(setq-local tab-stop-list (number-sequence 2 200 2))
(setq-local evil-shift-width 2)

(auto-complete-mode 1)
(rainbow-mode 1)
(rainbow-delimiters-mode 1)
(structured-haskell-mode 1)
(turn-on-eldoc-mode)
(turn-on-haskell-doc)
(turn-off-haskell-simple-indent)

;; (define-key evil-insert-state-map (kbd "RET") 'shm/newline-indent)
;; (define-key evil-insert-state-map (kbd "C-j") 'shm/simple-indent-newline-indent)
;; (define-key evil-visual-state-map (kbd "RET") 'shm/newline-indent)
;; (define-key evil-visual-state-map (kbd "C-j") 'shm/simple-indent-newline-indent)

(define-key shm-map (kbd ":")
  '(lambda ()
     (interactive)
     (previous-line 1)
     (evil-append-line 1)
     (shm/newline-indent)))

(define-key shm-map (kbd ";")
  '(lambda ()
     (interactive)
     (evil-insert 1)
     (beginning-of-line)
     (end-of-line)
     (shm/newline-indent)))

(define-key evil-insert-state-map (kbd ":") 'self-insert-command)
(define-key evil-insert-state-map (kbd ";") 'self-insert-command)
