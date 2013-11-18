;; Configure the look and feel of Emacs

;; Make the window look nice
(if window-system
  (progn
    (require 'color-theme-github)
    (set-face-attribute 'default nil :font "DejaVu Sans Mono-10")))
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)

;; start without fanfare
(setq inhibit-startup-echo-area-message t)
(setq inhibit-startup-message t)

;; set line spacing to 1
(setq line-spacing 0)

(column-number-mode 1)
