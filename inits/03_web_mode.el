(setq auto-mode-alist
      (append '(("\\.jsx?$" . web-mode))
	      auto-mode-alist))
(setq auto-mode-alist
      (append '(("\\.tsx?$" . web-mode))
	      auto-mode-alist))
(setq auto-mode-alist
      (append '(("\\.jsp$'" . web-mode))
	      auto-mode-alist))
(setq auto-mode-alist
      (append '(("\\.erb$'" . web-mode))
	      auto-mode-alist))
(setq auto-mode-alist
      (append '(("\\.scss$" . web-mode))
	      auto-mode-alist))

;; Web-mode is a popular mode for editing .js and .jsx files, but it is used to edit other template files too. If you want to hook prettier-js to web-mode for .js and .jsx files only, you can define a helper function like this: 
(defun enable-minor-mode (my-pair)
  "Enable minor mode if filename match the regexp.  MY-PAIR is a cons cell (regexp . minor-mode)."
  (if (buffer-file-name)
      (if (string-match (car my-pair) buffer-file-name)
	  (funcall (cdr my-pair)))))

(add-hook 'web-mode-hook #'(lambda ()
                            (enable-minor-mode
                             '("\\.jsx?\\'" . prettier-js-mode))))
(add-hook 'web-mode-hook #'(lambda ()
                            (enable-minor-mode
                             '("\\.tsx?\\'" . prettier-js-mode))))
