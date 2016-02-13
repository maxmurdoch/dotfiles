(use-package scheme-complete
  :ensure t
  :defer t)

(use-package geiser
  :ensure t
  :defer t
  :config
  (use-package ac-geiser
    :ensure t))
