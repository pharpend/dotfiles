;; My configuration for Elpa
;;

;; Elpa repositories
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

;; Elpa packages:
;; * auctex
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
