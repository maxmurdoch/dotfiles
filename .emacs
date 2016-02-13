(require 'package)
; don't activate packages yet
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)

(load "~/.emacs.d/base.el")
(load "~/.emacs.d/org.el")
(load "~/.emacs.d/lisps.el")
(load "~/.emacs.d/web.el")
(load "~/.emacs.d/diminish.el")
(load "~/.emacs.d/exec-path.el")
(load "~/.emacs.d/custom.el")
(load "~/.emacs.d/aesthetic.el")
(load "~/.emacs.d/company.el")
(load "~/.emacs.d/hooks.el")
(load "~/.emacs.d/typography.el")
(load "~/.emacs.d/avy.el")
(load "~/.emacs.d/ruby.el")
(load "~/.emacs.d/css.el")
(load "~/.emacs.d/javascript.el")
(load "~/.emacs.d/helm.el")
(load "~/.emacs.d/projectile.el")
(load "~/.emacs.d/flycheck.el")
(load "~/.emacs.d/magit.el")
(load "~/.emacs.d/keybindings.el")
(load "~/.emacs.d/smart-mode-line.el")
