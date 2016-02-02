(require 'package)
(package-initialize)
(setq package-enable-at-startup nil)

(add-to-list 'load-path "~/.emacs_d/config")
(setq package-archives '(("melpa" . "http://melpa.milkbox.net/packages/")
                         ("org" . "http://orgmode.org/elpa/")
                         ("gnu" . "http://elpa.gnu.org/packages/")))

(unless (package-installed-p 'use-package)
    (package-refresh-contents)
    (package-install 'use-package))
(require 'use-package)

(tool-bar-mode -1)
(menu-bar-mode -1)

(setq backup-directory-alist '(("." . "~/.emacs.d/emacs-backup"))
  backup-by-copying t    ; Don't delink hardlinks
  version-control t      ; Use version numbers on backups
  delete-old-versions t  ; Automatically delete excess backups
  kept-new-versions 20   ; how many of the newest versions to keep
  kept-old-versions 5    ; and how many of the old
  )


(require 'elisp-slime-nav)
(defun my-lisp-hook ()
  (elisp-slime-nav-mode)
  (turn-on-eldoc-mode)
  )

(progn
  (require 'elisp-slime-nav)
  (defun my-lisp-hook ()
    (elisp-slime-nav-mode)
    (turn-on-eldoc-mode)
    )
  (add-hook 'emacs-lisp-mode-hook 'my-lisp-hook)
)

(require 'helm)
(require 'helm-config)
(use-package magit
  :ensure magit
  :config
  (progn
    (evil-set-initial-state 'magit-mode 'normal)
    (evil-set-initial-state 'magit-status-mode 'normal)
    (evil-set-initial-state 'magit-diff-mode 'normal)
    (evil-set-initial-state 'magit-log-mode 'normal)
    (evil-define-key 'normal magit-mode-map
        "j" 'magit-goto-next-section
        "k" 'magit-goto-previous-section)
    (evil-define-key 'normal magit-log-mode-map
        "j" 'magit-goto-next-section
        "k" 'magit-goto-previous-section)
    (evil-define-key 'normal magit-diff-mode-map
        "j" 'magit-goto-next-section
        "k" 'magit-goto-previous-section)))

(require 'evil-leader)
(global-evil-leader-mode)

(require 'evil)
(evil-mode 1)

(require 'key-chord)
(key-chord-mode 1)

(key-chord-define-global "jk" 'evil-normal-state)

(evil-define-key 'normal emacs-lisp-mode-map (kbd "K")
  'elisp-slime-nav-describe-elisp-thing-at-point)

(evil-leader/set-leader ",")
(evil-leader/set-key "b" 'ibuffer)
(evil-leader/set-key "w" 'save-buffer)
(evil-leader/set-key "," 'other-window)
(evil-leader/set-key "x" 'helm-M-x)
(evil-leader/set-key "f" 'helm-find-files)

(define-key evil-normal-state-map (kbd "C-h") 'evil-window-left)
(define-key evil-normal-state-map (kbd "C-j") 'evil-window-down)
(define-key evil-normal-state-map (kbd "C-k") 'evil-window-up)
(define-key evil-normal-state-map (kbd "C-l") 'evil-window-right)
(define-key evil-insert-state-map (kbd "C-c") 'evil-normal-state)



(require 'init-ibuffer.el)
(require 'dired-x)
