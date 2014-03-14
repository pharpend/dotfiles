;; My configuration for Elpa
;;

;; Elpa repositories
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

;; Elpa packages:

(require 'package)
(package-initialize)

(defvar my-packages '(ac-nrepl
                      ample-zen-theme
                      auctex
                      auto-complete
                      autopair
                      cider
                      clojure-mode
                      clojure-test-mode
                      color-theme
                      elpy
                      evil
                      evil-nerd-commenter
                      haskell-mode
                      linum-relative
                      magit
                      markdown-mode
                      monokai-theme
                      pandoc-mode
                      paredit
                      popwin
                      rainbow-mode
                      rsense
                      scala-mode2
                      slime
                      undo-tree
                      vala-mode))
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(require 'auto-complete)
(require 'auto-complete-config)
(require 'ac-slime)
(require 'autopair)
(load-library "cider-interaction.el")
(require 'cider)
(require 'ac-nrepl)
(require 'direx)
(require 'evil)
(require 'evil-nerd-commenter)
(require 'linum-relative)
(require 'magit)
(require 'markdown-mode)
(require 'popwin)
(require 'slime-autoloads)
(require 'uniquify)                     ;Unique buffer names
(require 'vala-mode)
