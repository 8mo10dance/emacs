(setq auto-mode-alist
      (append '(("\\.rb\\'" . ruby-mode))
	      auto-mode-alist))
(setq auto-mode-alist
      (append '(("\\.schema\\'" . ruby-mode))
	      auto-mode-alist))

;; disable magic comments such as "coding: utf-8"
(setq ruby-insert-encoding-magic-comment nil)

;; rails ide
(add-hook 'ruby-mode-hook 'rinari-minor-mode)
