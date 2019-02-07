;; plantuml
(setq org-plantuml-jar-path "~/.emacs.d/lib/plantuml.jar")

(org-babel-do-load-languages
 'org-babel-load-languages
 '((R . t)
   (emacs-lisp . t)
   (haskell . t)
   (ruby . t)
   (plantuml . t)))
