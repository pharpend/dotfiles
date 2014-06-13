;; My configuration for Elpa
;;

(add-to-list 'load-path "~/.emacs.d/shm/elisp")
(add-to-list 'load-path "~/.emacs.d/hs")

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
                      hamlet-mode
                      haskell-mode
                      json-mode
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
                      web-mode
                      yaml-mode
		      yari))
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(require 'auto-complete)
(require 'auto-complete-config)
(require 'autopair)
(require 'ac-nrepl)
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
(require 'yari)
