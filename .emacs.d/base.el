;;;; defaults

(setq-default fill-column 100)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq inhibit-startup-message t)
(fset 'yes-or-no-p 'y-or-n-p) ; use y or n rather than yes or no in interactive dialogs

;;;; settings

;; set backups
(setq backup-directory-alist '(("." . "~/.emacs.d/backups-files")))
(make-directory "~/.emacs.d/autosaves/" t) ; create the autosave dir if necessary, since emacs won't.
(setq auto-save-file-name-transforms '((".*" "~/.emacs.d/autosaves/\\1" t)))

(setq gc-cons-threshold (* 20 1024 1024))

(setq-default global-auto-complete-mode t)
(setq custom-file "~/.emacs.d/custom.el") ; save custom variables in a specific file, not .emacs

(blink-cursor-mode t)
(delete-selection-mode t) ; typing when a word is highlighted deletes the word
(electric-pair-mode 1)
(setq visible-bell 1)
(setq ring-bell-function 'ignore)

;; use utf-8
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
