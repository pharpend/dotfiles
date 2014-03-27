;; My .emacs file
;; Copyright (c) 2013 Peter Harpending. <pharpend2@gmail.com>

(load-file "~/.emacs.d/config/elpa.el")                         ; Elpa
(load-file "~/.emacs.d/config/lf.el")                           ; look and feel
(load-file "~/.emacs.d/config/evil.el")                         ; evil
(load-file "~/.emacs.d/config/editing.el")                      ; editing
(load-file "~/.emacs.d/config/errata.el")                       ; errata
(load-file "~/.emacs.d/config/global-keybindings.el")           ; Global keybindings
(load-file "~/.emacs.d/config/ftopts.el")                       ; filetype options
(load-file "~/.emacs.d/config/functions.el")                    ; functions i've added

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-trigger-key "RET")
 '(ansi-color-names-vector ["#272822" "#F92672" "#A6E22E" "#E6DB74" "#66D9EF" "#FD5FF0" "#A1EFE4" "#F8F8F2"])
 '(background-color "#002b36")
 '(background-mode dark)
 '(compilation-message-face (quote default))
 '(css-indent-offset 2)
 '(cursor-color "#839496")
 '(custom-safe-themes (quote ("96efbabfb6516f7375cdf85e7781fe7b7249b6e8114676d65337a1ffe78b78d9" "73fe242ddbaf2b985689e6ec12e29fab2ecd59f765453ad0e93bc502e6e478d6" "36d0f600074e9299fb7b6a316161d99faa16a6551ddeda50980ae293e653e7b4" "1e7e097ec8cb1f8c3a912d7e1e0331caeed49fef6cff220be63bd2a6ba4cc365" "fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" "2b5aa66b7d5be41b18cc67f3286ae664134b95ccc4a86c9339c886dfd736132d" "a0feb1322de9e26a4d209d1cfa236deaf64662bb604fa513cca6a057ddf0ef64" "2395099b4d48847237504833d4169f5aaa748cef97667be5a3f9edd3e628411b" "18d91d95e20450b0cdab4d7eed600e80c22cc7a4153a87989daa5a1c5aff3b83" "b0fc95a71c0d988dbb9a147ae30b11748d87987f8f818fbff84484f6bb7892d7" default)))
 '(elpy-default-minor-modes (quote (eldoc-mode flymake-mode yas-minor-mode autopair-mode)))
 '(elpy-rpc-backend "rope")
 '(evil-ex-search-case (quote smart))
 '(evil-ex-substitute-case (quote smart))
 '(evil-ex-substitute-global t)
 '(evil-search-wrap t)
 '(evil-want-C-u-scroll t)
 '(evil-want-change-word-to-end nil)
 '(fci-rule-color "#49483E")
 '(foreground-color "#839496")
 '(haskell-mode-hook (quote (turn-on-eldoc-mode turn-on-haskell-doc turn-on-haskell-simple-indent (lambda nil (load-file "~/.emacs.d/config/ft-haskell.el")))) t)
 '(highlight-changes-colors (quote ("#FD5FF0" "#AE81FF")))
 '(highlight-tail-colors (quote (("#49483E" . 0) ("#67930F" . 20) ("#349B8D" . 30) ("#21889B" . 50) ("#968B26" . 60) ("#A45E0A" . 70) ("#A41F99" . 85) ("#49483E" . 100))))
 '(magit-diff-use-overlays nil)
 '(pandoc-binary "/home/pete/.cabal/bin/pandoc")
 '(scss-compile-at-save nil)
 '(shm-program-name "/home/pete/.cabal/bin/structured-haskell-mode")
 '(shm-use-hdevtools nil)
 '(syslog-debug-face (quote ((t :background unspecified :foreground "#A1EFE4" :weight bold))))
 '(syslog-error-face (quote ((t :background unspecified :foreground "#F92672" :weight bold))))
 '(syslog-hour-face (quote ((t :background unspecified :foreground "#A6E22E"))))
 '(syslog-info-face (quote ((t :background unspecified :foreground "#66D9EF" :weight bold))))
 '(syslog-ip-face (quote ((t :background unspecified :foreground "#E6DB74"))))
 '(syslog-su-face (quote ((t :background unspecified :foreground "#FD5FF0"))))
 '(syslog-warn-face (quote ((t :background unspecified :foreground "#FD971F" :weight bold))))
 '(vc-annotate-background nil)
 '(vc-annotate-color-map (quote ((20 . "#F92672") (40 . "#CF4F1F") (60 . "#C26C0F") (80 . "#E6DB74") (100 . "#AB8C00") (120 . "#A18F00") (140 . "#989200") (160 . "#8E9500") (180 . "#A6E22E") (200 . "#729A1E") (220 . "#609C3C") (240 . "#4E9D5B") (260 . "#3C9F79") (280 . "#A1EFE4") (300 . "#299BA6") (320 . "#2896B5") (340 . "#2790C3") (360 . "#66D9EF"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list (quote (unspecified "#272822" "#49483E" "#A20C41" "#F92672" "#67930F" "#A6E22E" "#968B26" "#E6DB74" "#21889B" "#66D9EF" "#A41F99" "#FD5FF0" "#349B8D" "#A1EFE4" "#F8F8F2" "#F8F8F0"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(linum-relative-current-face ((t (:inherit linum :background "#f9f9f9" :foreground "#397460" :weight bold))))
 '(shm-current-face ((t (:background "#404040"))) t)
 '(shm-quarantine-face ((t (:background "#333333"))) t))
(put 'downcase-region 'disabled nil)
