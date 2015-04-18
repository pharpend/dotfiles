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

(define-key evil-insert-state-map (kbd "<backtab>") 'evil-shift-left-line)
(define-key evil-normal-state-map (kbd "<backtab>") 'evil-shift-left-line)
(define-key evil-insert-state-map (kbd "<tab>") 'evil-shift-right-line)
(define-key evil-normal-state-map (kbd "<tab>") 'evil-shift-right-line)
(setq indent-line-function 'evil-shift-right-line)

;; SWAP : AND o
;; Normal state
(define-key evil-normal-state-map (kbd "o") 'evil-ex)
(define-key evil-normal-state-map (kbd "O") 'execute-extended-command)
(define-key evil-normal-state-map (kbd ";") 'evil-open-below)
(define-key evil-normal-state-map (kbd ":") 'evil-open-above)

;; Visual state
(define-key evil-visual-state-map (kbd "o") 'evil-ex)
(define-key evil-visual-state-map (kbd "O") 'execute-extended-command)
(define-key evil-visual-state-map (kbd ";") 'evil-open-below)
(define-key evil-visual-state-map (kbd ":") 'evil-open-above)


;; KEYBINDINGS SPECIFIC TO INSERT MODE
(define-key evil-insert-state-map (kbd "C-<tab>") 'tab-to-tab-stop)
(define-key evil-insert-state-map (kbd "C-y") 'yank)

;; COMMENT CURRENT LINE
(define-key evil-normal-state-map (kbd "=") 'evilnc-comment-or-uncomment-lines)

;; EXTRANEOUS KEYBINDINGS
(define-key evil-normal-state-map (kbd "C-<tab>") 'other-window)
(define-key evil-normal-state-map (kbd "C-d") 'dired)
(define-key evil-normal-state-map (kbd "C-x d") 'diff)

(define-key evil-normal-state-map (kbd "C-,") 'evil-window-decrease-width)
(define-key evil-normal-state-map (kbd "C-.") 'evil-window-increase-width)

;; get rid of q
(evil-ex-define-cmd "q" nil)
(evil-ex-define-cmd "wq" nil)

(add-to-list 'evil-emacs-state-modes 'neotree-mode)
