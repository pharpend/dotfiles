;; Configure the look and feel of Emacs

;; railscasts color theme loaded in elpa.el
(set-face-attribute 'default nil :font "Liberation Mono-10")
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)

;; start without fanfare
(setq inhibit-startup-echo-area-message t)
(setq inhibit-startup-message t)
