;; My .emacs file
;; Copyright (c) 2013-2015 Peter Harpending. <peter@harpending.org>

(load-file "~/.emacs.d/config/elpa.el")                         ; Elpa
(load-file "~/.emacs.d/config/evil.el")                         ; evil
(load-file "~/.emacs.d/config/editing.el")                      ; editing
(load-file "~/.emacs.d/config/errata.el")                       ; errata
(load-file "~/.emacs.d/config/global-keybindings.el")           ; Global keybindings
(load-file "~/.emacs.d/config/ftopts.el")                       ; filetype options
(load-file "~/.emacs.d/config/functions.el")                    ; functions i've added
(load-file "~/.emacs.d/config/lf.el")                           ; look and feel
(load-file "/usr/share/emacs/site-lisp/ProofGeneral/generic/proof-site.el") ;Proof general
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(safe-local-variable-values
   (quote
    ((evil-shift-width . 2)
     (LaTeX-indent-level . 2)
     (LaTeX-item-indent . -2)
     (haskell-tags-on-save . t)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(linum-highlight-face ((t (:inherit default :background nil :foreground "#EBDBB2")))))
