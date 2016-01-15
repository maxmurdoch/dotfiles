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
              (setq rspec-use-rake-when-possible nil)
              (setq rspec-use-bundler-when-possible nil) ; only use this if you've set bundler as shown http://hmarr.com/2012/nov/08/rubies-and-bundles/
              )
            (use-package projectile-rails
              :ensure t)
            (use-package yard-mode ; adds fonts to yard doc tags
              :ensure t
              :diminish yard-mode)
            (use-package ruby-electric ; matching pairs, handles `do`, handles heredocs
              :ensure t
              :init
              (ruby-electric-mode)
              (electric-pair-mode)
              (electric-quote-mode)
              (electric-layout-mode))
            (use-package inf-ruby ; run inferior ruby processes
              :ensure t
              :init
              (inf-ruby-switch-setup))
            (setq ruby-insert-encoding-magic-comment nil)
            (use-package ruby-tools
              :ensure t
              :init
              (setq ruby-tools-mode t))
            (use-package column-enforce-mode
              :ensure t)
            (use-package ruby-interpolation ; adds {} when it finds a hash in a double quote string
              :ensure t
              :diminish ruby-interpolation-mode)
            (add-hook 'ruby-mode-hook
                      (lambda ()
                        (column-enforce-mode)
                        (column-enforce-n 90)
                        (projectile-rails-on)
                        (indent-guide-mode)
                        (rainbow-delimiters-mode-enable)
                        ))))

(use-package rbenv
  :ensure t
  :defer t)
