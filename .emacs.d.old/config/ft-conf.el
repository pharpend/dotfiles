(autopair-mode 1)
(auto-fill-mode 1)
(rainbow-mode 1)

(setq-local indent-tabs-mode nil)
(setq-local tab-width 4)
(setq-local tab-stop-list (number-sequence 4 80 4))
(setq-local evil-shift-width 4)

(setq-local fill-column 80)

;; (define-key evil-visual-state-map (kbd ";")
;;   '(lambda ()
;;      (interactive)
;;      (evil-open-below)
;;      (evil-insert))
;; (define-key evil-visual-state-map (kbd ":") 
;;   '(lambda ()
;;      (interactive)
;;      (evil-open-above)
;;      (evil-insert))
;; (define-key evil-normal-state-map (kbd ";") 
;;   '(lambda ()
;;      (interactive)
;;      (evil-open-below)
;;      (evil-insert))
;; (define-key evil-normal-state-map (kbd ":") 
;;   '(lambda ()
;;      (interactive)
;;      (evil-open-above)
;;      (evil-insert))
