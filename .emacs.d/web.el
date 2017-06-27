(use-package web-mode
  :init (add-to-list 'auto-mode-alist '("\\.html$" . web-mode)))

(defun web-mode-settings ()
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-code-indent-offset 2))

(add-hook 'web-mode-hook 'web-mode-settings)
