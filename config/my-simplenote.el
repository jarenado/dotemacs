(provide 'my-simplenote)

(require 'simplenote2)
(setq simplenote2-email "vidalstat@gmail.com")
(setq simplenote2-password nil)
(simplenote2-setup)

;; (global-set-key (kbd "C-c a")  'simplenote2-push-buffer)

(add-hook 'after-save-hook 'simplenote2-push-buffer)

;; (defun simplenote2-push-on-save()
;;   "sync simplenote on save"
;;   (when (eq major-mode 'org-mode)  'simplenote2-push-buffer ))


;; (defun turn-on-org-mode () 'org-mode )
;; (add-hook 'simplenote2-note-mode-hook 'turn-on-org-mode)
