;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; ASCII Font settings ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(when window-system
  (when (eq system-type 'gnu/linux)
										; Linux font
	(set-face-attribute 'default nil
						:family "Andale Mono"
						:height 100))
										; set ASCII font

  (when (eq system-type 'darwin)
										; MaxOSX font
	(set-face-attribute 'default nil
						:family "Menlo"
						:height 120)
										; set ASCII font
	(set-fontset-font
	 nil 'japanese-jisx0208
	 (font-spec :family "Hiragino Mincho Pro"))
										; set Japanese font
	(setq face-font-rescale-alist
		  '((".*Menlo.*" . 1.0)
			(".*Hiragino_Mincho_Pro.*" . 1.2)
			("-cdac$" . 1.3))))
)