;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; C-mode setting ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun set-c-mode-common-conf ()
  ;; (electric-mode + 自動インデント + 欲張り削除) ";"を押すと現在の行を
  ;; 再インデントして自動的に改行をするモードのなる設定。これは強力すぎて扱いづらい。
  ;; (c-toggle-auto-hungry-state 1)

  ;; (欲張り削除 + electric-mode)バックスペースなどの削除するキーを押すと
  ;; スペースを一気に消す欲張り削除機能とelecetic-modeをを有功にする
  (c-toggle-hungry-state 1)

  ;; (electric-mode) ";"や"{"などをを入力した場合現在の行を自動インデントを有功にする
  ;; (c-toggle-electric-state 1)

  ;; (自動インデント) 改行をしたら次の行を自動でインデントしてくれる
  ;; (c-toggle-auto-newline 1)

  ;; この関数は廃れた機能 (obsoleteされた)ものなので、emacsのバージョンが22.1以上なら使わないこと
  ;; (c-toggle-auto-state 1) obsoleted

  ;; C-m を newline-and-indentに設定する
  ;; しかしこれをするとEnterのキーマップまで影響するので
  ;; 大人しくC-jを使ったnewline-and-indentを使うほうが
  ;; (define-key c-mode-base-map ""\C-m" 'newline-and-indent)

  (c-set-style "cc-mode")                     ;;
  (flyspell-prog-mode)                        ;; flyspell-prog-mode(自動ispell機能)
  (show-paren-mode t)                         ;;

  ;; 他のエディタなどがファイルを書き換えたらすぐにそれを反映する
  ;; auto-revert-modeを有効にする
  (auto-revert-mode)
  )

(defun add-c-mode-conf ()
  (setq c-hanging-braces-alist
		'((brace-list-open (after before))
		  (substatement-open after)
		  (block-close . c-snug-do-while)))
  (setq c-indent-level 2
		c-argdecl-indent 0
		c-label-offset -4
		c-continued-statement-indent 0
		c-brace-offset 0
		tab-width 4
		comment-column 40
		c-auto-newline nil
		c-tab-always-indent t
		indent-tabs-mode t)
  (make-variable-buffer-local 'dabbrev-case-fold-search)
  (setq bbrev-case-fold-search nil)
  (make-variable-buffer-local 'dabbrev-case-replace)
  (setq dabbrev-case-replace nil)
  ;; offsets
  (c-set-offset 'innamespace 0)
  (c-set-offset 'arglist-close 0)
  (c-set-offset 'comment-intro 0)
  )

(add-hook 'c-mode-common-hook 'set-c-mode-common-conf)

(add-hook 'c-mode-hook 'add-c-mode-conf)
(add-hook 'c++-mode-hook 'add-c-mode-conf)


