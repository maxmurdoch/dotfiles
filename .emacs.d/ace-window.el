(use-package ace-window
  :ensure t
  :bind ("C-c w" . ace-window)
  :config
  (setq aw-dispatch-always 1)
  (setq aw-keys '(?a ?s ?d ?f ?g ?j ?k ?l ?\;))
  )
