(use-package ruby-mode
  :ensure t
  :defer t
  :mode (
         ("\\.\\(gemspec\\|irbrc\\|gemrc\\|rake\\|rb\\|thor\\)\\'" . ruby-mode)
         ("Gemfile\\(\\.lock\\)?\\|\\(Cap\\|Guard\\|[rR]ake\\|Vagrant\\)file\\'" . ruby-mode)
         )
  :config (progn
            (use-package robe ; code navigation, doc lookup, and completion
              :ensure t
              :diminish "")
            (use-package rspec-mode
              :ensure t
              :diminish ""
              :init
              (setq rspec-use-rake-when-possible nil)
              (setq rspec-use-bundler-when-possible nil) ; only use this if you've set bundler as shown http://hmarr.com/2012/nov/08/rubies-and-bundles/
              (defadvice rspec-compile (around rspec-compile-around)
                "Use BASH shell for running the specs because of ZSH issues."
                (let ((shell-file-name "/bin/bash"))
                  ad-do-it))

              (ad-activate 'rspec-compile)
              )
            (use-package projectile-rails
              :diminish ""
              :ensure t)
            (use-package yard-mode ; adds fonts to yard doc tags
              :ensure t
              :diminish "")
            (use-package ruby-electric ; matching pairs, handles `do`, handles heredocs
              :diminish ""
              :ensure t
              :init
              (ruby-electric-mode)
              (electric-pair-mode)
              (electric-quote-mode)
              (electric-layout-mode))
            (use-package inf-ruby ; run inferior ruby processes
              :ensure t
              :diminish ""
              :init
              (inf-ruby-switch-setup))
            (setq ruby-insert-encoding-magic-comment nil)
            (use-package ruby-tools
              :ensure t
              :diminish ""
              :init
              (setq ruby-tools-mode t))
            (use-package column-enforce-mode
              :ensure t)
            (use-package ruby-interpolation ; adds {} when it finds a hash in a double quote string
              :ensure t
              :diminish "")
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

;; enable use of hideshow with ruby
(eval-after-load "hideshow"
  '(add-to-list 'hs-special-modes-alist
                 `(ruby-mode
                   ,(rx (or "def" "class" "module" "{" "[")) ; Block start
                   ,(rx (or "}" "]" "end"))                  ; Block end
                   ,(rx (or "#" "=begin"))                   ; Comment start
                   ruby-forward-sexp nil)))
