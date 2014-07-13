(auto-complete-mode 1)
(highlight-indentation-current-column-mode 1)
(rainbow-mode 1)
(rainbow-delimiters-mode 1)
(smartparens-mode 1)
(turn-on-eldoc-mode)
(turn-off-haskell-simple-indent)

(setq-local indent-tabs-mode nil)
(setq-local indent-line-function 'indent-relative-maybe)
(setq-local tab-width 2)
(setq-local tab-stop-list (number-sequence 2 200 2))
(setq-local evil-shift-width 2)
(setq-local ac-sources
            (append '(ac-source-yasnippet
                      ac-source-abbrev
                      ac-source-words-in-buffer
                      my/ac-source-haskell)
                    ac-sources))

(local-set-key (kbd "C-t") 'dabbrev-expand)
