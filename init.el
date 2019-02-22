(package-initialize)

(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/") t)

(require 'cask "~/.cask/cask.el")
(cask-initialize)

(init-loader-load)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; other window
(define-key global-map (kbd "C-t") 'other-window)
(require 'dired)
(define-key dired-mode-map (kbd "C-t") 'other-window)

;; 行番号表示
(global-linum-mode t)
(put 'upcase-region 'disabled nil)

;; disabled tab
(setq-default indent-tabs-mode nil)

;; removing unnecessary spaces
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; magit
(global-set-key (kbd "C-x g") 'magit-status)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
