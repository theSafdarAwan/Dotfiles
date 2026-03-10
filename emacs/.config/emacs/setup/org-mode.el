;; Enable org-indent-mode for beutiful indenting
(add-hook 'org-mode-hook (lambda () (org-indent-mode 1)))

;; Add beautiful bullets to Org Mode
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

;; add more todo states
(setq org-todo-keywords
      '((sequence "TODO(t)" "NEXT(n)" "WAITING(w)" "IN-PROGRESS" "|" "DONE(d)" "CANCELED(c)")))


;; org agenda files
(setq org-agenda-files (quote ("~/safdar-local/org-files/org-roam-notes/daily/")))

;; org mode image display
(global-set-key (kbd "C-c o") 'counsel-fzf)

(use-package org-download :ensure t
  :config
  ;; org-download use buffer-local variables. Set it individually in files. Otherwise, put things flatly in misc folder.
  (setq-default org-download-method 'directory
		org-download-image-dir "~/safdar-local/org-files/org-roam-notes/assets/"
		org-download-heading-lvl nil
		org-download-delete-image-after-download t
		org-download-screenshot-method "flameshot gui --raw --delay 2000 > %s"
		org-download-image-org-width 600
		org-download-annotate-function (lambda (link) "") ;; Don't annotate
		)
  (add-hook 'dired-mode-hook 'org-download-enable)
  (global-set-key (kbd "<print>") 'org-download-screenshot))
