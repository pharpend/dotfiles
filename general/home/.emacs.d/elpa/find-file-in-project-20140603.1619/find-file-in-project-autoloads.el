;;; find-file-in-project-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "find-file-in-project" "../../../../../../../.emacs.d/elpa/find-file-in-project-20140603.1619/find-file-in-project.el"
;;;;;;  "96a5b6e260419cc6d159322fda0a7a8c")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/find-file-in-project-20140603.1619/find-file-in-project.el

(autoload 'find-file-in-project "find-file-in-project" "\
Prompt with a completing list of all files in the project to find one.

The project's scope is defined as the first directory containing
an `.emacs-project' file.  You can override this by locally
setting the variable `ffip-project-root'.

\(fn)" t nil)

(defalias 'ffip 'find-file-in-project)

(put 'ffip-patterns 'safe-local-variable 'listp)

(put 'ffip-find-options 'safe-local-variable 'stringp)

(put 'ffip-project-file 'safe-local-variable 'stringp)

(put 'ffip-project-root 'safe-local-variable 'stringp)

(put 'ffip-project-root-function 'safe-local-variable 'functionp)

(put 'ffip-limit 'safe-local-variable 'integerp)

;;;***

;;;### (autoloads nil nil ("../../../../../../../.emacs.d/elpa/find-file-in-project-20140603.1619/find-file-in-project-autoloads.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/find-file-in-project-20140603.1619/find-file-in-project.el")
;;;;;;  (21623 61051 619544 443000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; find-file-in-project-autoloads.el ends here
