;; Filetype options
(add-to-list 'auto-mode-alist '("\\.cl\\'" . common-lisp-mode))
(add-to-list 'auto-mode-alist '("\\.zsh\\'" . sh-mode))
(add-to-list 'auto-mode-alist '("\\.scala\\'" . scala-mode))
(add-to-list 'auto-mode-alist '("Gemfile" . ruby-mode))  ;Rails
(add-to-list 'auto-mode-alist '("i3config" . conf-mode)) ;i3
(add-to-list 'auto-mode-alist '("autostart" . sh-mode)) ;herbtsluftwm
(add-to-list 'auto-mode-alist '(".muttrc" . sh-mode))   ;mutt
(add-to-list 'auto-mode-alist '("\\mutt-.*\\'" . markdown-mode)) ;mutt

(add-hook 'dired-load-hook
          (lambda ()
            (load "dired-x")))
(add-hook 'emacs-lisp-mode-hook
          (lambda ()
            (load-file "~/.emacs.d/config/ft-emacs-lisp.el")))
(add-hook 'markdown-mode-hook
          (lambda ()
            (load-file "~/.emacs.d/config/ft-markdown.el")))
(add-hook 'html-mode-hook
          (lambda ()
            (load-file "~/.emacs.d/config/ft-html.el")))
(add-hook 'scss-mode-hook
          (lambda ()
            (load-file "~/.emacs.d/config/ft-scss.el")))
(add-hook 'lisp-mode-hook
          (lambda ()
            (load-file "~/.emacs.d/config/ft-cl.el")))
(add-hook 'scheme-mode-hook
          (lambda ()
            (load-file "~/.emacs.d/config/ft-scheme.el")))
(add-hook 'haskell-mode-hook
          (lambda ()
            (load-file "~/.emacs.d/config/ft-haskell.el")))
(add-hook 'LaTeX-mode-hook
          (lambda ()
            (load-file "~/.emacs.d/config/ft-latex.el")))
(add-hook 'python-mode-hook
          (lambda ()
            (load-file "~/.emacs.d/config/ft-python.el")))
(add-hook 'ruby-mode-hook
          (lambda ()
            (load-file "~/.emacs.d/config/ft-ruby.el")))
(add-hook 'js-mode-hook
          (lambda ()
            (load-file "~/.emacs.d/config/ft-javascript.el")))
(add-hook 'text-mode-hook
          (lambda ()
            (load-file "~/.emacs.d/config/ft-text.el")))
(add-hook 'ruby-mode-hook
          (lambda ()
            (load-file "~/.emacs.d/config/ft-ruby.el")))
(add-hook 'sh-mode-hook
          (lambda ()
            (load-file "~/.emacs.d/config/ft-zsh.el")))
(add-hook 'c-mode-hook
          (lambda ()
            (load-file "~/.emacs.d/config/ft-c.el")))
(add-hook 'perl-mode-hook
          (lambda ()
            (load-file "~/.emacs.d/config/ft-perl.el")))
(add-hook 'haskell-cabal-mode-hook
          (lambda ()
            (load-file "~/.emacs.d/config/ft-cabal.el")))
(add-hook 'conf-mode-hook
          (lambda ()
            (load-file "~/.emacs.d/config/ft-conf.el")))
(add-hook 'vala-mode-hook
          (lambda ()
            (load-file "~/.emacs.d/config/ft-vala.el")))
(add-hook 'scala-mode-hook
          (lambda ()
            (load-file "~/.emacs.d/config/ft-scala.el")))
(add-hook 'nxml-mode-hook
          (lambda ()
            (load-file "~/.emacs.d/config/ft-nxml.el")))
(add-hook 'java-mode-hook
          (lambda ()
            (load-file "~/.emacs.d/config/ft-java.el")))
