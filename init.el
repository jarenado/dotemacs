(add-to-list 'load-path (concat user-emacs-directory "config"))
(add-to-list 'load-path (concat user-emacs-directory "elisp"))
(add-to-list 'load-path (concat user-emacs-directory "config" "/eyecandy"))
(add-to-list 'load-path (concat user-emacs-directory "config" "/languages"))
(add-to-list 'load-path "/usr/share/emacs/site-lisp")

(setq package-archives '(("melpa" . "http://melpa.milkbox.net/packages/")
                         ("org" . "http://orgmode.org/elpa/")
                         ("gnu" . "http://elpa.gnu.org/packages/")))

(require 'package)
(package-initialize)
(setq package-enable-at-startup nil)
(unless (package-installed-p 'use-package)
    (package-refresh-contents)
    (package-install 'use-package))

(tool-bar-mode -1)
(menu-bar-mode -1)

;; arduino-mode
(require 'cl)
(autoload 'arduino-mode "arduino-mode" "Arduino editing mode." t)
(add-to-list 'auto-mode-alist '("\.ino$" . arduino-mode))

(require 'use-package)
(add-to-list 'load-path "~/.emacs.d/config")
(add-to-list 'load-path "~/.emacs.d/twit")  ; Save directory

;(require 'my-env)
;(require 'my-core)
;(require 'my-functions)
;(require 'my-eyecandy)
;(require 'my-keychain)
;(require 'my-dired)
;(require 'my-bookmarks)
;(require 'my-elisp)
;(require 'my-tags)
;(require 'my-autocomplete)
;(require 'my-ido)
;(require 'my-projects)
;(require 'my-ag)
;(require 'my-interaction)
;(require 'my-flycheck)
;(require 'my-helm)
;(require 'my-woman)
;(require 'my-comint)
;(require 'my-unbound-keys)
;(require 'my-languages)
;(require 'my-shell)
;(require 'my-filetypes)
;(require 'my-term)
;(require 'my-magit)
;(require 'my-android)
;(require 'my-eshell)
;(require 'my-ielm)
;(require 'my-package-list)
(require 'my-evil)
;(require 'my-help)
;(require 'my-god)
;(require 'my-sessions)
(require 'my-leader-keys)
;; (require 'my-ibuffer)

;(require 'linum) 
;(global-linum-mode 1)

(use-package linum
  ;; :commands (evil-leader-mode global-evil-leader-mode)
  :ensure linum
  :demand linum
  :config
  (progn
    (global-linum-mode 1)
    )
  )

(use-package powerline
  :ensure powerline
  :demand powerline
  :config
  (progn
    (powerline-default-theme)
    )
  )

(provide 'init)


(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)

(setq org-agenda-files (list "~/Desktop/Dropbox/org/"))
(global-font-lock-mode 1)  Not needed in recent emacsen
(setq org-directory "~/org/")
 (setq org-default-notes-file "~/org/newgtd.org")
 (setq remember-annotation-functions '(org-remember-annotation))
 (setq remember-handler-functions '(org-remember-handler))
 (add-hook 'remember-mode-hook 'org-remember-apply-template)
 (define-key global-map "\C-cr" 'org-remember)
(setq org-remember-templates
    (("Todo" ?t "* TODO %^{Brief Description} %^g\nAdded: %U" 
	"~/org/newgtd.org" "Tasks")
    )

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

(setq make-backup-files nil)
;; (setq backup-directory-alist '(("." . "~/.emacs.d/emacs-backup"))
;;   backup-by-copying t    ; Don't delink hardlinks
;;   version-control t      ; Use version numbers on backups
;;   delete-old-versions t  ; Automatically delete excess backups
;;   kept-new-versions 20   ; how many of the newest versions to keep
;;   kept-old-versions 5    ; and how many of the old
;;   )


;(require 'twittering-mode)



;(require 'helm)
;(require 'helm-config)

;(require 'evil-leader)
;(global-evil-leader-mode)

;(require 'evil)
;(evil-mode 1)

;(require 'key-chord)
;(key-chord-mode 1)

;(use-package magit
  ;:ensure magit
  ;:config
  ;(progn
    ;(evil-set-initial-state 'magit-mode 'normal)
    ;(evil-set-initial-state 'magit-status-mode 'normal)
    ;(evil-set-initial-state 'magit-diff-mode 'normal)
    ;(evil-set-initial-state 'magit-log-mode 'normal)
    ;(evil-define-key 'normal magit-mode-map
        ;"j" 'magit-goto-next-section
        ;"k" 'magit-goto-previous-section)
    ;(evil-define-key 'normal magit-log-mode-map
        ;"j" 'magit-goto-next-section
        ;"k" 'magit-goto-previous-section)
    ;(evil-define-key 'normal magit-diff-mode-map
        ;"j" 'magit-goto-next-section
        ;"k" 'magit-goto-previous-section)))

;(key-chord-define-global "jk" 'evil-normal-state)

;(evil-define-key 'normal emacs-lisp-mode-map (kbd "K")
  ;'elisp-slime-nav-describe-elisp-thing-at-point)

;(evil-leader/set-leader "<SPC>")
;(evil-leader/set-key "b" 'ibuffer)
;(evil-leader/set-key "w" 'save-buffer)
;(evil-leader/set-key "<SPC>" 'other-window)
;(evil-leader/set-key "x" 'helm-M-x)
;(evil-leader/set-key "f" 'helm-find)

;(define-key evil-normal-state-map (kbd "C-h") 'evil-window-left)
;(define-key evil-normal-state-map (kbd "C-j") 'evil-window-down)
;(define-key evil-normal-state-map (kbd "C-k") 'evil-window-up)
;(define-key evil-normal-state-map (kbd "C-l") 'evil-window-right)
;(define-key evil-insert-state-map (kbd "C-c") 'evil-normal-state)



;(require 'init-ibuffer.el)
;(require 'dired-x)

