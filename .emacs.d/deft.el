(use-package deft
  :ensure t
  :init
  :config
  (setq deft-default-extension "org")
  (setq deft-directory "~/notes")
  (setq deft-recursive t)
  (setq deft-use-filename-as-title t)
  (setq deft-use-filter-string-for-filename t)
  :bind ("C-c d" . deft))
