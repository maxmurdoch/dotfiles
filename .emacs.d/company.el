(use-package company
  :ensure t
  :defer t
  :config
  (setq global-auto-complete-mode 1)
  (setq company-tooltip-limit 20)
  (setq company-idle-delay .1)
  (setq company-echo-delay 0)
  (setq company-begin-commands '(self-insert-command)))
