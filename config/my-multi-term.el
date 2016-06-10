(provide 'my-multi-term)

(require 'multi-term)

(use-package multi-term
  :ensure multi-term
  :config
  (progn
    (setq multi-term-program "/bin/zsh --login")))

