(highlight-indentation-current-column-mode 1)
(rainbow-mode 1)
(rainbow-delimiters-mode 1)
(smartparens-mode 1)

(setq-local indent-tabs-mode nil)
(setq-local indent-line-function 'indent-relative-maybe)
(setq-local tab-width 2)
(setq-local tab-stop-list (number-sequence 2 200 2))
(setq-local evil-shift-width 2)

(setq-local tuareg-library-path "/usr/lib/ocaml")

;; (merlin-mode 1)
;; (tuareg-imenu-set-imenu)
;; (utop-setup-ocaml-buffer)
;; ;; So you can do it on a mac, where `C-<up>` and `C-<down>` are used
;; ;; by spaces.
;; (define-key merlin-mode-map
;;   (kbd "C-c <up>") 'merlin-type-enclosing-go-up)
;; (define-key merlin-mode-map
;;   (kbd "C-c <down>") 'merlin-type-enclosing-go-down)
;; (set-face-background 'merlin-type-face "#88FF44")
;; (setq-local merlin-use-auto-complete-mode t)
;; (setq-local merlin-error-after-save nil)
