(add-hook 'text-mode-hook 'turn-on-auto-fill)
(add-hook 'org-mode-hook 'org-mode-settings)

(defun org-mode-settings ()
  (setq turn-on-auto-fill)
  (setq fill-column 70))
