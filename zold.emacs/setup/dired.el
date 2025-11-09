(use-package all-the-icons-dired
  :init
  (setq all-the-icons-dired-monochrome nil)
  :config
  (add-hook 'dired-mode-hook 'all-the-icons-dired-mode))

;; (use-package dired-single
;;   :config
;;   (defun my-dired-init ()
;;     ;; "Bunch of stuff to run for dired, either immediately or when it's
;;     ;;     loaded."
;;     ;; add other stuff here>
;;     (define-key dired-mode-map [remap dired-find-file]
;;       'dired-single-buffer)
;;     (define-key dired-mode-map [remap dired-mouse-find-file-other-window]
;;       'dired-single-buffer-mouse)
;;     (define-key dired-mode-map [remap dired-up-directory]
;;       'dired-single-up-directory))

;;   ;; if dired's already loaded, then the keymap will be bound
;;   (if (boundp 'dired-mode-map)
;;       ;; we're good to go; just add our bindings
;;       (my-dired-init)
;;     ;; it's not loaded yet, so add our bindings to the load-hook
;;     (add-hook 'dired-load-hook 'my-dired-init)))

(setq dired-listing-switches "-al --group-directories-first")

(setq delete-by-moving-to-trash t)

(use-package dired-hide-dotfiles
  :hook (dired-mode . dired-hide-dotfiles-mode)
  :config
  (define-key dired-mode-map [remap dired-do-hardlink]
    'dired-hide-dotfiles-mode)
  )
