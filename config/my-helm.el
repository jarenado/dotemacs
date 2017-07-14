(use-package helm-projectile
  :ensure t
  :config
  (progn
    (projectile-global-mode)
    (setq helm-buffers-fuzzy-matching t)
    (setq helm-split-window-default-side (quote other))
    (setq helm-split-window-in-side-p nil)
    (setq projectile-completion-system 'helm)
   ) 
  )


(provide 'my-helm)
