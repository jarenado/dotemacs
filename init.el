(add-to-list 'load-path (concat user-emacs-directory "config"))
(add-to-list 'load-path (concat user-emacs-directory "config" "/languages"))
(add-to-list 'load-path (concat user-emacs-directory "config" "/web-mode"))
(add-to-list 'exec-path "~/bin")

(setq package-archives '(("melpa" . "http://melpa.milkbox.net/packages/")
                        ("org" . "http://orgmode.org/elpa/")
                        ("gnu" . "http://elpa.gnu.org/packages/")))


(require 'package)
(package-initialize)
(setq package-enable-at-startup nil)

(unless (package-installed-p 'use-package)
(package-refresh-contents)
(package-install 'use-package))

;; use my init only
(setq inhibit-default-init t)

;; disable auto-save and auto-backup
(setq auto-save-default nil)
(setq make-backup-files nil)

;; theme stuff
;;(load-theme 'solarized-light)
;; (load-theme 'solarized-dark t)
(load-theme 'rebecca t)

;;Turn of the fucking bell
(setq visible-bell nil) ;; The default
(setq ring-bell-function 'ignore)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
;; (setq indent-line-function 'insert-tab)
;; toolbar
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(require 'use-package)
(add-to-list 'load-path "~/.emacs.d/config")

(when window-system
(progn
(set-frame-size (selected-frame) 205 75)
(split-window-horizontally)
(enlarge-window 20)))

;; default browser
(setq browse-url-browser-function 'browse-url-chromium) ; google's browser

;(require 'my-env)
;(require 'my-core)
;(require 'my-dired)
;(require 'my-bookmarks)
;(require 'my-filetypes)
;(require 'my-term)
;;(require 'my-magit)
;;(require 'my-package-list)
;(require 'my-ibuffer)
(require 'my-eyecandy)
(require 'my-helm)
(require 'my-languages)
(require 'my-snippets)
(require 'my-org-mode)
(require 'my-evil)
(require 'my-undo-tree)
;; (require 'my-slime)
(require 'my-leader-keys)
(require 'my-web-mode)
(require 'my-indent)
(require 'my-simplenote)
(require 'my-scratch-message)
(require 'my-company-mode)
(require 'my-golden-ratio)
(require 'my-neotree)


;; Lindsey's computer runs 24.3. magit requires 24.4.
(if (>= emacs-major-version 24.4)  
  (require 'my-magit)
  (require 'my-multi-term)
(set-default-font "Fira-Code-15")
)
;; no startup msg  
;; (setq inhibit-startup-message t)        ; Disable startup message 

;; (setq backup-directory-alist '(("." . "~/.emacs.d/emacs-backup"))
;;   ;; backup-by-copying t    ; Don't delink hardlinks
;;   version-control t      ; Use version numbers on backups
;;   delete-old-versions t  ; Automatically delete excess backups
;;   kept-new-versions 20   ; how many of the newest versions to keep
;;       kept-old-versions 5    ; and how many of the old
;;   )

;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(custom-safe-themes
;;    (quote
;;     ("d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
;;  '(evil-shift-width 2)
;;  '(tab-stop-list (number-sequence 2 200 2))
;;  '(tab-width 2))

(provide 'init)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(org-agenda-files (quote ("~/org/notes.org")))
 '(package-selected-packages
   (quote
    (rebecca-theme magit neotree golden-ratio company yasnippet web-mode use-package solarized-theme simplenote2 powerline php-mode key-chord js2-mode helm-projectile evil-surround evil-nerd-commenter evil-matchit evil-leader)))
 '(safe-local-variable-values
   (quote
    ((eval add-hook
           (quote after-save-hook)
           (quote simplenote2-push-buffer))))))
