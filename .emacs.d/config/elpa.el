;; My configuration for Elpa
;;

;; Elpa repositories
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

;; Elpa packages:
;;  * auto-complete             (Auto complete)
;;  * color-theme-github        (GitHub Color theme)
;;  * color-theme-railscasts    (RailsCasts color theme)
;;  * evil                      (Vim emulation)
;;  * evil-nerd-commenter       (Nerd commenter for evil)
;;  * linum-relative            (Relative line numbers)
;;  * magit                     (Git client)
;;  * markdown-mode             (Markdown mode) 

(package-initialize)
(require 'auto-complete)
(require 'autopair)
(require 'evil)
(require 'evil-nerd-commenter)
(require 'linum-relative)
(require 'magit)
(require 'markdown-mode)
