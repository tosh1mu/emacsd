;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; flymake settings ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(when (require 'flymake nil t)
  (when (require 'popup nil t)
	(defun flymake-display-err-menu-for-current-line ()
	  (interactive)
	  (let* ((line-no             (flymake-current-line-no))
			 (line-err-info-list  (nth 0 (flymake-find-err-info flymake-err-info line-no))))
		(when line-err-info-list
		  (let* ((count           (length line-err-info-list))
				 (menu-item-text  nil))
			(while (> count 0)
			  (setq menu-item-text (flymake-ler-text (nth (1- count) line-err-info-list)))
			  (let* ((file       (flymake-ler-file (nth (1- count) line-err-info-list)))
					 (line       (flymake-ler-line (nth (1- count) line-err-info-list))))
				(if file
					(setq menu-item-text (concat menu-item-text " - " file "(" (format "%d" line) ")"))))
			  (setq count (1- count))
			  (if (> count 0) (setq menu-item-text (concat menu-item-text "\n")))
			  )
			(popup-tip menu-item-text)))))
	(global-set-key (kbd "C-c p") 'flymake-display-err-menu-for-current-line))


  (defun flymake-cc-init ()
	(let* ((temp-file   (flymake-init-create-temp-buffer-copy
						 'flymake-create-temp-inplace))
		   (local-file  (file-relative-name
						 temp-file
						 (file-name-directory buffer-file-name))))
	  (list "g++" (list "-Wall" "-Wextra" "-fsyntax-only" local-file))))

  (push '("\\.hpp$" flymake-cc-init) flymake-allowed-file-name-masks)
  (push '("\\.cpp$" flymake-cc-init) flymake-allowed-file-name-masks)
  (push '("\\.cc$" flymake-cc-init) flymake-allowed-file-name-masks)
  
  (add-hook 'c++-mode-hook
			'(lambda ()
			   (flymake-mode t)))
)