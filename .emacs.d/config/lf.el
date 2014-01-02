;; Configure the look and feel of Emacs

;; Make the window look nice
(if window-system
  (progn
    ;; (load-theme 'ample-zen t)
    ;; (require 'heroku-theme)
    (load-file "~/.emacs.d/themes/sunburn.el")
    (color-theme-sunburn)

    (set-face-attribute 'default nil :font "Source Code Pro-10")
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
(setq linum-format "%4d ")
(global-hl-line-mode 1)

(defun djcb-opacity-modify (&optional dec)
  "modify the transparency of the emacs frame; if DEC is t,
    decrease the transparency, otherwise increase it in 10%-steps"
  (let* ((alpha-or-nil (frame-parameter nil 'alpha)) ; nil before setting
          (oldalpha (if alpha-or-nil alpha-or-nil 100))
          (newalpha (if dec (- oldalpha 10) (+ oldalpha 10))))
    (when (and (>= newalpha frame-alpha-lower-limit) (<= newalpha 100))
      (modify-frame-parameters nil (list (cons 'alpha newalpha))))))

;; Winner mode - save window configurations
(winner-mode 1)

;; Wrap when moving windows
(setq windmove-wrap-around t)
