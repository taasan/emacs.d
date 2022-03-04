;; GIT
(require 'magit)

(defvar taasan-dir (file-name-directory user-init-file)
  "Root dir")

(defvar taasan-lisp-dir (expand-file-name "lisp" taasan-dir)
  "Lisp dir")

(add-to-list 'load-path taasan-lisp-dir)

;; Add vendor/* to load-path
(defvar taasan-vendor-dir (expand-file-name "vendor" taasan-dir)
  "Vendor dir")
(let ((default-directory taasan-vendor-dir))
  (normal-top-level-add-subdirs-to-load-path))

;; Theme
(require 'darcula-theme)

;; Keybindings
(require 'taasan-mode)
(taasan-mode t)

;; TODO: use custom.el
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("3f1dcd824a683e0ab194b3a1daac18a923eed4dba5269eecb050c718ab4d5a26" default))
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(load-theme 'darcula)

(unless (display-graphic-p)
  (menu-bar-mode -1))
