(package-initialize)

(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/") t)

(require 'cask)
(cask-initialize)

(init-loader-load)

;; load-path
(defun add-to-load-path (&rest paths) ;; &restは引数のリストをまとめて関数に渡す
  (let (path)
    (dolist (path paths paths)
      (let ((default-directory
	      (expand-file-name (concat user-emacs-directory path))))
	(add-to-list 'load-path default-directory)
	(if (fboundp 'normal-top-level-add-subdirs-to-load-path)
	    (normal-top-level-add-subdirs-to-load-path))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; other window
(define-key global-map (kbd "C-t") 'other-window)
(require 'dired)
(define-key dired-mode-map (kbd "C-t") 'other-window)

;; 行番号表示
(global-linum-mode t)
(put 'upcase-region 'disabled nil)
