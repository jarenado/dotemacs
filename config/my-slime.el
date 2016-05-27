(provide 'my-slime)

;; navigate lisp with slime
(use-package elisp-slime-nav
    :ensure elisp-slime-nav
    :demand elisp-slime-nav
    :config
  (progn
    (defun my-lisp-hook ()
	(elisp-slime-nav-mode)
	(turn-on-eldoc-mode)
	)
    (add-hook 'emacs-lisp-mode-hook 'my-lisp-hook)
    )
)
