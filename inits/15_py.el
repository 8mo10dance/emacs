(use-package py-yapf
  :ensure t
  :hook
  (python-mode-hook . py-yapf-enable-on-save))
