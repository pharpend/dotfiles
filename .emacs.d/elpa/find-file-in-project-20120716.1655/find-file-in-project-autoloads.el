;;; find-file-in-project-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (find-file-in-project) "find-file-in-project" "../../../../../.emacs.d/elpa/find-file-in-project-20120716.1655/find-file-in-project.el"
;;;;;;  "bffc7b9c1a5d7cdb3d2f68968721b806")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/find-file-in-project-20120716.1655/find-file-in-project.el

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

;;;### (autoloads nil nil ("../../../../../.emacs.d/elpa/find-file-in-project-20120716.1655/find-file-in-project-pkg.el"
;;;;;;  "../../../../../.emacs.d/elpa/find-file-in-project-20120716.1655/find-file-in-project.el")
;;;;;;  (21154 14185 925462 231000))

;;;***

(provide 'find-file-in-project-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; find-file-in-project-autoloads.el ends here
