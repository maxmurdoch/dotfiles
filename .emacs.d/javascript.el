(use-package js2-mode
  :ensure t
  :mode ("\\.\\(js\\|jsx\\)\\'" . js2-jsx-mode)
  :config
  ;; (setq js3-auto-indent-p t)         ; it's nice for commas to right themselves.
  ;; (setq js3-enter-indents-newline t) ; don't need to push tab before typing
  ;; (setq js3-indent-on-enter-key t)   ; fix indenting before moving on
  ;; (setq js3-indent-level 4)
  ;; (js3-mode-hide-warnings-and-errors)
  (setq js2-basic-offset 2)
  (js2-mode-hide-warnings-and-errors)
  (flyspell-mode-off)
  (setq js2-bounce-indent-p t)
  (setq-local fill-column 120)
  (electric-pair-mode 0)
  (rainbow-delimiters-mode))

(use-package column-enforce-mode
  :init
  (column-enforce-n 120))
