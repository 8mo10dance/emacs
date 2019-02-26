(require 'dired)
(put 'dired-find-alternate-file 'disabled nil)

;; select another window
(define-key dired-mode-map (kbd "C-t") 'other-window)
