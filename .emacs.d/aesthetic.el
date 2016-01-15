; reduce clutter
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

; always have a hl bar
(global-hl-line-mode t)

(transient-mark-mode 't)
(delete-selection-mode t)
(setq x-select-enable-clipboard t)

(column-number-mode t)
(use-package relative-line-numbers
  :ensure t
  :init
  (linum-mode -1)
  (global-relative-line-numbers-mode))

(set-fringe-mode 0)

(use-package base16-theme
  :ensure t
  :init
  (load-theme 'base16-tomorrow-light t) ; t means it won't confirm when loading the theme
  )

(set-face-background 'hl-line "gray93")
(set-face-background 'linum "gray93")
(set-face-background 'region "gray80")
(use-package indent-guide
  :ensure t
  :init
  (setq indent-guide-mode t))
