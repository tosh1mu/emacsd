;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Anything setting ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(when (require 'anything nil t)
  (setq
   anything-idle-delay 0.3
										; display delay time
   anything-input-idle-delay 0.2
										; input delay time
   anything-candidate-number-limit 100
										; maximum number of candidate
   anything-quick-update t
										; quicker update
   anything-enable-shortcuts 'alphabet)

  (when (require 'anything-config nil t)
	(setq anything-su-or-sudo "sudo"))

  (require 'anything-match-plugin nil t)

  (when (and (executable-find "cmigemo") (require 'migemo nil t))
			 (require 'anything-migemo nil t))

  (when (require 'anything-complete nil t)
	(anything-lisp-complete-symbol-set-timer 150))

  (require 'anything-show-completion nil t)

  (when (require 'auto-install nil t)
	(require 'anything-auto-install nil t))

  (when (require 'descbinds-anything nil t)
	(descbinds-anything-install))

  (when (require 'anything-c-moccur nil t)
	(setq
	 anything-c-moccur-anything-idle-delay 0.1
										; anything-idle-delay for anything-c-moccur
	 lanything-c-moccur-highlight-info-line-flag t
	 anything-c-moccur-enable-auto-look-flag t
	 anything-c-moccur-enable-install-pattern t)
	(global-set-key (kbd "C-M-o") 'anything-c-moccur-occur-by-moccur))
  )