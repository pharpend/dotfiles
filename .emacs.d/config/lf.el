;; Configure the look and feel of Emacs
(cond
 ((eq window-system 'x)
  (load-theme 'sanityinc-solarized-light t)
  (cond
   ((string= system-name "valentine")
    ;; (set-frame-font "Meslo LG M 11"))
    ;; (set-frame-font "Inconsolata 13"))
    (set-frame-font "Inconsolata 12"))
   ((string= system-name "locust")
    (set-frame-font "Input Mono 9"))))
 (t
  (load-theme 'monokai t)))

(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)

;; start without fanfare
(setq inhibit-startup-echo-area-message t)
(setq inhibit-startup-message t)

(popwin-mode 1)

;; set line spacing to 1
(setq line-spacing 1)
(column-number-mode 1)
(setq truncate-partial-width-windows nil)
(setq truncate-lines nil)
(setq linum-format "%4d ")
(hlinum-activate)
(global-linum-mode 1)
;; (global-hl-line-mode 1)

;; Winner mode - save window configurations
(winner-mode 1)

;; Wrap when moving windows
(setq windmove-wrap-around t)

;; Don't wrap lines
(setq-default truncate-lines t)

;; Popwin
(push 'idris-compiler-notes-mode popwin:special-display-config)
(push '(compilation-mode
        :height 0.2
        :noselect nil
        :position bottom
        :stick nil)
      popwin:special-display-config)
(push '(idris-repl-mode
        :height 0.2
        :noselect nil
        :position bottom
        :stick t)
      popwin:special-display-config)
(push '(compilation-mode
        :height 0.2
        :noselect nil
        :position bottom
        :stick nil)
      popwin:special-display-config)



;; All idris modes
;;
;; idris-metavariable-list-mode, idris-info-mode,
;; idris-mode, idris-prover-script-mode,idris-compiler-notes-mode,
;; idris-log-mode, idris-ipkg-build-mode,
;; idris-ipkg-mode, idris-repl-mode

;; ;; ;; Solarized
;; For light
(set-face-background 'shm-quarantine-face "lemonchiffon")
(set-face-background 'shm-current-face "#eee8d5")
;; ;; For dark
;; (set-face-background 'shm-quarantine-face "#073642")
;; (set-face-background 'shm-current-face "#0e414e")
;; ;; Monokai
;; (set-face-background 'shm-quarantine-face "#633336")
;; (set-face-background 'shm-current-face "#373832")
;; ;; Tomorrow night
;; (set-face-background 'shm-quarantine-face "#373837")
;; (set-face-background 'shm-current-face "#272727")
;; ;; Darktooth
;; (set-face-background 'shm-quarantine-face "#4D3B27")
;; (set-face-background 'shm-current-face "#32302F")
;; ;; Greymatters
;; (set-face-background 'shm-quarantine-face "#e7d0d0")
;; (set-face-background 'shm-current-face "#f0f0f0")

(custom-set-faces
 '(linum-highlight-face
   ((t
     ;; (:inherit default :background "#EEEEEE" :foreground "#333333")))))
     (:inherit default :background "#ded8c5" :foreground "#268bd2")))))
     ;; (:inherit default :background nil :foreground "#EBDBB2")))))
