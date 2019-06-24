;; 拡張子がorgのファイルを開いた時，自動的にorg-modeにする
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
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
   (haskell . t)
   (sql . t)
   (plantuml . t)
   (shell . t)
   (ruby . t)))
