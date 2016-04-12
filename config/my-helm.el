(use-package helm-projectile
  :ensure t
  :config
  (progn
    (setq helm-buffers-fuzzy-matching t)
    (setq helm-split-window-default-side (quote other))
    (setq helm-split-window-in-side-p nil)
   ) 
  )


(provide 'my-helm)
