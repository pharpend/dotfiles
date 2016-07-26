;; My configuration for Elpa

;; Elpa repositories
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

;; Elpa packages:
(require 'package)
(package-initialize)

(defvar my-packages '(auto-complete
                      autopair
                      auctex
                      cider
                      clojure-mode
                      color-theme
                      color-theme-sanityinc-solarized
                      color-theme-sanityinc-tomorrow
                      company
                      darktooth-theme
                      erlang
                      evil
                      evil-nerd-commenter
                      fold-dwim
                      flycheck
                      ;; greymatters-theme
                      haskell-mode
                      helm
                      helm-projectile
                      highlight-indentation
                      hl-anything
                      hlinum
                      idris-mode
                      json-mode
                      linum-relative
                      lua-mode
                      magit
                      markdown-mode
                      monokai-theme
                      ;; multiple-cursors
                      paredit
                      popwin
                      projectile
                      python-mode
                      rainbow-delimiters
                      rainbow-identifiers
                      rainbow-mode
                      rsense
                      ruby-tools
                      sass-mode
                      shakespeare-mode
                      slime
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
(require 'cl)
(require 'evil)
(require 'evil-nerd-commenter)
(require 'fold-dwim)
(require 'hlinum)
(require 'idris-mode)
(require 'linum-relative)
(require 'magit)
(require 'markdown-mode)
;; (require 'multiple-cursors)
(require 'popwin)
(require 'rainbow-identifiers)
(add-to-list 'load-path "~/.emacs.d/smartparens")
(require 'smartparens-config)
(require 'smartparens-ruby)
(require 'wc-mode)
(require 'yari)
