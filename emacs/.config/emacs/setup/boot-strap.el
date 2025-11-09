;; Start the Sever Mode
(server-mode 1)

;; Display Startup Time
(defun display-startup-time ()
  (message "Emacs loaded in %s with %d garbage collection."
           (format "%.2f seconds" (float-time
                                   (time-subtract after-init-time before-init-time)))
           gcs-done))
(add-hook 'emacs-startup-hook #'display-startup-time)

;;Native compilation cache

;; In Emacs 29, the location of the native compilation cache can be changed.

;;  (when (fboundp 'startup-redirect-eln-cache)
;;  (startup-redirect-eln-cache
;;   (convert-standard-filename
;;    (expand-file-name  "etc/eln-cache/" user-emacs-directory))))

;; Enable Debugging

  ;; (setq debug-on-error t
  ;;       debug-on-signal nil
  ;;       debug-on-quit nil)


;; TODO: ????
;; (defvar bootstrap-version)
;; (let ((bootstrap-file
;;        (expand-file-name
;;         "straight/repos/straight.el/bootstrap.el"
;;         (or (bound-and-true-p straight-base-dir)
;;             user-emacs-directory)))
;;       (bootstrap-version 7))
;;   (unless (file-exists-p bootstrap-file)
;;     (with-current-buffer
;;         (url-retrieve-synchronously
;;          "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
;;          'silent 'inhibit-cookies)
;;       (goto-char (point-max))
;;       (eval-print-last-sexp)))
;;   (load bootstrap-file nil 'nomessage))
;; (setq package-enable-at-startup nil)


;; Bootstrap Packages Archive's

(require 'package)
(add-to-list 'package-archives '("gnu"   . "https://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/"))
(package-initialize)


  ;; ;; ensure that packages are installed
  ;; ((require 'use-package-ensure)
  ;; ;; OR
  ;;    :config
  ;;    (auto-package-update-maybe)
  ;;    ;; (auto-jpackage-update-at-time "11:00")
  ;;    )

;; update packages
(use-package auto-package-update
  :ensure t
  :custom
  (auto-package-update-interval 7)
  (auto-package-update-prompt-before-update t)
  (auto-package-update-hide-results t)
  :config
  (auto-package-update-maybe)
  ;; (auto-jpackage-update-at-time "11:00")
  )


(use-package ivy-posframe
  :ensure t
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

(use-package no-littering
  :ensure t
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
               (recentf-expand-file-name no-littering-etc-directory))

  ;; change cache file dir
  (when (and (fboundp 'startup-redirect-eln-cache)
           (fboundp 'native-comp-available-p)
           (native-comp-available-p))
  (startup-redirect-eln-cache
   (convert-standard-filename
    (expand-file-name  "var/eln-cache/" user-emacs-directory)))))
