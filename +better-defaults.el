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
 auto-save-default nil

 ;; Unicode ellispis are nicer than "...", and also save /precious/ space
 truncate-string-ellipsis "…")

;; Iterate through CamelCase words
(global-subword-mode 1)

;; 拆分窗口时默认把焦点定在新窗口
(setq evil-split-window-below t
      evil-vsplit-window-right t)
(defadvice split-window (after split-window-after activate)
  (other-window 1))

;; (add-to-list 'default-frame-alist '(height . 36))
;; (add-to-list 'default-frame-alist '(width . 100))

;; 调整启动时窗口大小/最大化/全屏
;; (pushnew! initial-frame-alist '(width . 200) '(height . 48))
(add-hook 'window-setup-hook #'toggle-frame-maximized t)
;; (add-hook 'window-setup-hook #'toggle-frame-fullscreen t)

;; custom file
(setq-default custom-file (expand-file-name ".custom.el" doom-private-dir))
(when (file-exists-p custom-file)
  (load custom-file))
