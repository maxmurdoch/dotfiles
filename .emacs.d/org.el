(use-package org
  :ensure t
  :bind
  ("C-c u" . org-do-promote)
  ("C-c c" . org-capture)
  :init
  (turn-on-auto-fill)
  (setq fill-column 70)
  (setq org-hide-leading-stars t))

;; Basic settings

(setq org-directory "~/org")
(setq org-log-done 'time)
(setq org-agenda-files (list "~/org/gocardless.org" "~/org/personal.org" "~/org/todo.org"))

;; Todo

 (setq org-todo-keywords
       '((sequence "TODO" "STARTED" "WAITING" "|" "DONE")))

(setq org-todo-keyword-faces
      '(("TODO" . (:foreground "IndianRed2" :weight bold))
        ("STARTED" . (:foreground "goldenrod2" :weight bold))
        ("WAITING" . (:foreground "CadetBlue3" :weight bold))
        ("DONE" . (:foreground "SeaGreen3" :weight bold))))

;; Capture

(setq org-default-notes-file (concat org-directory "/notes.org"))

;; Functions

(defun todo ()
  (interactive)
  (find-file (concat org-directory "/todo.org")))

(defun gocardless ()
  (interactive)
  (find-file (concat org-directory "/gocardless.org")))

(defun personal ()
  (interactive)
  (find-file (concat org-directory "/personal.org")))
