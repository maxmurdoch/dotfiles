(add-hook 'before-save-hook (lambda ()
                              (whitespace-cleanup)))

;; add 1 column of horizontal margins to every new buffer
(add-hook 'buffer-list-update-hook
          (lambda ()
            (set-window-margins (car (get-buffer-window-list
                                      (current-buffer) nil t)) 1 1)))

;; use rainbow delimiters in all programming modes
(add-hook 'prog-mode-hook
          (lambda ()
            (progn
              (rainbow-delimiters-mode)
              (typo-mode -1))
            ))
