(provide 'my-css-mode)


(require 'css-mode)

(add-hook 'css-mode-hook (lambda ()
                           (setq css-indent-offset 2)
                           (setq indent-tabs-mode nil)))

(add-to-list 'auto-mode-alist '("\\.css\\'" . css-mode))
(add-to-list 'auto-mode-alist '("\\.scss\\'" . css-mode))
