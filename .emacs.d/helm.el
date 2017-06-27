(use-package helm
  :ensure t
  :diminish ""
  :bind
  (
   ("C-c h" . helm-mini)
   ("M-x" . helm-M-x)
   ("M-y" . helm-show-kill-ring)
   ("C-c f" . helm-recentf)
   ("C-x C-f" . helm-find-files)
   ("C-c <SPC>" . helm-all-mark-rings)
   ("C-c s" . helm-occur)
   ("C-h C-f" . helm-apropos)
   ("C-c C-w o" . helm-man-woman)
   ("M-g a" . helm-do-grep-ag)
   )
  :config
  (helm-mode 1)
  )

(use-package helm-ag)
(use-package helm-company)
