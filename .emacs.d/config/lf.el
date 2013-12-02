;; Configure the look and feel of Emacs

;; Make the window look nice
(if window-system
  (progn
    ;; (require 'color-theme-github)

    ;; (require 'color-theme-heroku)
    ;; (color-theme-heroku)

    ;; (add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
    ;; (load-theme 'zenburn t)

    (load-theme 'ample-zen t)

    (set-face-attribute 'default nil :font "DejaVu Sans Mono-10")
    ))
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)

;; start without fanfare
(setq inhibit-startup-echo-area-message t)
(setq inhibit-startup-message t)

(display-time-mode 1)
(popwin-mode 1)

;; Direx goes in a separate window
(push '(direx:direx-mode :position left :height 25 :dedicated t)
      popwin:special-display-config)

;; set line spacing to 1
(setq line-spacing 1)
(column-number-mode 1)
(global-linum-mode 1)
(linum-relative-toggle)
(linum-relative-toggle)
