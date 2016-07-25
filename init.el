(add-to-list 'load-path (concat user-emacs-directory "config"))
(add-to-list 'load-path (concat user-emacs-directory "config" "/languages"))
(add-to-list 'load-path (concat user-emacs-directory "config" "/web-mode"))

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
(load-theme 'solarized-dark)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)
;; toolbar
(tool-bar-mode -1)
;; (menu-bar-mode -1)
(scroll-bar-mode -1)

(set-default-font "Consolas-15")


(require 'use-package)
(add-to-list 'load-path "~/.emacs.d/config")
;; (add-to-list 'load-path "~/.emacs.d/twit")  ; Save directory

(when window-system
(progn
(set-frame-size (selected-frame) 205 75)
;; (split-window-vertically)
(split-window-horizontally)
(enlarge-window 20)))
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

;; Lindsey's computer runs 24.3. magit requires 24.4.
(if (>= emacs-major-version 24.4)  
(require 'my-magit)
(require 'my-multi-term)
)
;; no startup msg  
(setq inhibit-startup-message t)        ; Disable startup message 

;; (setq backup-directory-alist '(("." . "~/.emacs.d/emacs-backup"))
;;   ;; backup-by-copying t    ; Don't delink hardlinks
;;   version-control t      ; Use version numbers on backups
;;   delete-old-versions t  ; Automatically delete excess backups
;;   kept-new-versions 20   ; how many of the newest versions to keep
;;       kept-old-versions 5    ; and how many of the old
;;   )

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(evil-shift-width 4)
 '(tab-stop-list (number-sequence 4 200 4))
 '(tab-width 4))

(provide 'init)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
