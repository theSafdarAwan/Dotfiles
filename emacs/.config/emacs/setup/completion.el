;; Mini Buffer Better Completion and Improved buffers for navigation
(use-package ivy
  :ensure t
  :diminish
  :demand
  :bind(
        :map ivy-minibuffer-map
        ("TAB" . ivy-alt-done)
        ("C-l" . ivy-alt-done)
        ;; ("C-j" . ivy-next-line)
        ;; ("C-k" . ivy-previous-line)
        :map ivy-switch-buffer-map
        ("C-l" . ivy-done)
        ;; ("C-k" . ivy-previous-line)
        ("C-d" . ivy-switch-buffer-kill)
        :map ivy-reverse-i-search-map
        ;; ("C-k" . ivy-previous-line)
        ("C-d" . ivy-reverse-i-search-kill)
        )
  :init
  (setq ivy-use-selectable-prompt t) ;; make ivy minibifufer items un-selectable
  (setq ivy-re-builders-alist '((t . orderless-ivy-re-builder)))
  (add-to-list 'ivy-highlight-functions-alist
               '(orderless-ivy-re-builder . orderless-ivy-highlight))
  :config
  (ivy-mode 1)
  (setq ivy-on-del-error-function #'ignore)
  )

;; counsel
(use-package counsel
  :ensure t
  :bind (
         ("M-x" . counsel-M-x)
         ("C-x b" . counsel-ibuffer)
         ;; ("C-c f" . counsel-fzf)
         ("C-x C-f" . counsel-find-file)
         :map minibuffer-local-map
         ("C-r" . 'counsel-minibuffer-history)
         )
  :config
  (setq ivy-initial-inputs-alist nil) ;; don't start search with ^
  ;; add keymap  swiper
  (global-set-key (kbd "M-s") 'swiper)
  ;; buffer switcher
  (global-set-key (kbd "M-C-b") 'counsel-switch-buffer))

;; extend ivy
(use-package ivy-rich
  :ensure t
  :init
  (ivy-rich-mode 1))

;; TODO: investigate
(use-package orderless
  :ensure t
  :custom
  (completion-styles '(orderless basic))
  (completion-category-overrides '((file (styles partial-completion))))
  (completion-pcm-leading-wildcard t)) ;; Emacs 31: partial-completion behaves like substring


;; TODO: investigate
(use-package embark
  :ensure t
  :bind
  (("C-." . embark-act)         ;; pick some comfortable binding
   ("C-;" . embark-dwim)        ;; good alternative: M-.
   ("C-h B" . embark-bindings)) ;; alternative for `describe-bindings'

  :init
  ;; Optionally replace the key help with a completing-read interface
  ;; (setq prefix-help-command #'embark-prefix-help-command)

  ;; Show the Embark target at point via Eldoc.  You may adjust the Eldoc
  ;; strategy, if you want to see the documentation from multiple providers.
  ;; (add-hook 'eldoc-documentation-functions #'embark-eldoc-first-target)
  ;; (setq eldoc-documentation-strategy #'eldoc-documentation-compose-eagerly)

  :config
  ;; Hide the mode line of the Embark live/completions buffers
  (add-to-list 'display-buffer-alist
               '("\\`\\*Embark Collect \\(Live\\|Completions\\)\\*"
                 nil
                 (window-parameters (mode-line-format . none)))))
