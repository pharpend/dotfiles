(evil-mode 1)

;; STUFF FOR COLEMAK
(define-key evil-normal-state-map (kbd "H") 'evil-beginning-of-line)
(define-key evil-normal-state-map (kbd "n") 'evil-next-line)
(define-key evil-normal-state-map (kbd "e") 'evil-previous-line)
(define-key evil-normal-state-map (kbd "i") 'evil-forward-char)
(define-key evil-normal-state-map (kbd "I") 'evil-end-of-line)
(define-key evil-normal-state-map (kbd "k") 'evil-forward-word-end)
(define-key evil-normal-state-map (kbd "K") 'evil-forward-WORD-end)

(define-key evil-motion-state-map (kbd "H") 'evil-beginning-of-line)
(define-key evil-motion-state-map (kbd "n") 'evil-next-line)
(define-key evil-motion-state-map (kbd "e") 'evil-previous-line)
(define-key evil-motion-state-map (kbd "i") 'evil-forward-char)
(define-key evil-motion-state-map (kbd "I") 'evil-end-of-line)
(define-key evil-motion-state-map (kbd "k") 'evil-forward-word-end)
(define-key evil-motion-state-map (kbd "K") 'evil-forward-WORD-end)

(define-key evil-operator-state-map (kbd "H") 'evil-beginning-of-line)
(define-key evil-operator-state-map (kbd "n") 'evil-next-line)
(define-key evil-operator-state-map (kbd "e") 'evil-previous-line)
(define-key evil-operator-state-map (kbd "i") 'evil-forward-char)
(define-key evil-operator-state-map (kbd "I") 'evil-end-of-line)
(define-key evil-operator-state-map (kbd "k") 'evil-forward-word-end)
(define-key evil-operator-state-map (kbd "K") 'evil-forward-WORD-end)

(define-key evil-visual-state-map (kbd "H") 'evil-beginning-of-line)
(define-key evil-visual-state-map (kbd "n") 'evil-next-line)
(define-key evil-visual-state-map (kbd "e") 'evil-previous-line)
(define-key evil-visual-state-map (kbd "i") 'evil-forward-char)
(define-key evil-visual-state-map (kbd "I") 'evil-end-of-line)
(define-key evil-visual-state-map (kbd "k") 'evil-forward-word-end)
(define-key evil-visual-state-map (kbd "K") 'evil-forward-WORD-end)

(define-key evil-normal-state-map (kbd "j") 'evil-search-next)
(define-key evil-normal-state-map (kbd "J") 'evil-search-previous)
(define-key evil-normal-state-map (kbd "l") 'evil-insert)
(define-key evil-normal-state-map (kbd "L") 'evil-insert-line)
(define-key evil-normal-state-map (kbd "N") 'evil-join)
(define-key evil-visual-state-map (kbd "L") 'evil-insert)

;; TAB KEY as ESCAPE
(define-key evil-visual-state-map (kbd "<tab>") 'evil-force-normal-state)
(define-key evil-insert-state-map (kbd "<tab>") 'evil-force-normal-state)
(define-key evil-motion-state-map (kbd "<tab>") 'evil-force-normal-state)
(define-key evil-normal-state-map (kbd "<tab>") 'evil-force-normal-state)
;; (setq indent-line-function 'evil-force-normal-state)
;; (eval-after-load "evil"
;;   '(progn
;;      (global-set-key (kbd "<tab>") 'evil-force-normal-state)))


;; INSERT A TAB KEY
(define-key evil-insert-state-map (kbd "C-<tab>") 'tab-to-tab-stop)

;; COMMENT CURRENT LINE
(define-key evil-normal-state-map (kbd "=") 'evilnc-comment-or-uncomment-lines)
(define-key evil-normal-state-map (kbd "+")
  '(lambda ()
     (comment-dwim)
     (evil-append)))
