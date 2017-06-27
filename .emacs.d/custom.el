(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#1d1f21" "#cc6666" "#b5bd68" "#f0c674" "#81a2be" "#b294bb" "#81a2be" "#c5c8c6"])
 '(ansi-term-color-vector
   [unspecified "#1d1f21" "#cc6666" "#b5bd68" "#f0c674" "#81a2be" "#b294bb" "#81a2be" "#c5c8c6"] t)
 '(column-number-mode t)
 '(custom-safe-themes
   (quote
    ("25c242b3c808f38b0389879b9cba325fb1fa81a0a5e61ac7cae8da9a32e2811b" "60e09d2e58343186a59d9ed52a9b13d822a174b33f20bdc1d4abb86e6b17f45b" "36746ad57649893434c443567cb3831828df33232a7790d232df6f5908263692" "2a998a3b66a0a6068bcb8b53cd3b519d230dd1527b07232e54c8b9d84061d48d" "93268bf5365f22c685550a3cbb8c687a1211e827edc76ce7be3c4bd764054bad" "cea3ec09c821b7eaf235882e6555c3ffa2fd23de92459751e18f26ad035d2142" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "b9183de9666c3a16a7ffa7faaa8e9941b8d0ab50f9aaba1ca49f2f3aec7e3be9" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "232f715279fc131ed4facf6a517b84d23dca145fcc0e09c5e0f90eb534e1680f" "7c1e99f9d46c397b3fd08c7fdd44fe47c4778ab69cc22c344f404204eb471baa" "f2503f0a035c2122984e90eb184185769ee665de5864edc19b339856942d2d2d" "7e346cf2cb6a8324930c9f07ce050e9b7dfae5a315cd8ed3af6bcc94343f8402" "a922c743710bb5d7c14995345549141f01211ff5089057dc718a5a33104c3fd1" "3a3917dbcc6571ef3942c2bf4c4240f70b5c4bc0b28192be6d3f9acd83607a24" default)))
 '(electric-pair-mode t)
 '(emoji-display-mode t)
 '(global-company-mode t)
 '(global-hl-line-mode t)
 '(line-number-mode t)
 '(mode-line-format
   (quote
    ("%e" mode-line-front-space mode-line-mule-info mode-line-client mode-line-modified mode-line-remote mode-line-frame-identification mode-line-buffer-identification sml/pos-id-separator mode-line-position
     (vc-mode vc-mode)
     sml/pre-modes-separator mode-line-modes mode-line-misc-info mode-line-end-spaces)))
 '(mode-line-in-non-selected-windows t)
 '(package-selected-packages
   (quote
    (sass-mode helm-company flyspell-correct-helm yasnippet fountain-mode olivetti org-pomodoro aggressive-indent js3-mode js2-highlight-vars writeroom-mode visual-fill-column deft smart-mode-line elm-mode typo haskell-mode modeline-posn json-mode minimal-theme smart-mode-line-powerline-theme powerline js2-refactor go-mode racket-mode multiple-cursors org-trello ac-geiser geiser scheme-complete restart-emacs exec-path-from-shell helm-ag-r ag focus markdown-mode markdown-preview-mode ctags helm-flx company-flx flx-isearch flx-ido fold-dwim emacsql-sqlite web-mode markdown-mode+ yaml-mode rainbow-delimiters auto-indent-mode indent-guide helm-flyspell goto-last-change ruby-tools ruby-refactor visual-regexp-steroids visual-regexp bundler smartparens paredit js2-mode ruby-interpolation column-enforce-mode ruby-electric yard-mode projectile-rails rspec-mode robe use-package relative-line-numbers rbenv neotree magit helm-projectile helm-dash helm-ag flycheck company base16-theme avy-zap ace-window ac-helm)))
 '(show-paren-mode nil)
 '(show-smartparens-global-mode t)
 '(sml/col-number-format "col %2c")
 '(sml/line-number-format "line %2l")
 '(sml/numbers-separator ", "))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#f9f9f9" :foreground "#7F8C8D" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 190 :width extra-condensed :foundry "nil" :family "Input Mono Narrow"))))
 '(company-preview ((t (:inherit (company-tooltip-selection company-tooltip)))))
 '(company-tooltip ((t (:background "#EEE8D5"))))
 '(fringe ((t (:background "gray100"))))
 '(helm-selection ((t (:background "#F1C40F" :foreground "black" :underline nil))))
 '(helm-selection-line ((t (:background "#F1C40F" :foreground "black"))))
 '(highlight ((t (:background "#ECF0F1"))))
 '(hl-line ((t (:background "gray89"))))
 '(mode-line ((t (:background "#373b41" :inverse-video nil :box (:line-width 5 :color "#2C3E50") :height 1.0))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "#7F8C8D"))))
 '(rainbow-delimiters-depth-9-face ((t (:foreground "#BDC3C7"))))
 '(relative-line-numbers ((t (:inherit linum))))
 '(show-paren-match ((t (:background "#ECF0F1" :foreground "#222" :weight bold))))
 '(show-paren-mismatch ((t (:background "#ECF0F1" :foreground "IndianRed2" :weight bold))))
 '(sp-show-pair-match-face ((t (:background "#ECF0F1" :foreground "black" :weight bold)))))
