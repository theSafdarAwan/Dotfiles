(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode 1)

(dolist (mode '(org-mode-hook))
(add-hook mode (lambda () 
                (menu-bar--display-line-numbers-mode-visual))))

(dolist (mode '(term-mode-hook
                eshell-mode-hook
                shell-mode-hook
                neotree-mode-hook
                dired-mode-hook
                vterm-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0))))

(column-number-mode)

(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

(setq inhibit-startup-screen t)

(setq ring-bell-function 'ignore)

(add-hook 'after-init-hook (lambda () (setq-default create-lockfiles nil)))

;; (setq backup-directory-alist '(("." . "~/.cache/emacs-backup-files"))
;;       backup-by-copying t    ; Don't delink hardlinks
;;       version-control t      ; Use version numbers on backups
;;       delete-old-versions t  ; Automatically delete excess backups
;;       kept-new-versions 20   ; how many of the newest versions to keep
;;       kept-old-versions 5    ; and how many of the old
;;       )

(setq search-whitespace-regexp ".*")

(add-hook 'org-mode-hook (lambda () (flyspell-mode 1)))

(dolist (mode '(emacs-lisp-mode
                lisp-mode
                javascript-mode
                html-mode))
  (add-hook mode (lambda () ((electric-pair-mode 1)))))

(defun modeline-set-lighter (minor-mode lighter)
  (when (assq minor-mode minor-mode-alist)
    (setcar (cdr (assq minor-mode minor-mode-alist)) lighter)))

(defun modeline-remove-lighter (minor-mode)
  (modeline-set-lighter minor-mode ""))

(modeline-remove-lighter 'global-undo-tree-mode)
(modeline-remove-lighter 'undo-tree-mode)
(modeline-remove-lighter 'org-roam-ui-mode)
(modeline-remove-lighter 'ivy-posframe-mode)
(modeline-remove-lighter 'company-mode)
(modeline-remove-lighter 'ivy-mode)
(modeline-remove-lighter 'flyspell-mode)
(modeline-remove-lighter 'buffer-face-mode)
(modeline-remove-lighter 'org-table-header-line-mode)

;; solution 1
;; (add-hook 'after-change-major-mode-hook (lambda () (toggle-truncate-lines t))) 

;; solution 2
;; (setq-default word-wrap t)

;; solution 3
(add-hook 'org-mode-hook 'visual-line-mode)
