;;; +better-defaults.el -*- lexical-binding: t; -*-

(setq-default
 ;; Delete files to trash
 delete-by-moving-to-trash t
 ;; take new window space from all other windows (not just current)
 window-combination-resize t
 ;; Stretch cursor to the glyph width
 x-stretch-cursor t)

(setq
 ;; Raise undo-limit to 80Mb
 undo-limit 80000000
 ;; By default while in insert all changes are one big blob. Be more granular
 evil-want-fine-undo t
 ;; Nobody likes to loose work, I certainly don't
 auto-save-default t
 ;; Unicode ellispis are nicer than "...", and also save /precious/ space
 truncate-string-ellipsis "…")

;; Iterate through CamelCase words
(global-subword-mode 1)

(add-to-list 'default-frame-alist '(height . 48))
(add-to-list 'default-frame-alist '(width . 120))

;; custom file
(setq-default custom-file (expand-file-name ".custom.el" doom-private-dir))
(when (file-exists-p custom-file)
  (load custom-file))
