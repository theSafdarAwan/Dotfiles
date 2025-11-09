(use-package all-the-icons
  ;; :config
  ;; (set-fontset-font t 'unicode (font-spec :family "all-the-icons")
  ;; 		    nil 'append
  ;; 		    :foreground "#2AA198"))
)

(use-package all-the-icons-ivy-rich
  :init
  (setq all-the-icons-ivy-rich-color-icon t)
  (all-the-icons-ivy-rich-mode 1))

(use-package modus-themes)

(use-package dracula-theme
  :config
  ;;(load-theme 'dracula t)
  )

(use-package atom-one-dark-theme
  :config
  ;; (load-theme 'atom-one-dark t)
  )

(use-package doom-themes
  :config
  ;; Global settings (defaults)
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t) ; if nil, italics is universally disabled
  (load-theme 'doom-one t)
  ;; Enable flashing mode-line on errors
  ;; (doom-themes-visual-bell-config)
  ;; Enable custom neotree theme (all-the-icons must be installed!)
  ;; (doom-themes-neotree-config)
  ;; or for treemacs users
  ;; (setq doom-themes-treemacs-theme "doom-atom") ; use "doom-colors" for less minimal icon theme
  ;; (doom-themes-treemacs-config)
  ;; Corrects (and improves) org-mode's native fontification.
  ;;(doom-themes-org-config)
  )

(use-package solarized-theme
  :config
  ;; (load-theme 'solarized-dark t)
)
