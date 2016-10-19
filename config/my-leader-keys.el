(provide 'my-leader-keys)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-c C-=") 'text-scale-increase)
(global-set-key (kbd "C-c C--") 'text-scale-decrease)
(global-set-key (kbd "\S-k") nil)
(global-set-key (kbd "\S-j") nil)


;; (define-key evil-normal-state-map (kbd "\S-j")
;;     (lambda () (interactive) (next-line 5)))

;; (define-key evil-normal-state-map (kbd "\S-k")
;;     (lambda () (interactive) (next-line 5)))

(define-key global-map "\C-cc" 'org-capture)

(eval-after-load "evil-maps"
  (define-key evil-motion-state-map "\S-k" nil))


(global-set-key (kbd "C-c i") (lambda () (interactive) (find-file "~/.emacs.d/init.el")))
(global-set-key (kbd "C-c u") (lambda () (interactive) (switch-to-buffer "*scratch*")))

(evil-leader/set-key
  "b" 'ibuffer
  "<SPC>"     'other-window
  ">"         'find-file-at-point
  "qq"        'kill-this-buffer
  "qw"        'evil-window-delete
  "w"         'save-buffer
  "/"         'evilnc-comment-or-uncomment-lines
  "f"         'helm-projectile
  "gs"        'magit-status
  "i"         'helm-imenu
  "n"         'linum-mode
  "a"         'apropos-command
  "x"         'helm-M-x
  "V"         'exchange-point-and-mark
  "B"         'eval-buffer
  ;; "e"         'evil-ace-jump-word-mode
  "l"         'evil-avy-goto-line
  ;; "x"         'evil-ace-jump-char-mode

  )
