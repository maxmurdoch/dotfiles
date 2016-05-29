(use-package markdown-mode
  :ensure t
  :config
  (setq-default fill-column 80)
  (typo-mode)
  (setq-default typo-language "English")
  (flyspell-mode)
  (turn-on-auto-fill))
