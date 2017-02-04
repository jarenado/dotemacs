(use-package company
  :ensure t
  )

(add-hook 'after-init-hook 'global-company-mode)

(setq company-idle-delay 0.2)
(setq company-selection-wrap-around t)
(setq company-dabbrev-downcase nil)

(define-key company-active-map [tab] 'company-complete)
(define-key company-active-map (kbd "C-n") 'company-select-next)
(define-key company-active-map (kbd "C-p") 'company-select-previous)


(provide 'my-company-mode)
