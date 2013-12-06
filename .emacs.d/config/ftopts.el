;; Filetype options
(add-to-list 'auto-mode-alist '("\\.cl\\'" . common-lisp-mode))
(add-to-list 'auto-mode-alist '("\\.zsh\\'" . sh-mode))
(add-to-list 'auto-mode-alist '("Gemfile" . ruby-mode))

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
