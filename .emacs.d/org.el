(use-package org
  :ensure t
  :init
  (turn-on-auto-fill)
  (setq-default fill-column 80)
  (typo-mode)
  (setq-default typo-language "English")
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

;; tags

(setq org-tag-alist '(("@reading" . ?r)
                      ("@writing" . ?w)
                      ("@murdoch-studio" . ?b)
                      ("@design" . ?d)
                      ("@health" . ?h)
                      ("@programming" . ?p)
                      ("@productivity". ?P)
                      ("@experience" . ?e)
                      ("@maths-builder" . ?m)
                      ("@code-at-uni" . ?c)))

;; capture

(setq org-default-notes-file (concat org-directory "/notes.org"))
(setq org-capture-templates
      '(("t" "todo" entry (file "~/notes/todo.org")
         "* todo %?\n %i\n %T")
        ("j" "journal" entry (file+datetree "~/notes/journal.org")
         "* %?\nEntered on %U\n %i\n %a")))
