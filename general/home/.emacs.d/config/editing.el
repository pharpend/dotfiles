;; Configurations for editing

(setq evil-shift-width 2)
(setq tab-width 2)
(setq tab-stop-list (number-sequence 2 200 2))
(setq indent-tabs-mode nil)

(show-paren-mode 1)
(rainbow-delimiters-mode 1)
(rainbow-mode 1)

;; Better file and buffer switching
(ido-mode 1)
;; (helm-mode 1)
;; (global-set-key (kbd "M-x") 'helm-M-x)
;; (setq helm-buffers-fuzzy-matching t)
;; (setq helm-recentf-fuzzy-match t)
;; (setq helm-M-x-fuzzy-match t)
;; (setq helm-locate-fuzzy-match t)
;; (setq helm-semantic-fuzzy-match t)
;; (setq helm-imenu-fuzzy-match t)
;; (setq helm-apropos-fuzzy-match t)
;; (setq helm-apropos-fuzzy-match t)

(evilnc-default-hotkeys)
