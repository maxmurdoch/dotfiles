(use-package avy
             :ensure t
             :defer t)

(use-package avy-zap
             :ensure t)

(use-package ace-window
             :ensure t
             :config
             (setq aw-dispatch-always 1)
             (setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l)))