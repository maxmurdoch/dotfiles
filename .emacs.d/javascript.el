(use-package js2-mode
  :ensure t
  :mode ("\\.\\(js\\|jsx\\)\\'" . js2-mode)
  :init
  (setq js-indent-level 2)
  (setq-default js2-basic-offset 2)
  :config
  (add-hook 'javascript-mode-hook
          (lambda ()
            (column-enforce-n 120)
            (rainbow-delimiters-mode-enable)
            (indent-guide-mode))))
