(use-package js
  :ensure t
  :mode ("\\.\\(js\\|jsx\\)\\'" . js-mode)
  :config
  (setq js-indent-level 2)
  (setq-local fill-column 120)
  (size-indication-mode -1) ; don't show buffer size in mode line
  (column-enforce-n 120))
