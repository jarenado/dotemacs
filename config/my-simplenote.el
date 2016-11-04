(provide 'my-simplenote)

(require 'simplenote2)
(setq simplenote2-email "vidalstat@gmail.com")
(setq simplenote2-password nil)
(simplenote2-setup)

(global-set-key (kbd "C-c a")  'simplenote2-sync-notes)


;; (add-hook 'after-save-hook 'simplenote2-push-buffer)


;; (defvar is-simplenote t)

;; (add-hook 'find-file-hook
;;           (lambda () (when is-simplenote (message "var set"))))

;; (add-hook 'after-save-hook
;;           (lambda () (when is-simplenote (message "before save"))))
