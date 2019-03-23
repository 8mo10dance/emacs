(use-package ruby-mode
  :mode (("\\.rb\\'" . ruby-mode)
         ("\\.schema\\'" . ruby-mode))
  :custom
  ;; disable magic comments such as "coding: utf-8"
  (ruby-insert-encoding-magic-comment nil))

(use-package ruby-electric-mode
  :hook ruby-mode)

;; rails ide
(use-package rinari
  :init
  (add-hook 'ruby-mode-hook 'rinari-minor-mode))
