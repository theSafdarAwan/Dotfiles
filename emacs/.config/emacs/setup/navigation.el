;; TODO: work on this some other time
;; (use-package perspective
;;   :ensure t
;;   :bind
;;   ("C-x C-b" . persp-list-buffers)         ; or use a nicer switcher, see below
;;   :custom
;;   (persp-mode-prefix-key (kbd "M-p"))  ; pick your own prefix key here
;;   :init
;;   (persp-mode))

;; ripgrep
(use-package rg
  :ensure t)

(global-set-key (kbd "C-s-f") 'counsel-fzf)
