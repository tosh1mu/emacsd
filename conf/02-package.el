;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; package setting ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(when (= emacs-major-version 23)
  (when (require 'package nil t)
	(add-to-list 'package-archives
				 '("marmalade" . "http://marmalade-repo.org/packages/"))
	(add-to-list 'package-archives
				 '("ELPA" . "http://tromey.com/elpa/"))
	(add-to-list 'package-archives
				 '("Melpa" . "http://melpa.milkbox.net/packages/") t)
	(package-initialize)
	(require 'melpa)))