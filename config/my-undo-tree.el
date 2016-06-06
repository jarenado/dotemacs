(use-package undo-tree
  :ensure t
  :config
  (progn
    (global-undo-tree-mode)
    (setq undo-tree-history-directory-alist "~/tmp/")
    )
  )

(provide 'my-undo-tree)
