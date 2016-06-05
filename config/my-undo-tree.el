(use-package undo-tree
  :ensure t
  :config
  (progn
    (global-undo-tree-mode)
    (setq undo-tree-auto-save-history t)
    )
  )

(provide 'my-undo-tree)
