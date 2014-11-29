;;; git-rebase-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "git-rebase-mode" "../../../../../../../.emacs.d/elpa/git-rebase-mode-20140928.1547/git-rebase-mode.el"
;;;;;;  "636068633bd28ff93bdb45e4f5da82f6")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/git-rebase-mode-20140928.1547/git-rebase-mode.el

(autoload 'git-rebase-mode "git-rebase-mode" "\
Major mode for editing of a Git rebase file.

Rebase files are generated when you run 'git rebase -i' or run
`magit-interactive-rebase'.  They describe how Git should perform
the rebase.  See the documentation for git-rebase (e.g., by
running 'man git-rebase' at the command line) for details.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("/git-rebase-todo\\'" . git-rebase-mode))

;;;***

;;;### (autoloads nil nil ("../../../../../../../.emacs.d/elpa/git-rebase-mode-20140928.1547/git-rebase-mode-autoloads.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/git-rebase-mode-20140928.1547/git-rebase-mode.el")
;;;;;;  (21623 61082 367938 857000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; git-rebase-mode-autoloads.el ends here
