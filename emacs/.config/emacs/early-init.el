;;>>>>>>>>>>> Disable UI Elements

(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

;; disable splash screen on startup
(setq inhibit-startup-screen t)

;; disable bell ring
(setq ring-bell-function 'ignore)


;; >>>>>>>> Enable Useful Modes

;; Enable Line Numbers
(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)
;; Hide line numbers in certain fiels
(dolist (mode '(term-mode-hook
                eshell-mode-hook
                shell-mode-hook
                neotree-mode-hook
                dired-mode-hook
                vterm-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0))))

;; file size indication
(size-indication-mode 1)

;; Enable column Number
(column-number-mode 1)

;; Disable Line Wrap
;; solution 1
;; (add-hook 'after-change-major-mode-hook (lambda () (toggle-truncate-lines t))) 
;; solution 2
;; (setq-default word-wrap t)
;; solution 3
(add-hook 'org-mode-hook 'visual-line-mode)

;; Don't wrap long lines
(setq-default truncate-lines t)
 
;; emacs saves custom config in `emacs/init.el` change it to emacs/custom.el
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

;; Runtime Performance
;; Dial the GC threshold back down so that garbage collection happens more frequently but in less time.
;; Make gc pauses faster by decreasing the threshold.
(setq gc-cons-threshold (* 2 1000 1000))
