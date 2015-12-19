;;;; defaults

(set-default 'fill-column 100)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)

;;;; settings

;; set backups
(setq backup-directory-alist '(("." . "~/.emacs.d/backups-files")))
;; (setq auto-save-file-name-transforms
       ;; '((".*" temporary-file-directory t)))
(setq gc-cons-threshold (* 20 1024 1024))
(global-auto-complete-mode t)

(fset 'yes-or-no-p 'y-or-n-p)
(blink-cursor-mode t)
(delete-selection-mode t) ; typing when a word is highlighted deletes the word

(electric-pair-mode 1)
