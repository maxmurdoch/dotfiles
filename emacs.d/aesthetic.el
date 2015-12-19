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

; window-system == GUI
(if (display-graphic-p)
    (progn
      (load-theme 'solarized t)))
