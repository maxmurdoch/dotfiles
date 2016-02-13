(use-package neotree
  :ensure t
  :bind ("C-c t" . neotree-toggle))

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
  (helm-projectile-on))