;;; private/bindings/config.el -*- lexical-binding: t; -*-

(if (featurep 'evil)
    (load! "+evil-bindings")
  (load! "+emacs-bindings"))
