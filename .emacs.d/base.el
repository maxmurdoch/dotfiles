;;;; defaults

(set-default 'fill-column 100)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)

;;;; settings

;; set backups
(setq backup-directory-alist '(("." . "~/.emacs.d/backups-files")))
(setq gc-cons-threshold (* 20 1024 1024))

(setq global-auto-complete-mode t)
(setq custom-file "~/.emacs.d/custom.el") ; save custom variables in a specific file, not .emacs


(fset 'yes-or-no-p 'y-or-n-p) ; use y or n rather than yes or no in interactive dialogs

(blink-cursor-mode t)
(delete-selection-mode t) ; typing when a word is highlighted deletes the word
(electric-pair-mode 1)
(setq visible-bell t)
