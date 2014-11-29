;;; elpy-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "elpy" "../../../../../../../.emacs.d/elpa/elpy-20141031.945/elpy.el"
;;;;;;  "e1df154aee327c7f6089978c8c0112b9")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/elpy-20141031.945/elpy.el

(autoload 'elpy-enable "elpy" "\
Enable Elpy in all future Python buffers.

\(fn &optional IGNORED)" t nil)

(autoload 'elpy-mode "elpy" "\
Minor mode in Python buffers for the Emacs Lisp Python Environment.

This mode fully supports virtualenvs. Once you switch a
virtualenv using \\[pyvenv-workon], you can use
\\[elpy-rpc-restart] to make the elpy Python process use your
virtualenv.

See https://github.com/jorgenschaefer/elpy/wiki/Keybindings for a
more structured list.

\\{elpy-mode-map}

\(fn &optional ARG)" t nil)

(autoload 'elpy-config "elpy" "\
Configure Elpy.

This function will pop up a configuration buffer, which is mostly
a customize buffer, but has some more options.

\(fn)" t nil)

(autoload 'elpy-version "elpy" "\
Display the version of Elpy.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("../../../../../../../.emacs.d/elpa/elpy-20141031.945/elpy-autoloads.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/elpy-20141031.945/elpy-pkg.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/elpy-20141031.945/elpy-refactor.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/elpy-20141031.945/elpy.el")
;;;;;;  (21623 61057 599164 610000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; elpy-autoloads.el ends here
