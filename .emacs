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
 '(css-indent-offset 2)
 '(custom-safe-themes (quote ("a0feb1322de9e26a4d209d1cfa236deaf64662bb604fa513cca6a057ddf0ef64" "2395099b4d48847237504833d4169f5aaa748cef97667be5a3f9edd3e628411b" "18d91d95e20450b0cdab4d7eed600e80c22cc7a4153a87989daa5a1c5aff3b83" "b0fc95a71c0d988dbb9a147ae30b11748d87987f8f818fbff84484f6bb7892d7" default)))
 '(elpy-default-minor-modes (quote (eldoc-mode flymake-mode yas-minor-mode autopair-mode)))
 '(elpy-rpc-backend "rope")
 '(evil-ex-search-case (quote smart))
 '(evil-ex-substitute-case (quote smart))
 '(evil-ex-substitute-global t)
 '(evil-search-wrap t)
 '(evil-want-C-u-scroll t)
 '(evil-want-change-word-to-end nil)
 '(pandoc-binary "/home/pete/.cabal/bin/pandoc")
 '(scss-compile-at-save nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(linum-relative-current-face ((t (:inherit linum :background "#f9f9f9" :foreground "#397460" :weight bold)))))
(put 'downcase-region 'disabled nil)
