(use-package undo-tree
  :bind ("M-/" . undo-tree-redo)
  :init
  (global-undo-tree-mode t))
