;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; YaTeX setting ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq auto-mode-alist
      (cons (cons "\\.tex$" 'yatex-mode) auto-mode-alist))
(autoload 'yatex-mode "yatex" "Yet Another LaTeX mode" t)

;; kanji-code
;;   1=Shift JIS >== Windows なら
;;   2=JIS
;;   3=EUC
;;   4=UTF-8
(setq YaTeX-kanji-code 4)

;; 色付け
(setq YaTeX-use-font-lock t)

(put 'set-goal-column 'disabled nil)

;; LaTeX2e を使う
(setq YaTeX-use-LaTeX2e t)

;; 各コマンドはOS毎に設定
;; TeX command
(setq tex-command "platex")
;(setq tex-command "xelatex")
;; BibTeX command
(setq bibtex-command "pbibtex")
;; dvi
;(setq dvi2-command "xdvi -geo +0+0 -s 9")
;(setq dviprint-command-format "dvi2ps %f %t %s | lpr")
(setq dviprint-command-format "dvipdfmx %s")