;; My .emacs file
;; Copyright (c) 2013 Peter Harpending. <pharpend2@gmail.com>

(load-file "~/.emacs.d/config/elpa.el")                         ; Elpa
(load-file "~/.emacs.d/config/lf.el")                           ; look and feel
(load-file "~/.emacs.d/config/evil.el")                         ; evil
(load-file "~/.emacs.d/config/editing.el")                      ; editing
(load-file "~/.emacs.d/config/errata.el")                       ; errata
(load-file "~/.emacs.d/config/global-keybindings.el")           ; Global keybindings

;; Filetype options
;; (add-hook 'dired-mode-hook (load-file "~/.emacs.d/config/ft-dired.el"))
(add-hook 'emacs-lisp-mode-hook
          (lambda ()
            (load-file "~/.emacs.d/config/ft-emacs-lisp.el")))
(add-hook 'markdown-mode-hook
          (lambda ()
            (load-file "~/.emacs.d/config/ft-markdown.el")))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(evil-ex-search-case (quote smart))
 '(evil-ex-substitute-case (quote smart))
 '(evil-ex-substitute-global t)
 '(evil-search-wrap t)
 '(evil-want-C-u-scroll t)
 '(evil-want-change-word-to-end nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
