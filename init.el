(require 'magit)

(defvar prelude-dir (file-name-directory user-init-file)
  "Root dir")
(defvar prelude-vendor-dir (expand-file-name "vendor" prelude-dir)
  "Vendor dir")
(defvar prelude-darcula-dir (expand-file-name "emacs-darcula-theme" prelude-vendor-dir)
  "Vendor dir")

(add-to-list 'load-path prelude-darcula-dir)
(require 'darcula-theme)

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
