;; reduce clutter

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(global-linum-mode -1) ; use line number in menu bar instead of in the margin
(setq-default cursor-type 'bar) ; use a bar cursor rather than a box
; if you have a selection and you start typing, replace the selection
; with new characters
(delete-selection-mode t)

;; add space

(set-window-margins nil 1 1)
(set-fringe-mode 0)

;; add theme

(use-package base16-theme
  :init (load-theme 'base16-flat t) ; t means it won't confirm when loading the theme
  )

;; use indent guides all the time
(use-package indent-guide
  :ensure t
  :diminish indent-guide-mode
  :init
  (indent-guide-global-mode))

;; match parentheses
(use-package smartparens
  :init
  (turn-on-show-smartparens-mode))

;; rainbow delimiters
(use-package rainbow-delimiters)
