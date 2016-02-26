(provide 'my-leader-keys)

(evil-leader/set-key
  "b" 'ibuffer
  "<SPC>"     'other-window
  ">"         'find-file-at-point
  "qq"        'kill-this-buffer
  "w"         'save-buffer
  "/"         'evilnc-comment-or-uncomment-lines
  "f"         'helm-mini
  "i"         'helm-imenu
  "l"         'linum-mode
  "a"         'apropos-command

  )
