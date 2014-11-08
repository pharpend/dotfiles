;; Configure the look and feel of Emacs
(cond ((eq window-system 'x)
       (set-frame-font "Envy Code R 9")
       (load-theme 'sanityinc-solarized-light t)))

(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)

;; start without fanfare
(setq inhibit-startup-echo-area-message t)
(setq inhibit-startup-message t)

(popwin-mode 1)

;; set line spacing to 1
(setq line-spacing 0)
(column-number-mode 1)
(global-linum-mode 1)
(setq truncate-partial-width-windows nil)
(setq truncate-lines nil)
(setq linum-format "%4d ")

;; Winner mode - save window configurations
(winner-mode 1)

;; Wrap when moving windows
(setq windmove-wrap-around t)

;; Don't wrap lines
(setq-default truncate-lines t)
