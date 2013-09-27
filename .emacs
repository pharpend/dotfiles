;; Assign various vfile types to various modes
(add-to-list 'auto-mode-alist '("\\.cl\\'" . common-lisp-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.hs\\'" . haskell-mode))
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))
(add-to-list 'auto-mode-alist '("Gemfile" . ruby-mode))
;; (add-to-list 'auto-mode-alist '("\\.css.scss\\'" . css-mode))
(add-to-list 'auto-mode-alist '(".gitlog" . magit-log-edit-mode))

;; Load files
(add-to-list 'load-path "~/.emacs.d/elpa/")
(add-to-list 'load-path "~/.emacs.d/dictionary-el/")
(add-to-list 'load-path "~/.emacs.d/emacs-jabber-0.8.0/")
(add-to-list 'load-path "~/.emacs.d/haskell-mode/")
(add-to-list 'load-path "~/.emacs.d/lisp/")

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(package-initialize)

;;(load-file "~/.emacs.d/monky/monky.el")
;;(load-file "~/.emacs.d/dictionary-el/dictionary-init.el")
;; (load-file "~/.emacs.d/color-theme-github/color-theme-github.el")
;;(load-file "~/.emacs.d/yari.el/yari.el")

;; Imports
(require 'ahg)
(require 'ac-slime)
(require 'auto-complete)
(require 'autopair)
(require 'color-theme)
(require 'color-theme-heroku)
(require 'elpy)
(require 'epa-file)
(require 'haskell-mode)
(require 'jabber-autoloads)
(require 'linum)
(require 'linum-relative)
(require 'magit)
(require 'markdown-mode)
;;(require 'mmm-mode)
(require 'multiple-cursors)
(require 'php-mode)
(require 'pymacs)
(require 'rect-mark)
(require 'scss-mode)
(require 'smartparens)
(require 'smtpmail)
(require 'slime)
(require 'sublime-text-2)

(color-theme-solarized-dark)

(add-to-list 'custom-theme-load-path "~/.emacs.d/color-theme-eclipse/")
(add-to-list 'custom-theme-load-path "~/.emacs.d/color-theme-railscasts/")
(add-to-list
'custom-theme-load-path "~/.emacs.d/emacs-color-theme-solarized/")


(defun increment-number-at-point ()
     (interactive)
     (skip-chars-backward "0123456789")
     (or (looking-at "[0123456789]+")
         (error "No number at point"))
     (replace-match (number-to-string (1+ (string-to-number (match-string
     0))))))

;; 5 Lines Down - Go five lines downwards
(defun 5-lines-down ()
  (interactive)
  (next-line)
  (next-line)
  (next-line)
  (next-line)
  (next-line))

;; 5 Lines Up - Go five lines upwards
(defun 5-lines-up ()
  (interactive)
  (previous-line)
  (previous-line)
  (previous-line)
  (previous-line)
  (previous-line))

;; 10 Lines Down - Go ten lines downwards
(defun 10-lines-down()
  (interactive)
  (5-lines-down)
  (5-lines-down))

;; 10 Lines Up - Go ten lines up
(defun 10-lines-up()
  (interactive)
  (5-lines-up)
  (5-lines-up))

;;
;; Insert a backtick
;; I actually wrote this one myself. I use the guake terminal, bound to
;; `, and I can't find another acceptable hotkey.
;;
(defun insert-backtick ()
  "Insert a backtick."
  (interactive)
  (insert "`"))

;;
;; Look up elpy documentation
;; Wrote this one myself
;;
(defun elpy-lookup (module)
  "Look up documentation on a specified Python module."
  (interactive "sLook up documentation on module: ")
  (elpy-doc 1 module))

;;
;; Full Screen mode
;; Taken from the EmacsWiki
;; http://emacswiki.org/emacs/FullScreen
;;
(defun fullscreen ()
       (interactive)
       (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
                 '(2 "_NET_WM_STATE_FULLSCREEN" 0)))
(defun toggle-fullscreen ()
  "Toggle full screen on X11"
  (interactive)
  (when (eq window-system 'x)
    (set-frame-parameter
     nil 'fullscreen
     (when (not (frame-parameter nil 'fullscreen)) 'fullboth))))

;; Toggle between PHP & HTML Helper mode.  Useful when working on
;; php files, that can been intertwined with HTML code
;; http://www.emacswiki.org/emacs/PhpMode
;; (defun toggle-php-html-mode ()
;;   "Toggle mode between PHP & HTML modes"
;;   (interactive)
;;   (cond ((eql mode-name "PHP")
;; 		 (insert "HTML MODE FUCK NO")
;;          (html-mode))
;;         ((eql (nth 2 mode-name) "HTML") ; '(sgml-xml-mode "XHTML" "HTML"))
;; 		 (insert "PHP MODE FUCK YEAH")
;;          (php-mode))))

;;
;; String starts with or ends with
;; Found here: http://www.emacswiki.org/emacs/ElispCookbook
;;
(defun string/ends-with (s ending)
  "return non-nil if string S ends with ENDING."
  (let ((elength (length ending)))
    (string= (substring s (- 0 elength)) ending)))

(defun string/starts-with (s arg)
      "returns non-nil if string S starts with ARG.  Else nil."
      (cond ((>= (length s) (length arg))
             (string-equal (substring s 0 (length arg)) arg))
            (t nil)))

;; Intelligent Deletion
;; Wrote this one myself
;; (defun delete-backward-dwim

;;
;; Go to a relative line
;; Wrote myself
;;
(defun backward-lines (lines)
  "Go forward a number of lines"
  (interactive "nBackward how many lines? ")
  (setq i 0)
  (dotimes (i lines) (previous-line)))

(defun forward-lines (lines)
  "Go forward a number of lines"
  (interactive "nForward how many lines? ")
  (setq i 0)
  (dotimes (i lines) (next-line)))

(defun goto-line-relative (n)
  "Go to a specified line relative to point. If given a positive
  value (e.g. +8), it will move the cursor forward N lines. If
  given a negative value (e.g. -8), it will move the cursor
  backward N lines. If given a \"neutral\" value (e.g. 8), it
  will move the cursor to the specified line."
  (interactive "sGo to line relative to point: ")
  (setq i 0)

  (cond
   ((equal (string-match "+[0-9]+" n) 0)
    (dotimes (i (string-to-number (substring n 1)))
        (next-line)
     ); dotimes
   ); first condition

  ((equal (string-match "[0-9]+" n) 0)
    (dotimes (i (string-to-number n))
        (next-line)
     ); dotimes
   ); second condition

   ((equal (string-match "-[0-9]+" n) 0) ;if negative argument
    (dotimes (i (string-to-number (substring n 1)))
        (previous-line)
     ); dotimes
   ); equal

   ((equal (string-match "=[0-9]+" n) 0) ;equal argument
     (goto-line (string-to-number (substring n 1))) ;go to that line
   ); equal
  ); cond
);goto-line-relative

;;
;; Make email signature
;; Wrote this one myself
;;
(defun mksig ()
  "Make signature for email"
  (interactive)
  (end-of-buffer)
  (spook))

;;
;; Start maximized
;; Stolen from the Ubuntu Forums
;; http://ubuntuforums.org/showthread.php?t=782196
;;
(defun toggle-maximized ()
  (interactive)
  (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
                 '(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0))
  (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
                 '(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0))
)

;;
;; Toggle commenting on a line or region
;; As always, stolen from stack overvlow
;; http://stackoverflow.com/questions/9688748/emacs-comment-uncomment-current-line
;;
(defun toggle-comment ()
    "Comments or uncomments the region or the current line if there's no active region."
    (interactive)
    (let (beg end)
        (if (region-active-p)
            (setq beg (region-beginning) end (region-end))
            (setq beg (line-beginning-position) end (line-end-position)))
        (comment-or-uncomment-region beg end)))

;;
;; Vi-like 'o' and 'O'
;; Stolen from Stack Overflow
;; http://stackoverflow.com/questions/2173324/emacs-equivalents-of-vims-dd-o-o
;;
(defun vi-open-line-above ()
  "Insert a newline above the current line and put point at beginning."
  (interactive)
  (unless (bolp)
    (beginning-of-line))
  (newline)
  (forward-line -1)
  (indent-according-to-mode))

(defun vi-open-line-below ()
  "Insert a newline below the current line and put point at beginning."
  (interactive)
  (unless (eolp)
    (end-of-line))
  (newline-and-indent))

(defun vi-open-line (&optional abovep)
  "Insert a newline below the current line and put point at beginning.
With a prefix argument, insert a newline above the current line."
  (interactive "P")
  (if abovep
      (vi-open-line-above)
    (vi-open-line-below)))

;; ;; Relative Line Numbers
;; (defvar my-linum-current-line-number 0)

;; (setq linum-format 'my-linum-relative-line-numbers)

;; (defun my-linum-relative-line-numbers (line-number)
;;   (let ((test2 (1+ (- line-number my-linum-current-line-number))))
;;     (propertize
;;      (number-to-string (cond ((<= test2 0) (1- test2))
;;                              ((> test2 0) test2)))
;;      'face 'linum)))

;; (defadvice linum-update (around my-linum-update)
;;   (let ((my-linum-current-line-number (line-number-at-pos)))
;;     ad-do-it))
;; (ad-activate 'linum-update)

(defvar my-linum-format-string "%4d")

(add-hook 'linum-before-numbering-hook 'my-linum-get-format-string)

(defun my-linum-get-format-string ()
  (let* ((width (length (number-to-string
                         (count-lines (point-min) (point-max)))))
         (format (concat "%" (number-to-string width) "d")))
    (setq my-linum-format-string format)))

(setq linum-format 'my-linum-format)

(defun my-linum-format (line-number)
  (propertize (format my-linum-format-string line-number) 'face 'linum))

;; Vi functions
(defun e ()
  (interactive)
  (find-file))
(defun w ()
  (interactive)
  (save-buffer))
(defun q ()
  (interactive)
  (save-buffers-kill-emacs))
(defun wq ()
  (interactive)
  (save-buffers-kill-emacs))
(defun q! ()
  (interactive)
  (kill-emacs))


;; (defun encaApsulate-region ()
;;   (interactive)
;;   (let (beg end)
;; 	(if (region-active-p)
;; 		(lambda ()
;; 		  (point-to-register pt)
;; 		  (setq beg (region-beginning) end(region-end))
;; 		  ())))

(setq default-indent-tabs-mode nil)
(setq default-tab-width 4)
(setq-default fill-column 72)
(setq display-time-day-and-date t)
(setq display-time-24hr-format t)
(setq inhibit-startup-echo-area-message t)
(setq inhibit-startup-message t)
(setq linum-format "%d  ")
(setq mail-from-style 'parens)
(setq send-mail-function 'smtpmail-send-it
      message-send-mail-function 'smtpmail-send-it
      smtpmail-starttls-credentials
      '(("smtp.gmail.com" 587 nil nil))
      smtpmail-auth-credentials
      (expand-file-name "~/.authinfo")
      smtpmail-default-smtp-server "smtp.gmail.com"
      smtpmail-smtp-server "smtp.gmail.com"
      smtpmail-smtp-user "peter.harpending@gmail.com"
      smtpmail-smtp-service 587
      smtpmail-debug-info t)
(setq sentence--double-space nil)
(setq starttls-use-gnutls t)            ; use gnutls
(setq tab-stop-list (number-sequence 4 200 4))
(setq user-full-name "Peter Harpending")
(setq user-mail-address "peter.harpending@gmail.com")
(setq local-function-key-map (delq '(kp-tab . [9]) function-key-map))
(setq TeX-parse-self t)
(setq inferior-lisp-program "/usr/bin/clisp")


;; Various extraneous variables
(column-number-mode t)
(display-time)
;;(elpy-enable)
(epa-file-enable)
;(fullscreen)
(global-linum-mode 1)
(menu-bar-mode -1)                      ;kill the menu bar, scroll bar, and tool bar
(scroll-bar-mode -1)
(tool-bar-mode -1)
(delq 'highlight-indentation-mode elpy-default-minor-modes) ; no autocomplete
(delq 'flymake-mode elpy-default-minor-modes) ; no autocomplete
(slime-setup)
;; (slime)

;; Hooks
(add-hook 'c-mode-hook
      (lambda ()
        (setq tab-width 4)
        (setq python-indent-offset 4)
        (setq c-indent 4)
        (setq fill-column 80)
        (auto-fill-mode 1)
        (define-key (current-local-map) (kbd "<tab>") 'python-indent-shift-right)
        (setq c-basic-offset 4)))

(add-hook 'c++-mode-hook
      (lambda ()
        (setq fill-column 80)
        (auto-fill-mode 1)
        (setq c-default-style "k&r")
        (setq python-indent-offset 4)
        (setq tab-width 4)
        (setq c-basic-offset 4)
        (setq-c-indent 4)
        (setq c++-indent 4)))

(add-hook 'haskell-mode-hook
      (lambda()
        (auto-complete-mode 1)
        (autopair-mode 1)
        (abbrev-mode 1)
        (auto-fill-mode 1)
        (setq-local fill-column 80)
        (setq-local indent-tabs-mode nil)
        (setq-local tab-stop-list (number-sequence 2 400 2))
        (setq-local python-indent-offset 2)
        (turn-on-haskell-indentation)
        (define-key haskell-mode-map (kbd "<backtab>") 'python-indent-shift-left)
        (define-key haskell-mode-map (kbd "<tab>") 'python-indent-shift-right)
        (define-key haskell-mode-map (kbd "C-,") 'python-indent-shift-left)
        (define-key haskell-mode-map (kbd "C-.") 'python-indent-shift-right)
        (define-key haskell-indentation-mode-map (kbd "C-d") 'kill-word)))

(add-hook 'java-mode-hook
      (lambda()
        (setq fill-column 80)
        (setq python-indent-offset 4)
        (define-key (current-local-map) (kbd "C-c C-c") 'compile)
        (auto-fill-mode 1)))

(add-hook 'TeX-mode-hook
	  (lambda ()
		(setq python-indent-offset 2)
		;; (autopair-mode 1)
		(setq TeX-newline-function 'newline-and-indent)
		(local-set-key (kbd "C-t") 'TeX-complete-symbol)))

(add-hook 'latex-mode-hook
      (lambda ()
        (setq latex-indent 2)
        (setq python-indent-offset 2)
        (flyspell-mode 1)
        (auto-fill-mode 1)
		(setq-local fill-column 78)
		(autopair-mode 1)
		(yas/minor-mode)
		(auto-complete-mode 1)
        (define-key (current-local-map) (kbd "C-c C-c") 'compile)))

(add-hook 'markdown-mode-hook
      (lambda()
        (setq fill-column 72)
        (define-key (current-local-map) (kbd "M-n") 'vi-open-line-below)
        (define-key (current-local-map) (kbd "<backtab>") 'python-indent-shift-left)
        (define-key (current-local-map) (kbd "<tab>") 'python-indent-shift-right)))

(add-hook 'message-signature-setup-hook
      (lambda()
        (mksig)))

(add-hook 'python-mode-hook
      (lambda ()
        (setq line-spacing 1)
        (setq tab-width 4)
        (setq fill-column 80)
        (setq python-indent-offset 4)
        (auto-fill-mode 1)
        (abbrev-mode 1)
		(autopair-mode 1)
        (define-key elpy-mode-map (kbd "M-n") 'vi-open-line-below)
        (define-key elpy-mode-map (kbd "M-e") 'vi-open-line-above)
        (define-key python-mode-map (kbd "<backtab>") 'python-indent-shift-left)
        (define-key python-mode-map (kbd "<tab>") 'python-indent-shift-right)))

(add-hook 'ruby-mode-hook
      (lambda ()
        (setq-local line-spacing 1)
        (setq-local tab-width 2)
        (setq-local python-indent-offset 2)
        (setq-local ruby-indent-level 2)
        (setq-local evil-shift-width 2)
        (setq-local fill-column 80)
        (auto-fill-mode 1)
        (autopair-mode 1)
        (auto-complete-mode 1)
        (setq-local tab-stop-list (number-sequence 2 200 2))
        (define-key (current-local-map) (kbd "C-m") 'newline-and-indent)))


(add-hook 'shell-mode-hook
      (lambda ()
        (define-key (current-local-map) (kbd "<tab>") 'shell-dynamic-complete-filename)))

(add-hook 'term-mode-hook
      (lambda ()
        (define-key term-mode-map (kbd "<tab>") 'term-dynamic-complete)))

(add-hook 'text-mode-hook
      (lambda()
        (flyspell-mode 1)
        (setq python-indent-offset 4)
        (setq fill-column 72)
        (auto-fill-mode 1)))

(add-hook 'dired-mode-hook
      (lambda()
        (define-key dired-mode-map (kbd "C-o") 'execute-extended-command)
))

(add-hook 'elpy-mode-hook
      (lambda()
        (setq python-indent-offset 4)
        (setq comment-start "#"
              comment- "")
        (define-key elpy-mode-map (kbd "C-c d") 'elpy-lookup)))

(add-hook 'html-mode-hook
      (lambda()
        (setq python-indent-offset 2)
        (yas/minor-mode)
        (autopair-mode)
        (abbrev-mode 1)
        (setq fill-column 80)
        (auto-complete-mode 1)))

(add-hook 'emacs-lisp-mode-hook
      (lambda()
        (autopair-mode 1)
        (auto-complete-mode 1)
        (yas/minor-mode 1)))

(add-hook 'scss-mode-hook
      (lambda()
        (autopair-mode 1)
        (yas/minor-mode)
        (setq-local indent-tabs-mode nil)
        (setq-local css-indent-offset 4)
        (setq-local tab-width 4)
        (auto-fill-mode)
		(setq-local comment-start "// ")
		(setq-local comment-end "")
        (setq-local python-indent-offset 4)))

(add-hook 'nxml-mode-hook
      (lambda()
        (autopair-mode 1)
        (auto-complete-mode 1)
        (yas/minor-mode)
        (auto-fill-mode)
        (setq-local fill-column 80)
        (indent-tabs-mode -1)
        (define-key nxml-mode-map (kbd "M-h") 'backward-char)))

(add-hook 'rst-mode-hook
      (lambda ()
        (autopair-mode 1)
        (auto-complete-mode 1)
        (setq indent-tabs-mode nil)
        (setq python-indent-offset 2)
        (setq tab-width 2)
        (auto-fill-mode)
        (setq-local fill-column 80)))

(add-hook 'php-mode-hook
        (lambda ()
          (autopair-mode 1)
          (abbrev-mode 1)
          (setq-local indent-tabs-mode nil)
          (setq-local python-indent-offset 4)
          (setq-local fill-column 80)
          (auto-fill-mode 1)))

(add-hook 'lisp-mode-hook
	  (lambda ()
		(abbrev-mode 1)
		(auto-complete-mode 1)
		(auto-fill-mode 1)
		(autopair-mode 1)
		(yas/minor-mode)
		(slime-mode 1)
		(define-key lisp-mode-map (kbd "<C-S-tab>") 'slime-complete-symbol)
		(define-key lisp-mode-map (kbd "<C-tab>") 'ac-complete-slime)
		(define-key lisp-mode-map (kbd "C-c C-c") 'slime-compile-file)
		;; (define-key lisp-mode-map (kbd "C-c C-e")
		;;    '(lambda ()
		;; 	  (if (region-active-p)
		;; 		  (slime-eval-region)
		;; 		(slime-eval-print-last-expression))))
		(setq-local python-indent-offset 2)
		(setq-local indent-tabs-mode nil)
		(setq-local fill-column 80)))

(autoload 'expand-abbrev-hook "expand")
(define-abbrev-table 'html-mode-abbrev-table '(
  ("%%" ["<%  %>" 3 () nil] expand-abbrev-hook 0)))
(define-abbrev-table 'html-mode-abbrev-table '(
  ("%e" ["<%=  %>" 3 () nil] expand-abbrev-hook 0)))

;; My custom keybindings
(load-library "python")
(load-library "dired")
(define-key input-decode-map (kbd "C-i") (kbd "H-i"))

(global-unset-key (kbd "<backtab>"))
(global-unset-key (kbd "<tab>"))
;; (global-unset-key (kbd "C-x C-c"))
(global-unset-key (kbd "C-h"))
(global-unset-key (kbd "C-n"))
(global-unset-key (kbd "C-e"))
(global-unset-key (kbd "C-i"))
(global-unset-key (kbd "C-S-h"))
(global-unset-key (kbd "C-S-n"))
(global-unset-key (kbd "C-S-e"))
(global-unset-key (kbd "C-S-i"))
(global-unset-key (kbd "M-h"))
(global-unset-key (kbd "M-n"))
(global-unset-key (kbd "M-e"))
(global-unset-key (kbd "M-i"))
(global-unset-key (kbd "C-p"))
(global-unset-key (kbd "C-f"))
(global-unset-key (kbd "C-b"))
(global-unset-key (kbd "M-b"))
(global-unset-key (kbd "C-t"))
(global-unset-key (kbd "M-SPC"))
(global-unset-key (kbd "<mouse-3>"))
(global-unset-key (kbd "C-z"))

;; Global maps
(global-set-key (kbd "<S-iso-lefttab>") 'python-indent-shift-left)
(global-set-key (kbd "<tab>") 'python-indent-shift-right)
(global-set-key (kbd "RET") 'newline-and-indent)
(global-set-key (kbd "C-k") 'kill-whole-line)
(global-set-key (kbd "M-k") 'kill-line)
(global-set-key (kbd "C-x <tab>") 'tab-to-tab-stop)
(global-set-key (kbd "C-x w c") 'count-words)
(global-set-key (kbd "<f11>") 'toggle-fullscreen)
(global-set-key (kbd "C-x C-m") 'magit-git-command)
(global-set-key (kbd "C-s") 'nonincremental-re-search-forward)
(global-set-key (kbd "M-s") 'nonincremental-repeat-search-forward)
(global-set-key (kbd "M-r") 'nonincremental-repeat-search-backward)
(global-set-key (kbd "C-c C-d") 'cd)
(global-set-key (kbd "C-x C-k") 'kill-this-buffer)
(global-set-key (kbd "C-x C-0") 'kill-buffer-and-window)
(global-set-key (kbd "C-x e") 'eval-expression)
(global-set-key (kbd "C-x C-e") 'eval-region)
(global-set-key (kbd "C-x C-o") 'other-window)
(global-set-key (kbd "C-<tab>") 'tab-to-tab-stop)
(global-set-key (kbd "C-x C-d") 'make-directory)
(global-set-key (kbd "M-'") 'insert-backtick)
(global-set-key (kbd "C-=") 'toggle-comment)
(global-set-key (kbd "M-j") 'join-line)
(global-set-key (kbd "C-x C-x") 'execute-extended-command)
(global-set-key (kbd "C-{") 'beginning-of-buffer)
(global-set-key (kbd "C-}") 'end-of-buffer)
(global-set-key (kbd "C-.") 'repeat)
;; (global-set-key (kbd "C-o") 'execute-extended-command)
(global-set-key (kbd "M-o") 'shell-command)
(global-set-key (kbd "M-c") 'compile)
(global-set-key (kbd "C-x r") 'rename-buffer)
(global-set-key (kbd "C-x y") 'yari)
;; (global-set-key (kbd "C-x a") 'mark-whole-buffer)
(global-set-key (kbd "C-x h") help-map)
(global-set-key (kbd "C-x l") 'dictionary-lookup-definition)
(global-set-key (kbd "C-S-f") 'toggle-fullscreen)
(global-set-key (kbd "C-1") 'delete-other-windows)
(global-set-key (kbd "C-2") 'split-window-vertically)
(global-set-key (kbd "C-3") 'split-window-horizontally)
(global-set-key (kbd "C-r") 'copy-to-register)
(global-set-key (kbd "C-S-r") 'insert-register)
(global-set-key (kbd "C-x p") 'python-shell-switch-to-shell)
(global-set-key (kbd "C-h") 'backward-word)
(global-set-key (kbd "C-n") 'next-line)
(global-set-key (kbd "C-e") 'previous-line)
(global-set-key (kbd "C-M-h") 'backward-kill-word)
(global-set-key (kbd "C-M-i") 'kill-word)
(global-set-key (kbd "C-d") 'kill-word)
(global-set-key (kbd "C-S-d") 'backward-kill-word)
(global-set-key (kbd "M-S-d") 'delete-backward-char)
(global-set-key (kbd "M-d") 'delete-char)
(global-set-key (kbd "C-S-o") 'comment-dwim)
(global-set-key (kbd "C-S-h") 'beginning-of-line)
(global-set-key (kbd "C-S-i") 'end-of-line)
(global-set-key (kbd "M-h") 'backward-char)
(global-set-key (kbd "M-n") 'vi-open-line-below)
(global-set-key (kbd "M-e") 'vi-open-line-above)
(global-set-key (kbd "M-i") 'forward-char)
(global-set-key (kbd "C-,") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-.") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/unmark-previous-like-this)
(global-set-key (kbd "C->") 'mc/unmark-next-like-this)
(global-set-key (kbd "C-x m") 'mc/edit-lines)
(global-set-key (kbd "M-m") 'mc/mark-more-like-this-extended)
(global-set-key (kbd "<mouse-3>") 'mc/add-cursor-on-click)
(global-set-key (kbd "<f12>") 'compile)
(global-set-key (kbd "C-S-SPC") 'rm-set-mark)
(global-set-key (kbd "C-w")
  '(lambda(b e) (interactive "r")
     (if rm-mark-active
       (rm-kill-region b e) (kill-region b e))))
(global-set-key (kbd "M-w")
  '(lambda(b e) (interactive "r")
     (if rm-mark-active
       (rm-kill-ring-save b e) (kill-ring-save b e))))
(global-set-key (kbd "C-S-'") 'mc/mark-all-like-this-dwim)
(global-set-key (kbd "C-f") 'nonincremental-re-search-forward)
(global-set-key (kbd "M-DEL") 'delete-backward-char)
(global-set-key (kbd "C-x g s") 'magit-status)
(global-set-key (kbd "C-x g b") 'magit-branch-manager)
(global-set-key (kbd "C-x g l") 'magit-log)
(global-set-key (kbd "C-x g c") 'magit-git-command)
(global-set-key (kbd "C-x g d") 'magit-diff)
(global-set-key (kbd "M-1") 'shell-command)
(global-set-key (kbd "C-S-n") '10-lines-down)
(global-set-key (kbd "C-S-e") '10-lines-up)
(global-set-key (kbd "M-N") 'forward-paragraph)
(global-set-key (kbd "M-E") 'backward-paragraph)
(global-set-key (kbd "C-'") 'goto-line-relative)
(global-set-key (kbd "C-\"") 'goto-line)
(global-set-key (kbd "H-i") 'forward-word)
(global-set-key (kbd "C-x v") 'set-variable)
(global-set-key (kbd "M-SPC") 'mc/mark-all-like-this-dwim)
(global-set-key (kbd "C-o") 'execute-extended-command)
(global-set-key (kbd "C-a") 'mark-whole-buffer)
(global-set-key (kbd "C-b") 'switch-to-buffer)
(global-set-key (kbd "C-x b") 'bury-buffer)
(global-set-key (kbd "C-<") 'python-indent-shift-left)
(global-set-key (kbd "C->") 'python-indent-shift-right)
(define-prefix-command 'hg-map)
(global-set-key (kbd "C-x c") 'hg-map)
(global-set-key (kbd "C-x c s") 'ahg-status)
(global-set-key (kbd "C-x c l") 'ahg-log)
(global-set-key (kbd "C-x c d") 'ahg-diff)
(global-set-key (kbd "C-x c g") 'ahg-glog)
(global-set-key (kbd "C-\\") 'dabbrev-expand)
(global-set-key (kbd "C-t") 'dabbrev-expand)
(define-prefix-command 'change-mode-map)
(global-set-key (kbd "C-x j") 'change-mode-map)
(global-set-key (kbd "C-x j h") 'html-mode)
(global-set-key (kbd "C-x j p") 'php-mode)
(global-set-key (kbd "C-x j s") 'sass-mode)

(defun python-insert-class()
  (interactive)
  (insert-file "~/devel/skel/class.py"))

(defun python-insert-function()
  (interactive)
  (insert-file "~/devel/skel/function.py"))

(defun python-insert-simple()
  (interactive)
  (insert-file "~/devel/skel/simple.py"))

(defun python-insert-test()
  (interactive)
  (insert-file "~/devel/skel/test.py"))

;; Local maps
;; (ac-set-trigger-key "C-t")
(define-key help-map (kbd "m") 'man)    ;
(define-key minibuffer-local-map (kbd "<tab>") 'minibuffer-complete)
(define-key elpy-mode-map (kbd "C-c c") 'python-insert-class)
(define-key elpy-mode-map (kbd "C-c f") 'python-insert-function)
(define-key elpy-mode-map (kbd "C-c s") 'python-insert-simple)
(define-key elpy-mode-map (kbd "C-c t") 'python-insert-test)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(auth-source-save-behavior nil)
 '(column-number-mode t)
 '(custom-safe-themes (quote ("1e7e097ec8cb1f8c3a912d7e1e0331caeed49fef6cff220be63bd2a6ba4cc365" "fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" "dc758223066a28f3c6ef6c42c9136bf4c913ec6d3b710794252dc072a3b92b14" default)))
 '(mail-host-address "locust")
 '(tool-bar-mode nil)
 '(transient-mark-mode (quote (only . t))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Liberation Mono" :foundry "unknown" :slant normal :weight normal :height 103 :width normal)))))
(linum-relative-toggle)
(linum-relative-toggle)
;; (load-file "~/.emacs.d/emacs-color-theme-solarized/emacs-color-theme-solarized.el")
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
