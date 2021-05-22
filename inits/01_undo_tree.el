(use-package undo-tree
  :ensure t
  :bind ("M-/" . undo-tree-redo)
  :init
  (global-undo-tree-mode t))
