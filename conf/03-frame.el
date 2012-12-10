;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Frame settings ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Disable scroll-bar, tool-bar, and menu-bar
(when window-system
										; when window mode,
  (progn
    (scroll-bar-mode nil)
										; disable scroll-bar
    (tool-bar-mode nil)
										; disable tool-bar
    (unless (eq window-system 'ns)
										; When not Cocoa-Emacs,
      (menu-bar-mode 0))))
										; disable menu bar
;;-----------------------------------------------------------------------------------------
;; 
(when (not (and (eq system-type 'darwin) (not window-system)))
  (set-scroll-bar-mode 'right)
										; move scroll-bar to the right side
  )
;;-----------------------------------------------------------------------------------------
(global-linum-mode t)
										; show line number
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Mode-line settings ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(column-number-mode t)
										; show column number to mode-line
(size-indication-mode t)
										; show file size
(setq display-time-24hr-format t)
										; show time in 24 hours format
(display-time-mode t)
										; show time
(display-battery-mode t)
										; show battery status
(defun count-lines-and-chars ()
  (if mark-active
	  (format "%d lines, %d chars "
			  (count-lines (region-beginning) (region-end))
			  (- (region-end) (region-beginning)))
	""))
										; define function to count lines and chars in the region
(add-to-list 'default-mode-line-format
			 '(:eval (count-lines-and-chars)))
										; show line count and char count
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Cursor settings ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(blink-cursor-mode nil)
										; disable blinking cursor