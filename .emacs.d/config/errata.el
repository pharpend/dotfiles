;; Extraneous stuff


(defun comment-open-below ()
  "Open comment below"
  (interactive)
  (evil-open-below 1)
  (evilnc-comment-or-uncomment-lines 1))

(defun comment-open-above ()
  "Open comment above"
  (interactive)
  (evil-open-above 1)
  (evilnc-comment-or-uncomment-lines 1))

(setq dabbrev-check-other-buffers t)

;; (elpy-enable)

(eval-after-load "auto-complete"
  '(progn
     (add-to-list 'ac-modes 'slime-repl-mode)
     (add-to-list 'ac-modes 'cider-repl-mode)))
(setq cider-repl-pop-to-buffer-on-connect nil)

(ac-config-default)
(setq inferior-lisp-program "/usr/bin/sbcl")
(setq vc-follow-symlinks t)

(setq backup-directory-alist `(("." . "~/.saves")))
(setq backup-by-copying t
      kept-new-versions 6
      kept-old-versions 2
      delete-old-versions 2
      version-control t)

(autoload 'ghc-init "ghc" nil t)
(autoload 'ghc-debug "ghc" nil t)

(add-to-list 'load-path "~/.emacs.d/load-list/structured-haskell-mode/elisp/")
(setq shm-program-name "/home/pete/.local/bin/structured-haskell-mode")
(require 'shm)

;; OCaml setup
(autoload 'utop-setup-ocaml-buffer "utop" "Toplevel for OCaml" t)
(setq opam-share (substring (shell-command-to-string "opam config var share") 0 -1))
(setq exec-path (append exec-path '("/home/pete/.opam/4.01.0/bin")))
(add-to-list 'load-path (concat opam-share "/emacs/site-lisp"))

(add-to-list 'load-path "~/.emacs.d/errat/")
(require 'hindent)

(add-to-list 'rainbow-identifiers-faces-to-override 'idris-identifier-face)

;; Helm, copied from https://tuhdo.github.io/helm-intro.html
(require 'helm)
(require 'helm-config)

;; The default "C-x c" is quite close to "C-x C-c", which quits Emacs.
;; Changed to "C-c h". Note: We must set "C-c h" globally, because we
;; cannot change `helm-command-prefix-key' once `helm-config' is loaded.
(global-set-key (kbd "C-c h") 'helm-command-prefix)
(global-unset-key (kbd "C-x c"))

(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to run persistent action
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB works in terminal
(define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z

(when (executable-find "curl")
  (setq helm-google-suggest-use-curl-p t))

(setq helm-split-window-in-side-p           t ; open helm buffer inside current window, not occupy whole other window
      helm-move-to-line-cycle-in-source     t ; move to end or beginning of source when reaching top or bottom of source.
      helm-ff-search-library-in-sexp        t ; search for library in `require' and `declare-function' sexp.
      helm-scroll-amount                    8 ; scroll 8 lines other window using M-<next>/M-<prior>
      helm-ff-file-name-history-use-recentf t)

(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "M-b") 'helm-mini)
(global-set-key (kbd "M-f") 'helm-find-files)
(global-set-key (kbd "M-p") 'helm-projectile)

(setq helm-buffers-fuzzy-matching t
      helm-recentf-fuzzy-match t
      helm-locate-fuzzy-match t)


(helm-mode 1)
(helm-autoresize-mode t)
(projectile-global-mode)

(setq magit-auto-revert-mode nil)
(setq magit-last-seen-setup-instructions "1.4.0")

(push '("*goals*" :position bottom :noselect t :stick t) popwin:special-display-config)
(push '("*louse*" :position bottom :noselect t :stick t :height 20) popwin:special-display-config)
(setq shm-program-name "/home/pete/.local/bin/structured-haskell-mode")
(setq shm-program-name "/home/pete/.local/bin/structured-haskell-mode")
(setq shm-program-name "/home/pete/.local/bin/structured-haskell-mode")
