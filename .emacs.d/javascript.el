(use-package js2-mode
  :ensure t
  :init
  (setq js-indent-level 2)
  :config
  (rainbow-delimiters-mode-enable)
  (indent-guide-mode))
