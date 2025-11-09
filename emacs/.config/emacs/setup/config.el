;; ????
(dolist (mode '(org-mode-hook))
(add-hook mode (lambda () 
                (menu-bar--display-line-numbers-mode-visual))))



;; Hide Minor Modes list in Mode Line

;; (defun modeline-set-lighter (minor-mode lighter)
;;   (when (assq minor-mode minor-mode-alist)
;;     (setcar (cdr (assq minor-mode minor-mode-alist)) lighter)))

;; (defun modeline-remove-lighter (minor-mode)
;;   (modeline-set-lighter minor-mode ""))

;; (modeline-remove-lighter 'global-undo-tree-mode)
;; (modeline-remove-lighter 'undo-tree-mode)
;; (modeline-remove-lighter 'org-roam-ui-mode)
;; (modeline-remove-lighter 'ivy-posframe-mode)
;; (modeline-remove-lighter 'company-mode)
;; (modeline-remove-lighter 'ivy-mode)
;; (modeline-remove-lighter 'flyspell-mode)
;; (modeline-remove-lighter 'buffer-face-mode)
;; (modeline-remove-lighter 'org-table-header-line-mode)


