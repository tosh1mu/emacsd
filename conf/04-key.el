;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Key-bind settings ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(when (eq system-type 'darwin)
  (setq mac-option-modifier 'meta)
  )
										; define "Option" key on Mac as meta key
(global-set-key (kbd "C-h") 'backward-delete-char)
										; BackSpace
(global-set-key (kbd "C-c l") 'toggle-truncate-lines)
										; enable/disable trancate lines
(global-set-key (kbd "C-t") 'other-window)
										; move to the next window
(global-set-key (kbd "M-<SPC>") 'expand-abbrev)
										; 静的略語展開は M-SPCに変更
(global-set-key (kbd "C-x C-b") 'bs-show)
										; C-x C-bをM-x bs-showに変更
(global-set-key (kbd "M-<kanji>") 'ignore)
										; M-kanjiとうるさいので...
(global-set-key (kbd "M-g") 'goto-line)
										; M-gでgoto-lineを使えるようにする
(global-set-key (kbd "C-x a") 'anything)
										; anything
(define-key mode-specific-map "c" 'compile)
										; C-c c で compile コマンドを呼び出す