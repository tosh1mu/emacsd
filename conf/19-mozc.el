;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; mozc setting ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(when (eq system-type 'gnu/linux)
										; In case of Linux, use ibus
  (require 'ibus)
  (add-hook 'after-init-hook 'ibus-mode-on)
  ;; C-SPC は Set Mark に使う
  (ibus-define-common-key ?\C-\s nil)
  ;; C-/ は Undo に使う
  (ibus-define-common-key ?\C-/ nil)
  ;; IBusの状態によってカーソル色を変化させる ("on" "off" "disabled")
  (setq ibus-cursor-color '("firebrick" "dark orange" "royal blue"))
  ;; すべてのバッファで入力状態を共有 (default ではバッファ毎にインプットメソッドの状態を保持)
  (setq ibus-mode-local nil)
  ;; カーソル位置で予測候補ウィンドウを表示 (default はプリエディット領域の先頭位置に表示)
  (setq ibus-prediction-window-position t)
  ;; isearch 時はオフに
  (ibus-disable-isearch)
  ;; mini buffer ではオフに
  (add-hook 'minibuffer-setup-hook 'ibus-disable)
  ;; Keybindings
  ;(global-set-key (kbd "C-\\") 'ibus-toggle)
  ;(global-set-key (kbd "C-o") (lambda () (interactive) (ibus-enable "mozc-jp")))
  (global-set-key (kbd "C-<f7>")
				  (lambda ()
					(interactive)
					(shell-command-to-string
					 "/usr/lib/mozc/mozc_tool --mode=word_register_dialog")))
  )