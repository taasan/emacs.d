;;; taasan-editor.el --- Emacs Prelude: enhanced core editing experience.
;;
;; Copyright © 2011-2021 Bozhidar Batsov
;;
;; Stolen from https://github.com/bbatsov/prelude

;; This file is not part of GNU Emacs.

;;; Commentary:

;; Refinements of the core editing experience in Emacs.

;;; License:

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License
;; as published by the Free Software Foundation; either version 3
;; of the License, or (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Code:

(require 'crux)

(defvar taasan-mode-map
  (let ((map (make-sparse-keymap)))
    (define-key map (kbd "C-c o") 'crux-open-with)
    (define-key map (kbd "C-a") 'crux-move-beginning-of-line)
    (define-key map [(shift return)] 'crux-smart-open-line)
    (define-key map (kbd "M-o") 'crux-smart-open-line)
    (define-key map [(control shift return)] 'crux-smart-open-line-above)
    (define-key map (kbd "C-c n") 'crux-cleanup-buffer-or-region)
    (define-key map (kbd "C-c f")  'crux-recentf-find-file)
    (define-key map (kbd "C-M-z") 'crux-indent-defun)
    (define-key map (kbd "C-c u") 'crux-view-url)
    (define-key map (kbd "C-c e") 'crux-eval-and-replace)
    (define-key map (kbd "C-c s") 'crux-swap-windows)
    (define-key map (kbd "C-c D") 'crux-delete-file-and-buffer)
    (define-key map (kbd "C-c d") 'crux-duplicate-current-line-or-region)
    (define-key map (kbd "C-c M-d") 'crux-duplicate-and-comment-current-line-or-region)
    (define-key map (kbd "C-c r") 'crux-rename-buffer-and-file)
    (define-key map (kbd "C-c t") 'crux-visit-term-buffer)
    (define-key map (kbd "C-c k") 'crux-kill-other-buffers)
    (define-key map (kbd "C-c TAB") 'crux-indent-rigidly-and-copy-to-clipboard)
    (define-key map (kbd "C-c I") 'crux-find-user-init-file)
    (define-key map (kbd "C-c S") 'crux-find-shell-init-file)
    map)
  "Keymap for taasan mode.")

;; define minor mode
(define-minor-mode taasan-mode
  "Minor mode to consolidate Emacs Prelude extensions.

\\{taasan-mode-map}"
  :lighter " taa"
  :keymap taasan-mode-map
  :global t)

(provide 'taasan-mode)
;; taasan-mode.el ends here
