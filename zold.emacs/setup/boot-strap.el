(server-mode 1)

(defun display-startup-time ()
    (message "Emacs loaded in %s with %d garbage collection."
        (format "%.2f seconds" (float-time
                                   (time-subtract after-init-time before-init-time)))
        gcs-done))
(add-hook 'emacs-startup-hook #'display-startup-time)

;;  (when (fboundp 'startup-redirect-eln-cache)
;;  (startup-redirect-eln-cache
;;   (convert-standard-filename
;;    (expand-file-name  "etc/eln-cache/" user-emacs-directory))))

;; (setq debug-on-error t
;;       debug-on-signal nil
;;       debug-on-quit nil)

(require 'package)
(add-to-list 'package-archives '("gnu"   . "https://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/"))
(package-initialize)

(unless (package-installed-p 'use-package)
(package-refresh-contents)
(package-install 'use-package))

;; ensure that packages are installed
(require 'use-package-ensure)
;; OR
;; (require 'use-package)
;;(setq use-package-always-ensure t)

(use-package auto-package-update
  :custom
  (auto-package-update-interval 7)
  (auto-package-update-prompt-before-update t)
  (auto-package-update-hide-results t)
  :config
  (auto-package-update-maybe)
  ;; (auto-jpackage-update-at-time "11:00")
  )

(use-package ivy-posframe
  :diminish ivy-posframe-mode
  :init
  (setq ivy-posframe-display-functions-alist
        '((swiper                     . ivy-posframe-display-at-point)
          (complete-symbol            . ivy-posframe-display-at-point)
          (counsel-M-x                . ivy-display-function-fallback)
          (counsel-esh-history        . ivy-posframe-display-at-window-center)
          (counsel-describe-function  . ivy-display-function-fallback)
          (counsel-describe-variable  . ivy-display-function-fallback)
          (counsel-find-file          . ivy-display-function-fallback)
          (counsel-recentf            . ivy-display-function-fallback)
          (counsel-register           . ivy-posframe-display-at-frame-bottom-window-center)
          (dmenu                      . ivy-posframe-display-at-frame-top-center)
          (nil                        . ivy-posframe-display))
        ivy-posframe-height-alist
        '((swiper . 20)
          (dmenu . 20)
          (t . 10)))
  :config
  (ivy-posframe-mode 1)) ; 1 enables posframe-mode, 0 disables it.

;; Make gc pauses faster by decreasing the threshold.
(setq gc-cons-threshold (* 2 1000 1000))

(use-package no-littering
  :init
  (setq no-littering-etc-directory (expand-file-name "etc/config" user-emacs-directory))
  (setq no-littering-var-directory (expand-file-name "etc/data" user-emacs-directory))
  :config
  (no-littering-theme-backups)
  ;; ignore recent files from the no-littering directories
  (require 'recentf)
  (add-to-list 'recentf-exclude
               (recentf-expand-file-name no-littering-var-directory))
  (add-to-list 'recentf-exclude
               (recentf-expand-file-name no-littering-etc-directory)))

;; (defun meliache-file-is-root-p (name)
;;   "Check whether tramp su/sudo method is used for opening filepath NAME."
;;   ;; Adopted from https://www.gnu.org/software/emacs/manual/html_node/tramp/Auto_002dsave-File-Lock-and-Backup.html
;;   (let ((method (file-remote-p name 'method)))
;;     (when (stringp method)
;; 	(member method '("su" "sudo")))))
;; (defun meliache-file-is-not-root-p (name)
;;   (not (meliache-file-is-root-p name)))
;; (defun my-backup-enable-predicate (name)
;;   (and (normal-backup-enable-predicate name)
;; 	 ;; don't save password files
;; 	 (not (s-starts-with? "/dev/shm" name))
;; 	 (not (s-contains? "password-store" name))
;; 	 (meliache-file-is-not-root-p name)))
;; (setq backup-enable-predicate #'my-backup-enable-predicate)



;; ;; disable auto-save on certain tramp profiles
;; (connection-local-set-profile-variables
;;  'no-remote-auto-save-profile
;;  '((buffer-auto-save-file-name . nil)
;;    (remote-file-name-inhibit-auto-save-visited . t)
;;    (remote-file-name-inhibit-auto-save . t)))

;; ;; disable auto-save for specific protocols
;; (dolist (protocol '("sudo" "doas" "su" "sudoedit" "ssh"))
;;   (connection-local-set-profiles
;;    `(:application tramp :protocol ,protocol 'no-remote-auto-sav
