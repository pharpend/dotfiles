;;; scala-mode2-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "scala-mode2" "../../../../../../../.emacs.d/elpa/scala-mode2-20141105.514/scala-mode2.el"
;;;;;;  "81698e71dbb48700f29e017b390ee4f4")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/scala-mode2-20141105.514/scala-mode2.el

(autoload 'scala-mode:set-scala-syntax-mode "scala-mode2" "\
Sets the syntax-table and other realted variables for the current buffer to those of scala-mode. Can be used to make some other major mode (such as sbt-mode) use scala syntax-table.

\(fn)" nil nil)

(autoload 'scala-mode "scala-mode2" "\
Major mode for editing scala code.

When started, runs `scala-mode-hook'. 

\\{scala-mode-map}

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.\\(scala\\|sbt\\)\\'" . scala-mode))

(modify-coding-system-alist 'file "\\.\\(scala\\|sbt\\)\\'" 'utf-8)

;;;***

;;;### (autoloads nil nil ("../../../../../../../.emacs.d/elpa/scala-mode2-20141105.514/scala-mode2-autoloads.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/scala-mode2-20141105.514/scala-mode2-fontlock.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/scala-mode2-20141105.514/scala-mode2-indent.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/scala-mode2-20141105.514/scala-mode2-lib.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/scala-mode2-20141105.514/scala-mode2-map.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/scala-mode2-20141105.514/scala-mode2-paragraph.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/scala-mode2-20141105.514/scala-mode2-pkg.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/scala-mode2-20141105.514/scala-mode2-sbt.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/scala-mode2-20141105.514/scala-mode2-syntax.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/scala-mode2-20141105.514/scala-mode2.el")
;;;;;;  (21623 61100 400194 848000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; scala-mode2-autoloads.el ends here
