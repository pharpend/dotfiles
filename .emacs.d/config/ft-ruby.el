(autopair-mode 1)
(auto-fill-mode 1)

(setq-local fill-column 80)

(setq-local evil-shift-width 2)
(setq-local tab-width 2)
(setq-local tab-stop-list (number-sequence 2 200 2))
(setq-local indent-tabs-mode nil)

(add-to-list 'ac-sources 'ac-source-rsense-method)
(add-to-list 'ac-sources 'ac-source-rsense-constant)
(auto-complete-mode 1)
