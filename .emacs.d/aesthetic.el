; reduce clutter
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

; always have a hl bar
(global-hl-line-mode t)

(transient-mark-mode 't)
(delete-selection-mode t)
(setq left-margin-width 3)
(setq right-margin-width 3)
(setq x-select-enable-clipboard t)
(set-face-attribute 'fringe nil :background "gray100")

(use-package base16-theme
  :ensure t
  :init
  (load-theme 'base16-tomorrow-light t) ; t means it won't confirm when loading the theme
  (line-number-mode)
  (column-number-mode))

(set-face-background 'hl-line "gray93")
(set-face-background 'region "gray80")

(use-package indent-guide
  :ensure t
  :diminish indent-guide-mode
  :init
  (setq indent-guide-mode t))
