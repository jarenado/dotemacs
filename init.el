;;; Config
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
(setq tab-width 2) ; or any other preferred value
(defvaralias 'c-basic-offset 'tab-width)
(defvaralias 'cperl-indent-level 'tab-width)

;;TODO clean this shit off
(setq c-basic-offset 2)
(setq css-basic-offset 2)
(setq css-indent-offset 2)
(setq javascript-indent-level 2)
(setq js2-basic-offset 2)
(setq js-indent-level 2)
(setq web-mode-markup-indent-offset 2)
(setq web-mode-code-indent-offset 2)
(setq web-mode-css-indent-offset 2)

;;(global-flycheck-mode)
;; TODO: global flychecking
(with-eval-after-load 'flycheck
  (flycheck-add-mode 'html-tidy 'web-mode)
  (flycheck-add-mode 'css-csslint 'scss-mode))

;; toolbar (or lack thereof
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


(provide 'init)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (yaml-mode yasnippet web-mode use-package simplenote2 rebecca-theme powerline php-mode neotree magit key-chord js2-mode helm-projectile golden-ratio flycheck evil-surround evil-nerd-commenter evil-matchit evil-leader company)))
 '(standard-indent 2))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
