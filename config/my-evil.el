;; my-evil.el
;;
;; Settings for ostracizing me from both the Emacs and Vim communities.
;; a.k.a. evil-mode


;; In order to work properly, we need to load evil-leader-mode before we load
;; evil-mode.
(use-package evil-leader
  :commands (global-evil-leader-mode evil-leader-mode)
  :ensure evil-leader
  :demand evil-leader
  :config
  (progn
    (evil-leader/set-leader "<SPC>")
    (global-evil-leader-mode t)))


;; Here's what we've all been waiting for.
;; Recreate Vim inside Emacs.
(use-package evil
  :ensure evil
  :config
  (progn

    (evil-mode 1)
    (setq evil-want-C-u-scroll t)
    (setq evil-want-C-w-in-emacs-state t)
    (setq evil-search-module        'isearch)
    (setq evil-magic                'very-magic)
    (setq evil-emacs-state-cursor   '("#dfaf8f" box))
    (setq evil-normal-state-cursor  '("#f8f893" box))
    (setq evil-insert-state-cursor  '("#f8f893" bar))
    (setq evil-replace-state-cursor '("#cc9393" box))
    (setq evil-want-fine-undo t)
    (setq evil-want-change-word-to-end t)


    (use-package linum
      ;; :commands (evil-leader-mode global-evil-leader-mode)
      :ensure linum
      :demand linum
      :config
      (progn
        (global-linum-mode 1)
        )
      )
     
    (use-package evil-nerd-commenter
      :ensure evil-nerd-commenter
      :commands (evilnc-comment-or-uncomment-lines)))

    (use-package evil-matchit
      :ensure evil-matchit
      :commands evilmi-jump-items
      :init
      (progn
        (setq global-evil-matchit-mode t)
        (define-key evil-normal-state-map "%" 'evilmi-jump-items)))

    (use-package evil-surround
      :ensure evil-surround
      :config
      (progn
        (global-evil-surround-mode 1)))

    (use-package key-chord
      :ensure key-chord
      :config
      (progn
        (key-chord-mode 1)))


    (evil-set-initial-state 'help-mode-map 'normal)
    (evil-define-key 'normal help-mode-map
	(kbd "j") 'evil-next-line
	(kbd "k") 'evil-previous-line
	(kbd "h") 'evil-backward-char
	(kbd "l") 'evil-forward-char
	(kbd "q") 'quit-window
	(kbd "H") 'help-go-back
	(kbd "L") 'help-go-forward
	(kbd "RET") 'help-follow) 

    (evil-set-initial-state 'ibuffer-mode 'normal)
    (evil-define-key 'normal ibuffer-mode-map
	(kbd "m") 'ibuffer-mark-forward
	(kbd "t") 'ibuffer-toggle-marks
	(kbd "u") 'ibuffer-unmark-forward
	(kbd "=") 'ibuffer-diff-with-file
	(kbd "J") 'ibuffer-jump-to-buffer
	(kbd "j") 'evil-next-line
	(kbd "k") 'evil-previous-line
	(kbd "M-g") 'ibuffer-jump-to-buffer
	(kbd "M-s a C-s") 'ibuffer-do-isearch
	(kbd "M-s a M-C-s") 'ibuffer-do-isearch-regexp
    )

    ;; window moving stuff
    ;; (define-key evil-normal-state-map (kbd "C-h") 'evil-window-left)
    ;; (define-key evil-normal-state-map (kbd "C-j") 'evil-window-down)
    ;; (define-key evil-normal-state-map (kbd "C-k") 'evil-window-up)
    ;; (define-key evil-normal-state-map (kbd "C-l") 'evil-window-right)
    (define-key evil-normal-state-map (kbd "\S-j") nil)
    (define-key evil-normal-state-map (kbd "S-k") nil)
    (define-key evil-insert-state-map (kbd "S-j") nil)
    
    (define-key evil-insert-state-map (kbd "C-c") 'evil-normal-state)

    (key-chord-define evil-insert-state-map "jk" 'evil-normal-state)
    )

    (evil-define-motion myevil-next-visual-line (count)
    "Move the cursor COUNT screen lines down, or 5."
    :type exclusive
        (let ((line-move-visual t))
        (evil-line-move (or count 5))))

    (evil-define-motion myevil-previous-visual-line (count)
    "Move the cursor COUNT screen lines down, or 5."
    :type exclusive
        (let ((line-move-visual t))
        (evil-line-move (or count -5))))

    (define-key evil-normal-state-map (kbd "\S-j")
    (lambda () (interactive) (next-line 5)))

    (define-key evil-normal-state-map (kbd "\S-k")
    (lambda () (interactive) (previous-line 5)))

    (define-key evil-visual-state-map (kbd "\S-j") 'myevil-next-visual-line)
    (define-key evil-visual-state-map (kbd "\S-k") 'myevil-previous-visual-line)

    ;;(evil-set-initial-state 'flycheck-error-list-mode 'normal)
    ;;(evil-set-initial-state 'git-commit-mode 'insert)
    (evil-set-initial-state 'shell-mode 'emacs)
    ;;(evil-set-initial-state 'esup-mode 'emacs)
    ;;(evil-set-initial-state 'diff-mode 'emacs)
    (evil-set-initial-state 'term-mode 'emacs)
    (evil-set-initial-state 'multi-term-mode 'emacs)

    ;(use-package key-chord
    ;(use-package evil-matchit
      ;:ensure evil-matchit
      ;:commands evilmi-jump-items
      ;:init
      ;(progn
        ;(setq global-evil-matchit-mode t)
        ;(define-key evil-normal-state-map "%" 'evilmi-jump-items)))
      ;:ensure key-chord
      ;:config
      ;(progn
        ;(key-chord-mode 1)))

  ;)

(provide 'my-evil)
