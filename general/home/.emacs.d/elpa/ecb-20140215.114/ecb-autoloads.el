;;; ecb-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "ecb" "../../../../../../../.emacs.d/elpa/ecb-20140215.114/ecb.el"
;;;;;;  "e562c97daed7c9a4209301fb0d1bbc70")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/ecb-20140215.114/ecb.el

(autoload 'ecb-activate "ecb" "\
Activates ECB and creates the special buffers for the choosen layout.
For the layout see `ecb-layout-name'. This function raises always the
ECB-frame if called from another frame. This is the same as calling
`ecb-minor-mode' with a positive argument.

\(fn)" t nil)

(autoload 'ecb-minor-mode "ecb" "\
Toggle ECB minor mode.
With prefix argument ARG, turn on if positive, otherwise off. Return non-nil
if the minor mode is enabled.

\\{ecb-mode-map}

\(fn &optional ARG)" t nil)

(autoload 'ecb-byte-compile "ecb" "\
Byte-compiles the ECB package.
This is done for all lisp-files of ECB if FORCE-ALL is not nil or for each
lisp-file FILE.el which is either newer than FILE.elc or if FILE.elc doesn't
exist.

\(fn &optional FORCE-ALL)" t nil)

;;;***

;;;### (autoloads nil "ecb-help" "../../../../../../../.emacs.d/elpa/ecb-20140215.114/ecb-help.el"
;;;;;;  "ad2944009b5fefed05b806382318ce03")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/ecb-20140215.114/ecb-help.el

(autoload 'ecb-show-help "ecb-help" "\
Shows the online help of ECB in Info or HTML-format.
The format depends on the setting in `ecb-show-help-format'. If called with
prefix argument, i.e. if FORMAT is not nil then the user is prompted to choose
the format of the help (Info or Html).

If an error about not finding the needed help-file occurs please take a look
at the options `ecb-help-info-start-file' and `ecb-help-html-start-file'!

Note: If you got ECB as a standard XEmacs-package maybe the
HTML-online-documentation is not included.

\(fn &optional FORMAT)" t nil)

;;;***

;;;### (autoloads nil "ecb-util" "../../../../../../../.emacs.d/elpa/ecb-20140215.114/ecb-util.el"
;;;;;;  "6a61d6ae4a631c772a078f49c2e87b11")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/ecb-20140215.114/ecb-util.el

(defconst ecb-running-xemacs (featurep 'xemacs))

;;;***

;;;### (autoloads nil nil ("../../../../../../../.emacs.d/elpa/ecb-20140215.114/ecb-advice-test.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/ecb-20140215.114/ecb-analyse.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/ecb-20140215.114/ecb-autogen.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/ecb-20140215.114/ecb-autoloads.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/ecb-20140215.114/ecb-buffertab.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/ecb-20140215.114/ecb-cedet-wrapper.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/ecb-20140215.114/ecb-common-browser.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/ecb-20140215.114/ecb-compatibility.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/ecb-20140215.114/ecb-compilation.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/ecb-20140215.114/ecb-create-layout.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/ecb-20140215.114/ecb-cycle.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/ecb-20140215.114/ecb-eshell.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/ecb-20140215.114/ecb-examples.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/ecb-20140215.114/ecb-face.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/ecb-20140215.114/ecb-file-browser.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/ecb-20140215.114/ecb-help.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/ecb-20140215.114/ecb-jde.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/ecb-20140215.114/ecb-layout-defs.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/ecb-20140215.114/ecb-layout.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/ecb-20140215.114/ecb-method-browser.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/ecb-20140215.114/ecb-mode-line.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/ecb-20140215.114/ecb-multiframe.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/ecb-20140215.114/ecb-navigate.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/ecb-20140215.114/ecb-pkg.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/ecb-20140215.114/ecb-semantic-wrapper.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/ecb-20140215.114/ecb-semantic.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/ecb-20140215.114/ecb-speedbar.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/ecb-20140215.114/ecb-symboldef.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/ecb-20140215.114/ecb-tod.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/ecb-20140215.114/ecb-upgrade.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/ecb-20140215.114/ecb-util.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/ecb-20140215.114/ecb-winman-support.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/ecb-20140215.114/ecb.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/ecb-20140215.114/silentcomp.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/ecb-20140215.114/tree-buffer.el")
;;;;;;  (21623 61001 53311 71000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; ecb-autoloads.el ends here
