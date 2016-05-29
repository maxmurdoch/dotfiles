(use-package org
  :ensure t
  :init
  (turn-on-auto-fill)
  (setq-default fill-column 80)
  (typo-mode)
  (setq-default typo-language "English")
  (flyspell-mode)
  (setq org-hide-leading-stars t)
  :bind (
         ("C-c l" . org-store-link)
         ("C-c a" . org-agenda)
         ("C-c u" . org-do-promote)
         ("C-c c" . org-capture)
         )
  )




;; basic settings

(setq org-directory "~/notes")
(setq org-log-done 'time)
(setq org-agenda-files (list "~/notes"))

;; todo

(setq org-todo-keywords
      '((sequence "todo(t!)" "started(s!)" "waiting(w@/!)" "|" "done(d@/!)" "snoozed(S!)" "cancelled(c!)")))

(setq org-todo-keyword-faces
      '(("todo" . (:foreground "IndianRed2" :weight bold))
        ("started" . (:foreground "goldenrod2" :weight bold))
        ("waiting" . (:foreground "CadetBlue3" :weight bold))
        ("snoozed" . (:foreground "gray79" :weight bold))
        ("done" . (:foreground "SeaGreen3" :weight bold))
        ("cancelled" . (:foreground "IndianRed3" :weight bold))))

;; capture

(setq org-default-notes-file (concat org-directory "/notes.org"))
(setq org-capture-templates
      '(("t" "todo" entry (file+headline "~/notes/todo.org" "To be sorted")
         "* todo %?\n %i\n %a")
        ("j" "Journal" entry (file+datetree "~/notes/journal.org")
         "* %?\nEntered on %U\n %i\n %a")))
