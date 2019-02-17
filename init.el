(package-initialize)

(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/") t)

(require 'cask "~/.cask/cask.el")
(cask-initialize)

(init-loader-load)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; appearance
(load-theme 'misterioso t)
(set-face-attribute 'default nil :family "Ricty" :height 140)

;; language
(set-language-environment "Japanese")
(setq default-input-method "japanese-mozc")
(prefer-coding-system 'utf-8)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; other window
(define-key global-map (kbd "C-t") 'other-window)
(require 'dired)
(define-key dired-mode-map (kbd "C-t") 'other-window)
(put 'dired-find-alternate-file 'disabled nil)

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
