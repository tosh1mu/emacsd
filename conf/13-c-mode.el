;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; C-mode setting ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-hook 'c-mode-common-hook
          '(lambda ()
			 (c-set-style "cc-mode")
			 ;; (c-set-style "java")
										; センテンスの終了である ';' を入力したら、自動改行+インデント
			 (setq c-auto-newline nil)
			 (setq c-tab-always-indent t)
			 (setq indent-tabs-mode t)
										; インデントは空白文字で行う（TABコードを空白に変換）
             (c-set-offset 'arglist-close 0)
										; 関数の引数リストの閉じ括弧はインデントしない
			 ;; (c-toggle-auto-hungry-state 1)
										; RET キーで自動改行+インデント
             (define-key c-mode-base-map "\C-m" 'newline-and-indent)
			 ))

;; C++ style
(add-hook 'c++-mode-hook
          '(lambda()
             (c-set-style "cc-mode")
			 (setq c-auto-newline nil)
			 (setq c-tab-always-indent t)
			 (setq indent-tabs-mode t)
										; インデントは空白文字で行う（TABコードを空白に変換）
             (c-set-offset 'innamespace 0)
										; namespace {}の中はインデントしない
             (c-set-offset 'arglist-close 0)
										; 関数の引数リストの閉じ括弧はインデントしない
			 (define-key c-mode-base-map "\C-m" 'newline-and-indent)
			 ))




