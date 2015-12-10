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
(global-linum-mode 1)

(set-background-color "black")
(set-face-background hl-line-face "color-18")
(set-face-background 'linum "black")
(set-face-foreground 'mode-line "brightwhite")
(fringe-mode 10)
