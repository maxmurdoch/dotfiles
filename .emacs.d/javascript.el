(use-package js
  :ensure t
  :mode ("\\.\\(js\\|jsx\\)\\'" . js-mode)
  :config
  (setq js-indent-level 2)
  (setq-local fill-column 120)
  (column-enforce-n 120))
