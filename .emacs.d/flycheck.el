(use-package flycheck
  :ensure t
  :config
  (global-flycheck-mode)
  (setq flycheck-disabled-checkers '(javascript-jshint))
  (setq flycheck-checkers '(javascript-eslint)))
