(provide 'my-simplenote)

(require 'simplenote2)
(setq simplenote2-email "vidalstat@gmail.com")
(setq simplenote2-password nil)
(simplenote2-setup)

(global-set-key (kbd "C-c a")  'simplenote2-sync-notes)
