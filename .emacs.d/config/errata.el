;; Extraneous stuff

(defun comment-open-below ()
  "Open comment below"
  (interactive)
  (evil-open-below 1)
  (comment-dwim nil))

(defun comment-open-above ()
  "Open comment above"
  (interactive)
  (evil-open-above 1)
  (comment-dwim nil))

(defun toggle-fullscreen ()
  "Toggle full screen on X11"
  (interactive)
  (when (eq window-system 'x)
    (set-frame-parameter
     nil 'fullscreen
     (when (not (frame-parameter nil 'fullscreen)) 'fullboth))))

;; (defun comment-or-uncomment-region-or-line ()
;;     "Comments or uncomments the region or the current line if there's no active region."
;;     (interactive)
;;     (let (beg end)
;;         (if (region-active-p)
;;             (setq beg (region-beginning) end (region-end))
;;             (setq beg (line-beginning-position) end (line-end-position)))
;;         (comment-or-uncomment-region beg end)))

(setq dabbrev-check-other-buffers t)

(require 'uniquify)                     ;Unique buffer names

;; ELPA stuff
(require 'package)
(package-initialize)
(elpy-enable)

;; Auto complete
(require 'auto-complete-config)
(ac-config-default)
