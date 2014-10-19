;; My configuration for Elpa

;; Elpa repositories
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

;; Elpa packages:
(require 'package)
(package-initialize)

(defvar my-packages '(auctex
                      auto-complete
                      autopair
                      cider
                      clojure-mode
                      clojure-test-mode
                      color-theme
                      color-theme-sanityinc-solarized
                      color-theme-sanityinc-tomorrow
                      company-ghc
                      ecb
                      elpy
                      erlang
                      evil
                      evil-nerd-commenter
                      flycheck
                      hamlet-mode
                      haskell-mode
                      ghc
                      json-mode
                      linum-relative
                      magit
                      markdown-mode
                      monokai-theme
                      paredit
                      planet-theme
                      popwin
                      rainbow-delimiters
                      rainbow-mode
                      rsense
                      ruby-tools
                      sass-mode
                      scala-mode2
                      slime
                      smartparens
                      sublime-themes
                      tuareg
                      wc-mode
                      web-mode
                      yaml-mode
		      yari))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(require 'auto-complete)
(require 'auto-complete-config)
(require 'autopair)
(require 'company)
(require 'evil)
(require 'evil-nerd-commenter)
(require 'linum-relative)
(require 'magit)
(require 'markdown-mode)
(require 'popwin)
(require 'slime-autoloads)
(require 'smartparens-config)
(require 'smartparens-ruby)
(require 'wc-mode)
(require 'yari)
