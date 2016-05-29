(use-package smart-mode-line
  :ensure t
  :config
  (size-indication-mode -1) ; don't show buffer size in mode line
  (setq sml/theme 'respectful)
  (sml/setup))
