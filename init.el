(add-to-list 'load-path (concat user-emacs-directory "config"))
;; (add-to-list 'load-path (concat user-emacs-directory "elisp"))
;; (add-to-list 'load-path (concat user-emacs-directory "config" "/eyecandy"))
(add-to-list 'load-path (concat user-emacs-directory "config" "/languages"))
;; (add-to-list 'load-path "/usr/share/emacs/site-lisp")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

(setq package-archives '(("melpa" . "http://melpa.milkbox.net/packages/")
                         ("org" . "http://orgmode.org/elpa/")
                         ("gnu" . "http://elpa.gnu.org/packages/")))

(require 'package)
(package-initialize)
(setq package-enable-at-startup nil)
(unless (package-installed-p 'use-package)
    (package-refresh-contents)
    (package-install 'use-package))

(load-theme 'solarized-dark)
(tool-bar-mode -1)
;; (menu-bar-mode -1)
(scroll-bar-mode -1)

;; arduino-mode
;;(require 'cl)
;;(autoload 'arduino-mode "arduino-mode" "Arduino editing mode." t)
;;(add-to-list 'auto-mode-alist '("\.ino$" . arduino-mode))

(require 'use-package)
(add-to-list 'load-path "~/.emacs.d/config")
;; (add-to-list 'load-path "~/.emacs.d/twit")  ; Save directory

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
(require 'my-helm)
;(require 'my-woman)
;(require 'my-comint)
;(require 'my-unbound-keys)
(require 'my-languages)
(require 'my-snippets)
;(require 'my-shell)
;(require 'my-filetypes)
;(require 'my-term)
;;(require 'my-magit)
;;(require 'my-android)
;;(require 'my-eshell)
;;(require 'my-ielm)
;;(require 'my-package-list)
(require 'my-evil)
;(require 'my-help)
;(require 'my-god)
;(require 'my-sessions)
(require 'my-leader-keys)
;(require 'my-ibuffer)

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


;; org-agenda stuff, TODO: clean up
;; (add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
;; (global-set-key "\C-cl" 'org-store-link)
;; (global-set-key "\C-ca" 'org-agenda)

;; (setq org-agenda-files (list "~/Desktop/Dropbox/org/"))
;; (global-font-lock-mode 1)  
;; (setq org-directory "~/org/")
;;  (setq org-default-notes-file "~/org/newgtd.org")
;;  (setq remember-annotation-functions '(org-remember-annotation))
;;  (setq remember-handler-functions '(org-remember-handler))
;;  (add-hook 'remember-mode-hook 'org-remember-apply-template)
;;  (define-key global-map "\C-cr" 'org-remember)
;; (setq org-remember-templates
;;     (("Todo" ?t "* TODO %^{Brief Description} %^g\nAdded: %U" 
;; 	"~/org/newgtd.org" "Tasks")
;;     )

;; basic syntax for now 
;; (setq-default tab-width 4 indent-tabs-mode nil)
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


(setq backup-directory-alist '(("." . "~/.emacs.d/emacs-backup"))
  backup-by-copying t    ; Don't delink hardlinks
  version-control t      ; Use version numbers on backups
  delete-old-versions t  ; Automatically delete excess backups
  kept-new-versions 20   ; how many of the newest versions to keep
  kept-old-versions 5    ; and how many of the old
  )

(setq make-backup-files nil)

;; (use-package twittering-mode
;;   :ensure twittering-mode
;;   ;; :config
;;   ;; (progn
;;   ;;   )
;;   )


(provide 'init)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
