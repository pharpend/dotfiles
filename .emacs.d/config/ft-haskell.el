(auto-complete-mode -1)
(company-mode 1)
(highlight-indentation-current-column-mode 1)
(hs-minor-mode 1)
(interactive-haskell-mode 1)
(rainbow-mode 1)
(rainbow-delimiters-mode 1)
(smartparens-mode 1)
(turn-on-eldoc-mode)

(setq-local indent-tabs-mode nil)
(setq-local indent-line-function 'indent-relative-maybe)
;; (setq-local tab-width 2)
;; (setq-local tab-stop-list (number-sequence 2 200 2))
;; (setq-local evil-shift-width 2)
(setq-local fill-column 80)

(define-key haskell-mode-map (kbd "C-c i i") 'hindent/reformat-decl)
(define-key haskell-mode-map (kbd "C-c i a") 'haskell-add-import)
(define-key haskell-mode-map (kbd "C-c i s") 'haskell-add-import)
(define-key haskell-mode-map (kbd "C-c c d") 'haskell-cabal-add-dependency)
(define-key haskell-mode-map (kbd "C-c s c") 'haskell-session-change)
(define-key haskell-mode-map (kbd "M-p") 'helm-projectile)
(define-key shm-map (kbd "C-c C-s") 'shm/case-split)
(define-key shm-map (kbd ")") nil)
(define-key shm-map (kbd "M-y") nil)
(define-key evil-insert-state-map (kbd "<tab>") 'shm/simple-indent)
(define-key evil-insert-state-map (kbd "<backtab>") 'shm/simple-indent-backtab)
(define-key evil-normal-state-map (kbd "<tab>") 'shm/simple-indent)
(define-key evil-normal-state-map (kbd "<backtab>") 'shm/simple-indent-backtab)
