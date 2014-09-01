;; Extraneous stuff

(defun comment-open-below ()
  "Open comment below"
  (interactive)
  (evil-open-below 1)
  (comment-dwim nil))

(defun comment-open-above ()
  "Open comment above"
  (interactive)
  (evil-open-above 1)
  (comment-dwim nil))

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
