;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Language settings ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Set language-environment
(set-language-environment "Japanese")
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Coding-system settings ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Set prefer-coding-system for all environment
(prefer-coding-system 'utf-8)
;;--------------------------------------------------------------------------------------
;; 
(when (eq system-type 'darwin)
  (when (require 'ucs-normalize nil t)
    (set-file-name-coding-system 'utf-8-hfs)
    (setq locale-coding-system 'utf-8-hfs)))
;;--------------------------------------------------------------------------------------
;;
(when (eq window-system 'w32)
  (set-file-name-coding-system 'cp932)
  (setq locale-coding-system 'cp932))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; System settings ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-font-lock-mode t)
										; font-lock
(setq font-lock-maximum-decoration t)
										; font-lock level (set 't' if max-level)
(setq visible-bell t)
										; visible-bell
(setq inhibit-startup-message t)
										; disable startup message
(setq initial-scratch-message t)
										; disable scratch message
(setq-default make-backup-files nil)
										; disable auto-creation of backup file
(setq auto-save-default nil)
										; disable auto-save
(put 'downcase-region 'disabled nil)
										; disable confirmation of downcase
(put 'upcase-region 'disabled nil)
										; disable confirmation of upcase
(setq-default transient-mark-mode t)
										; enable visual feedback on selections
(setq show-paren-delay 0)
										; set delay time to show corresponding parenthesis
(show-paren-mode t)
										; show corresponding parenthesis
(setq show-paren-style 'expression)
										; set show-paren-style to expression (fill the area of parentheses)
(setq x-select-enable-clipboard t)
										; enable clipboard of X
(setq frame-title-format (concat  "%f - emacs@" (system-name)))
										; default to better frame titles
(setq-default line-spacing 0.05)
										; widen line-space
(setq-default tab-width 4)
										; set tab width
(setq diff-switches "-u")
										; default to unified diffs
(iswitchb-mode 1)
										; show buffer list to mini-buffer
(modify-frame-parameters nil '((wait-for-wm . nil)))
										; Xを使っている場合の起動を高速化するらしい