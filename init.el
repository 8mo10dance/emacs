(package-initialize)

(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/") t)

(require 'cask "~/.cask/cask.el")
(cask-initialize)

(init-loader-load)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; appearance
(tool-bar-mode 0)
(menu-bar-mode 0)
(when (eq system-type 'gnu/linux)
  (add-to-list 'default-frame-alist
               '(font . "Ricty-18")))

;; language
(set-language-environment "Japanese")
(setq default-input-method "japanese-mozc")
(prefer-coding-system 'utf-8)

;; other window using arrow keys
(windmove-default-keybindings)

;; 行番号表示
(global-linum-mode t)
(put 'upcase-region 'disabled nil)

;; disabled tab
(setq-default indent-tabs-mode nil)

;; removing unnecessary spaces
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; show fill path opening on title
(setq frame-title-format "%f")

;; auto revert buffer
(global-auto-revert-mode 1)

;; set default derectory
(setq default-directory "~/")
(setq command-line-default-directory "~/")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; set default derectory
(setq default-directory "~/")
(setq command-line-default-directory "~/")

;; 日本語関連
(setenv "LANG" "ja_JP.UTF-8")
