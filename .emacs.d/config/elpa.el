;; My configuration for Elpa
;;

(add-to-list 'load-path "~/.emacs.d/shm/elisp")

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
                      color-theme-eclipse
                      color-theme-github
                      color-theme-sanityinc-solarized
                      color-theme-sanityinc-tomorrow
                      elpy
                      evil
                      evil-nerd-commenter
                      flycheck
                      haskell-mode
                      linum-relative
                      magit
                      markdown-mode
                      monokai-theme
                      pandoc-mode
                      paredit
                      planet-theme
                      popwin
                      rainbow-mode
                      rsense
                      ruby-tools
                      scala-mode2
                      slime
                      smartparens
                      undo-tree
                      vala-mode
                      web-mode
                      yaml-mode
		      yari))
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(require 'auto-complete)
(require 'auto-complete-config)
(require 'ac-slime)
(require 'autopair)
;; (load-library "cider-interaction.el")
;; (require 'cider)
(require 'ac-nrepl)
(require 'direx)
(require 'evil)
(require 'evil-nerd-commenter)
(require 'linum-relative)
(require 'magit)
(require 'markdown-mode)
(require 'popwin)
(require 'shm)
(require 'slime-autoloads)
(require 'smartparens-config)
(require 'smartparens-ruby)
(require 'uniquify)                     ;Unique buffer names
(require 'vala-mode)
(require 'yari)
