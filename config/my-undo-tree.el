(use-package undo-tree
  :ensure t
  :config
  (progn
    (global-undo-tree-mode)
    (setq undo-tree-history-directory-alist (concat user-emacs-directory "tmp"))
    )
  )

(provide 'my-undo-tree)
