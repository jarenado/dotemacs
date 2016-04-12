(provide 'my-leader-keys)
(global-set-key (kbd "M-x") 'helm-M-x)
(evil-leader/set-key
  "b" 'ibuffer
  "<SPC>"     'other-window
  ">"         'find-file-at-point
  "qq"        'kill-this-buffer
  "qw"        'evil-window-delete
  "w"         'save-buffer
  "/"         'evilnc-comment-or-uncomment-lines
  "f"         'helm-projectile
  "gs"         'magit-status
  "i"         'helm-imenu
  "n"         'linum-mode
  "a"         'apropos-command
  "V"         'exchange-point-and-mark
  "B"         'eval-buffer
  ;; "e"         'evil-ace-jump-word-mode
  "l"         'evil-avy-goto-line
  ;; "x"         'evil-ace-jump-char-mode

  )
