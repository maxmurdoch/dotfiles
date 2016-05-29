(use-package deft
  :ensure t
  :config
  (setq deft-default-extension "org")
  (setq deft-directory "~/notes")
  (setq deft-recursive t)
  (setq deft-use-filename-as-title t)
  (setq deft-use-filter-string-for-filename t)
  (setq deft-auto-save-interval 3.0)
  :bind ("C-c d" . deft))
