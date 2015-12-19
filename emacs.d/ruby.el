(use-package ruby-mode
  :ensure t
  :defer t
  :mode (("\\.\\(gemspec\\|irbrc\\|gemrc\\|rake\\|rb\\|thor\\)\\'" . ruby-mode)
         ("Gemfile\\(\\.lock\\)?\\|\\(Cap\\|Guard\\|[rR]ake\\|Vagrant\\)file\\'" . ruby-mode))
  :config (progn
            (use-package robe ; code navigation, doc lookup, and completion
              :ensure t
              :diminish robe-mode)
            (use-package rspec-mode
              :ensure t
              :init
              (setq rspec-use-rake-when-possible nil))
            (use-package projectile-rails
              :ensure t)
            (use-package yard-mode ; adds fonts to yard doc tags
              :ensure t
              :diminish yard-mode)
            (use-package ruby-end ; adds ruby end blocks
              :ensure t)
            (use-package ruby-electric ; matching pairs, handles `do`, handles heredocs
              :ensure t)
            (use-package inf-ruby ; run inferior ruby processes
              :ensure t
              :init
              (inf-ruby-switch-setup))
            (setq ruby-insert-encoding-magic-comment nil)
            (use-package column-enforce-mode
              :ensure t)
            (use-package ruby-interpolation ; adds {} when it finds a hash in a double quote string
              :ensure t
              :diminish ruby-interpolation-mode)
            (add-hook 'ruby-mode-hook
                      (lambda ()
                        (column-enforce-mode)
                        (column-enforce-n 90)
                        (projectile-rails-on)))))

(use-package rbenv
  :ensure t
  :defer t)
