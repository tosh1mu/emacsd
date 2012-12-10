;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; auto-install setting ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(when (require 'auto-install nil t)
										; require auto-install
  (setq auto-install-directory "~/.emacs.d/elisp/")
										; set the directory to install elisp
  (auto-install-update-emacswiki-package-name t)
										; get the elisp list from Emacs Wiki
  (auto-install-compatibility-setup))
										; enable the functions of install-elisp