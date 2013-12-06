;; My configuration for Elpa
;;

;; Elpa repositories
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

;; Elpa packages:
;; (defvar my-packages '(ac-etags alect-themes ample-zen-theme
;;                         anti-zenburn-theme auctex autopair
;;                         color-theme-github color-theme-heroku
;;                         color-theme-railscasts
;;                         color-theme-solarized color-theme direx
;;                         elpy auto-complete evil
;;                         evil-nerd-commenter find-file-in-project
;;                         fuzzy goto-last-change haskell-mode
;;                         highlight-indentation idomenu iedit
;;                         linum-relative lua-mode magit
;;                         git-rebase-mode git-commit-mode
;;                         markdown-mode mmm-mode multiple-cursors
;;                         nose pandoc-mode popup popwin
;;                         rainbow-mode scss-mode undo-tree
;;                         virtualenv yari yasnippet))
;; (defun my-packages-installed-p ()
;;   (loop for p in my-packages
;;         when (not (package-installed-p p)) do (return nil)
;;         finally (return t)))
 
;; (unless (my-packages-installed-p)
;;   ;; check for new packages (package versions)
;;   (package-refresh-contents)
;;   ;; install the missing packages
;;   (dolist (p my-packages)
;;     (when (not (package-installed-p p))
;;       (package-install p))))
;; ;; * auctex
;; * auto-complete
;; * autopair
;; * color-theme
;; * color-theme-github
;; * color-theme-heroku
;; * color-theme-railscasts
;; * color-theme-solarized
;; * direx
;; * elpy
;; * evil
;; * evil-nerd-commenter
;; * find-file-in-project
;; * fuzzy
;; * git-commit-mode
;; * git-rebase-mode
;; * haskell-mode
;; * highlight-indentation
;; * idomenu
;; * iedit
;; * linum-relative
;; * magit
;; * markdown-mode
;; * mmm-mode
;; * multiple-cursors
;; * nose
;; * pandoc-mode
;; * popup
;; * popwin
;; * scss-mode
;; * undo-tree
;; * virtualenv
;; * yasnippet


(package-initialize)
(require 'auto-complete)
(require 'autopair)
(require 'direx)
(require 'evil)
(require 'evil-nerd-commenter)
(require 'linum-relative)
(require 'magit)
(require 'markdown-mode)
(require 'popwin)
