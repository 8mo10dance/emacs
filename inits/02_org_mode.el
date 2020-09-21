(use-package org-mode
  :mode (("\\.org$" . org-mode))
  :config
  ;; org-modeでの強調表示を可能にする
  (add-hook 'org-mode-hook 'turn-on-font-lock)
  ;; 見出しの余分な*を消す
  (setq org-hide-leading-stars t)
  ;; org-modeでの折り返し
  (setq org-startup-truncated nil)
  ;; バッファ内のコードブロックを、 そのコード用のモードと同じ色でハイライト表示する
  (setq org-src-fontify-natively t)
  ;; plantuml
  (setq org-plantuml-jar-path "~/.emacs.d/lib/plantuml.jar")
  (org-babel-do-load-languages
   'org-babel-load-languages
   '((R . t)
     (emacs-lisp . t)
     (scheme . t)
     (haskell . t)
     (sql . t)
     (plantuml . t)
     (shell . t)
     (ruby . t)))
  :init
  ;; org-capture
  (setq org-directory "~/iris/gaco/")
  (setq org-default-notes-file (concat org-directory "todo.org"))
  (global-set-key (kbd "C-c c") 'org-capture)

  ;; org-agenda
  (setq org-agenda-files (mapcar (function (lambda (x) (concat org-directory x))) '("todo.org")))
  (global-set-key (kbd "C-c a") 'org-agenda))
