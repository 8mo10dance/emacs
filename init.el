(package-initialize)

(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/") t)

(require 'cask "~/.cask/cask.el")
(cask-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(use-package init-loader
  :ensure t
  :config
  (init-loader-load "~/.emacs.d/inits"))

(exec-path-from-shell-initialize)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; appearance
(tool-bar-mode 0)
(menu-bar-mode 0)
(add-to-list 'default-frame-alist '(font . "Cica-16"))

;; language
(set-language-environment "Japanese")
(setq default-input-method "japanese-mozc")
(prefer-coding-system 'utf-8)

;; other window using arrow keys
(windmove-default-keybindings)

(define-key global-map (kbd "C-t") 'other-window)

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
;; ignore ring bell
(setq ring-bell-function 'ignore)

;; set default derectory
(setq default-directory "~/")
(setq command-line-default-directory "~/")

;; 日本語関連
(setenv "LANG" "ja_JP.UTF-8")

(require 'flycheck)

(add-hook 'term-mode-hook
    (lambda()
      (global-unset-key (kbd "C-r"))
;	    (local-unset-key (kbd "C-r"))
      (message "%s" "This is in term mode and hook enabled.")
))
