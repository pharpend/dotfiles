;; My configuration for Elpa
;;

;; Elpa repositories
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

;; Elpa packages:
;;  * color-theme-github        (GitHub Color theme)
;;  * color-theme-railscasts    (RailsCasts color theme)
;;  * evil                      (Vim emulation)
;;  * evil-nerd-commenter       (Nerd commenter for evil)
;;  * linum-relative            (Relative line numbers)
;;  * magit                     (Git client)
;;  * markdown-mode             (Markdown mode) 

(package-initialize)
; (require 'color-theme-github)
(require 'autopair)
(require 'color-theme-railscasts)
(require 'evil)
(require 'evil-nerd-commenter)
(require 'linum-relative)
(require 'magit)
(require 'markdown-mode)
