;;; alect-themes-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (alect-generate-colors) "alect-themes" "alect-themes.el"
;;;;;;  (21145 3770 549964 183000))
;;; Generated autoloads from alect-themes.el

(autoload 'alect-generate-colors "alect-themes" "\
Return alist of themes suitable for the variable `alect-colors'.

THEME-NAMES is a list of symbols.

COLORS is a list of lists (COLOR-NAME COLOR-VAL...) where
COLOR-VAL is a color for specified theme (theme names and color
values should be in matching order).

\(fn THEME-NAMES COLORS)" nil nil)

(and load-file-name (boundp 'custom-theme-load-path) (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name))))

;;;***

;;;### (autoloads nil nil ("alect-dark-theme.el" "alect-light-theme.el"
;;;;;;  "alect-themes-pkg.el") (21145 3770 654517 921000))

;;;***

(provide 'alect-themes-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; alect-themes-autoloads.el ends here
