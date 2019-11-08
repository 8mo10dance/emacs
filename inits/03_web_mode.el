(use-package web-mode
  :mode (("\\.jsx?\\'" . web-mode)
         ("\\.tsx?\\'" . web-mode)
         ("\\.jsp\\'" . web-mode)
         ("\\.erb\\'" . web-mode)
         ("\\.scss\\'" . web-mode)
         ("\\.nghtml\\'" . web-mode))
  :init
  (add-hook 'web-mode-hook #'(lambda ()
                               (enable-minor-mode
                                '("\\.jsx?\\'" . prettier-js-mode))))
  (add-hook 'web-mode-hook #'(lambda ()
                               (enable-minor-mode
                                '("\\.tsx?\\'" . prettier-js-mode))))
  (add-hook 'web-mode-hook
            (lambda ()
              (flycheck-add-mode 'javascript-eslint 'web-mode)
              (flycheck-mode t)))
  :config
  (setq web-mode-markup-indent-offset 2))

;; Web-mode is a popular mode for editing .js and .jsx files, but it is used to edit other template files too. If you want to hook prettier-js to web-mode for .js and .jsx files only, you can define a helper function like this:
(defun enable-minor-mode (my-pair)
  "Enable minor mode if filename match the regexp.  MY-PAIR is a cons cell (regexp . minor-mode)."
  (if (buffer-file-name)
      (if (string-match (car my-pair) buffer-file-name)
	  (funcall (cdr my-pair)))))
