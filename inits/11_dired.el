(use-package dired
  :init
  (put 'dired-find-alternate-file 'disabled nil)
  (define-key dired-mode-map (kbd "C-t") 'other-window))
