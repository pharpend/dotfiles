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

(elpy-enable)

(eval-after-load "auto-complete"
  '(progn
     (add-to-list 'ac-modes 'slime-repl-mode)
     (add-to-list 'ac-modes 'cider-repl-mode)))
(setq cider-repl-pop-to-buffer-on-connect nil)

(ac-config-default)
(setq inferior-lisp-program "/usr/bin/sbcl")

;; (setq shm-program-name "/home/pete/.emacs.d/shm/.cabal-sandbox/bin/structured-haskell-mode")
(setq vc-follow-symlinks t)

(setq backup-directory-alist `(("." . "~/.saves")))
(setq backup-by-copying t
      kept-new-versions 6
      kept-old-versions 2
      delete-old-versions 2
      version-control t)

(setenv "PATH" (concat "~/.cabal/bin:" (getenv "PATH")))
(add-to-list 'exec-path "~/.cabal/bin")

(autoload 'ghc-init "ghc" nil t)
(autoload 'ghc-debug "ghc" nil t)

;; (add-to-list 'load-path "~/.emacs.d/structured-haskell-mode/elisp/")
;; (require 'shm)

;; OCaml setup
(autoload 'utop-setup-ocaml-buffer "utop" "Toplevel for OCaml" t)
(setq opam-share (substring (shell-command-to-string "opam config var share") 0 -1))
(setq exec-path (append exec-path '("/home/pete/.opam/4.01.0/bin")))
(add-to-list 'load-path (concat opam-share "/emacs/site-lisp"))

(add-to-list 'load-path "~/.emacs.d/errat/")
(require 'hindent)

;; Structured Haskell Mode
;; (add-to-list 'load-path "~/.emacs.d/structured-haskell-mode/elisp")
;; (require 'shm)

(add-to-list 'rainbow-identifiers-faces-to-override 'idris-identifier-face)
