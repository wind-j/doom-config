;;; +lang.el -*- lexical-binding: t; -*-

;; golang
(setq-hook! 'go-mode-hook +format-with-lsp nil)

;; or

;; (setq gofmt-command "goimports")
;; (add-hook 'before-save-hook 'gofmt-before-save)

