(use-package exec-path-from-shell
  :ensure t
  :config
  (progn
    (exec-path-from-shell-copy-env "PATH")))
