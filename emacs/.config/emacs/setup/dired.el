;; Dired Icons
;; (use-package all-the-icons
;;   :ensure t
;;   :config
;;   (add-hook 'dired-mode-hook 'all-the-icons-dired-mode))

;; move delted files to trash
(setq delete-by-moving-to-trash t)

;; change sorting 
(setq dired-listing-switches "-al --group-directories-first")

;; (straight-use-package 'all-the-icons-nerd-fonts)
