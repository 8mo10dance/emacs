(use-package skelton-pair
  :bind (("(" . skeleton-pair-insert-maybe)
         ("{" . skeleton-pair-insert-maybe)
         ("[" . skeleton-pair-insert-maybe)
         ("\"" . skeleton-pair-insert-maybe))
  :init
  (setq skeleton-pair 1))
