(use-package projectile
  :ensure t
  :diminish ""
  :init
  (projectile-global-mode)
  :config
  (setq projectile-completion-system 'helm)
  (use-package helm-projectile
    :ensure t)
  ;; Index when idle
  (setq projectile-enable-idle-timer t)
  (setq projectile-enable-caching t)
  (setq projectile-tags-command "ctags -Re -f \"%s\" %s")
  (setq tags-revert-without-query 1) ; don't ask to read new tags table when it refreshes
  (helm-projectile-on))
