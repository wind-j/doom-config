;;; +bindings.el -*- lexical-binding: t; -*-

(setq doom-leader-alt-key "M-m")

(map! :leader
      ":" nil
      "," nil
      "u" nil
      "<" nil
      :desc "M-x"                   "SPC"    #'execute-extended-command
      :desc "Find file in project"  "."      #'projectile-find-file
      )

(map! :ie "M-DEL" #'doom/delete-backward-word
      :ie "C-DEL" #'doom/delete-backward-word
      )
