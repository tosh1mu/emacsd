(when window-system
  (cond
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; STORATOS.local ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   ((equal system-name "STRATOS.local")
	(progn
	  (set-frame-size (selected-frame) 100 50)
	  (set-frame-position (selected-frame) 20 40)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; TAKA ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   ((equal system-name "TAKA")
	(progn
	  (if (>= (x-display-pixel-width) 2000)
		  (progn (setq width-gain 0.3) (setq lpos 2000))
		(progn (setq width-gain 0.5) (setq lpos 50)))
	  (setq height-gain 0.8)
	  (setq fwidth (floor (/ (* (x-display-pixel-width) width-gain) (frame-char-width))))
	  (setq fheight (floor (/ (* (x-display-pixel-height) height-gain) (frame-char-height))))
	  (setq tpos 50)
	  (set-frame-size (selected-frame) fwidth fheight)
	  (set-frame-position (selected-frame) lpos tpos)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; TASP ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   ((equal system-name "TASP")
	(progn
	  (setq width-gain 0.75)
	  (setq height-gain 0.75)
	  (setq fwidth (floor (/ (* (x-display-pixel-width) width-gain) (frame-char-width))))
	  (setq fheight (floor (/ (* (x-display-pixel-height) height-gain) (frame-char-height))))
	  (setq lpos 50)
	  (setq tpos 50)
	  (set-frame-size (selected-frame) fwidth fheight)
	  (set-frame-position (selected-frame) lpos tpos)))
))