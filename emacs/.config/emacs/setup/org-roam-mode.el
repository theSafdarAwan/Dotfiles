(use-package org-roam
  :ensure t
  :init
  ;; ;; temp work around for org-roam-ui graph not showing all file tags
  ;; (setq org-roam-database-connector 'sqlite)
  ;; (setq find-file-visit-truename nil) ;; resolve the symalink problems
  (setq org-roam-directory (file-truename "~/safdar-local/org-files/org-roam-notes"))

  (setq org-roam-node-display-template
        (concat "${title:*} "
                (propertize "${tags:50}" 'face 'org-tag)))

  (setq org-roam-completion-everywhere t)

  (setq org-roam-mode-sections
        (list #'(org-roam-backlinks-section :unique t)
              #'(org-roam-reflinks-section :unique t)
              ;; #'org-roam-unlinked-references-section
              ))
  ;; (setq org-roam-mode-sections
  ;;       '((org-roam-backlinks-section :unique t)
  ;;         (org-roam-reflinks-section :unique t)
  ;;         (org-roam-unlinked-references-section)))

  :custom
  ;; templates
  (org-roam-capture-templates
   '(("d" "default" plain
      "%?"
      :if-new (file+head "${title}.org" "#+TITLE: ${title}\n#+FILETAGS: \n#+TOPICS: \n")
      :unnarrowed t)
     ))
  :config
  (org-roam-setup)
  (org-roam-db-autosync-mode)
  (setq org-roam-db-update-on-save t))


(use-package org-roam-ui
  :ensure t)

