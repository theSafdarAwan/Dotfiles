;; >>>>>>> Editing Behavior Related Stuff
;; Enable SpellCheck
(add-hook 'org-mode-hook (lambda () (flyspell-mode 1)))


;; Auto Pairing
(dolist (mode '(emacs-lisp-mode
                lisp-mode
                javascript-mode
                html-mode))
  (add-hook mode (lambda () ((electric-pair-mode 1)))))

