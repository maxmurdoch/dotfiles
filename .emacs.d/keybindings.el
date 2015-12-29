(global-set-key (kbd "C-c w") 'ace-window)
(global-set-key (kbd "C-;") 'avy-goto-char)
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "M-/") 'hippie-expand)
;; Allow hash to be entered
(global-set-key (kbd "M-3") '(lambda () (interactive) (insert "#")))
