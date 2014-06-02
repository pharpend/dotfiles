(setq-local indent-tabs-mode nil)
(setq-local tab-width 2)
(setq-local tab-stop-list (number-sequence 2 200 2))
(setq-local evil-shift-width 2)
(setq-local ac-sources
            (append '(ac-source-yasnippet
                      ac-source-abbrev
                      ac-source-words-in-buffer
                      my/ac-source-haskell)
                    ac-sources))

(auto-complete-mode 1)
(rainbow-mode 1)
(rainbow-delimiters-mode 1)
(smartparens-mode 1)
(structured-haskell-mode 1)
(turn-on-eldoc-mode)
(turn-off-haskell-simple-indent)

;; (local-set-key "C-c l" 'hs-lint)

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
(define-key evil-normal-state-map (kbd "M-RET") 'shm/newline-indent)
(define-key evil-insert-state-map (kbd "M-RET") 'shm/newline-indent)
(define-key evil-insert-state-map (kbd "C") 'self-insert-command)
