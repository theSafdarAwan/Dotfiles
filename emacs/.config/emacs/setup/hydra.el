;; TODO: move org-roam* funcs to their respective pkg's config
(use-package hydra
  :ensure t
  :init
  :config
  (defhydra hydra-zoom (global-map "C-c z")
    "zoom"
    ("i" text-scale-increase "in")
    ("o" text-scale-decrease "out"))



  (defhydra hydra-org-roam ()
    "
         ^Node Actions^   ^Buffer^               ^Journal^         ^Capture^              
         ^^^^^^^^-------------------------------------------------------------------------
         _f_: Find node   _b t_: Buffer toggle    _j t_: Today     _c c_: Choose Node     
         _i_: Insert Node _b d_: Dedicated buffer _j T_: Tomorrow  _c t_: Today Journal   
         ^ ^              _b r_: Refresh Buffer   _j y_: Yesterday _c T_: Tomorrow Journal
     "
    ;; node
    ("f" org-roam-node-find nil)
    ("i" org-roam-node-insert nil)
    ;; buffer
    ("b t" org-roam-buffer-toggle nil)
    ("b d" org-roam-buffer-display-dedicated nil)
    ("b r" org-roam-buffer-refresh nil)
    ;; capture
    ("c c" org-roam-capture nil)
    ("c t" org-roam-dailies-capture-today nil)
    ("c T" org-roam-dailies-capture-tomorrow nil)
    ;; journal
    ("j t" org-roam-dailies-goto-today nil)
    ("j T" org-roam-dailies-goto-tomorrow nil)
    ("j y" org-roam-dailies-goto-yesterday nil))

  (global-set-key (kbd "C-c r o") 'hydra-org-roam/body)


  
  (defhydra hydra-buffer-menu (:color pink :hint nil)
    "
          ^Mark^             ^Unmark^           ^Actions^          ^Search
          ^^^^^^^^-----------------------------------------------------------------
          _m_: mark          _u_: unmark        _x_: execute       _R_: re-isearch
          _s_: save          _U_: unmark up     _b_: bury          _I_: isearch
          _d_: delete        ^ ^                _g_: refresh       _O_: multi-occur
          _D_: delete up     ^ ^                _T_: files only: % -28`Buffer-menu-files-only
          _~_: modified
          "
    ("m" Buffer-menu-mark)
    ("u" Buffer-menu-unmark)
    ("U" Buffer-menu-backup-unmark)
    ("d" Buffer-menu-delete)
    ("D" Buffer-menu-delete-backwards)
    ("s" Buffer-menu-save)
    ("~" Buffer-menu-not-modified)
    ("x" Buffer-menu-execute)
    ("b" Buffer-menu-bury)
    ("g" revert-buffer)
    ("T" Buffer-menu-toggle-files-only)
    ("O" Buffer-menu-multi-occur :color blue)
    ("I" Buffer-menu-isearch-buffers :color blue)
    ("R" Buffer-menu-isearch-buffers-regexp :color blue)
    ("c" nil "cancel")
    ("v" Buffer-menu-select "select" :color blue)
    ("o" Buffer-menu-other-window "other-window" :color blue)
    ("q" quit-window "quit" :color blue))

  (define-key Buffer-menu-mode-map "." 'hydra-buffer-menu/body)


  (defhydra hydra-org-roam-db-actions ()
    "
       ^DB Actions^
       ^^^^^^-----------
       _s_: DB Sync
       _c_: DB Clear
    "
    ;; DB Options
    ("s" org-roam-db-sync nil)
    ("c" org-roam-db-clear-all nil))
  (global-set-key (kbd "C-c r d") 'hydra-org-roam-db-actions/body)
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;;    Org Roam Properties Actions
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  (defhydra hydra-org-roam-properties-actions ()
    "
       ^Tags Actions^    ^Alias Actions^     ^Ref Actions
       ^^^^^^------------------------------------------------
       _t a_: Add Tag    _a a_: Add Alias    _r a_: Add Ref
       _t r_: remove Tag _a r_: remove Alias _r r_: remove Ref
       ^ ^               ^ ^                 _r f_: Find Ref
    "
    ;; Tags actions
    ("t a" org-roam-tag-add nil)
    ("t r" org-roam-tag-remove nil)
    ;; Alias Actions
    ("a a" org-roam-alias-add nil)
    ("a r" org-roam-alias-remove nil)
    ;; Refs Actions
    ("r a" org-roam-ref-add nil)
    ("r r" org-roam-ref-remove nil)
    ("r f" org-roma-ref-find nil))
  (global-set-key (kbd "C-c r p") 'hydra-org-roam-properties-actions/body)    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;;        Org Roam DB Actions
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  (defhydra hydra-org-roam-db-actions ()
    "
       ^DB Actions^
       ^^^^^^-----------
       _s_: DB Sync
       _c_: DB Clear
    "
    ;; DB Options
    ("s" org-roam-db-sync nil)
    ("c" org-roam-db-clear-all nil))
  (global-set-key (kbd "C-c r d") 'hydra-org-roam-db-actions/body)
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;;    Org Roam Properties Actions
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  (defhydra hydra-org-roam-properties-actions ()
    "
       ^Tags Actions^    ^Alias Actions^     ^Ref Actions
       ^^^^^^------------------------------------------------
       _t a_: Add Tag    _a a_: Add Alias    _r a_: Add Ref
       _t r_: remove Tag _a r_: remove Alias _r r_: remove Ref
       ^ ^               ^ ^                 _r f_: Find Ref
    "
    ;; Tags actions
    ("t a" org-roam-tag-add nil)
    ("t r" org-roam-tag-remove nil)
    ;; Alias Actions
    ("a a" org-roam-alias-add nil)
    ("a r" org-roam-alias-remove nil)
    ;; Refs Actions
    ("r a" org-roam-ref-add nil)
    ("r r" org-roam-ref-remove nil)
    ("r f" org-roma-ref-find nil))
  (global-set-key (kbd "C-c r p") 'hydra-org-roam-properties-actions/body)

  (defhydra hydra-org-roam-ui ()
    "
       ^UI Options^            ^Grpah Options^              
       ^^^^^^^^-------------------------------------------------------------
       _o_: ui open             _l_:   Open Local graph view for current node
       _f_: Follow mode         _z_:   zoom current node in graph
       ^ ^                      _a l_: add to local grpah      
       ^ ^                      _r l_: ove from local grpah 
   "
    ;; UI Options
    ("o" org-roam-ui-open nil)
    ("f" org-roam-ui-follow-mode nil)
    ;; Grpah Options
    ("l" org-roam-ui-node-local nil)
    ("z" org-roam-ui-node-zoom nil)
    ("a l" org-roam-ui-add-to-local-graph nil)
    ("r l" org-roam-ui-remove-from-local-graph nil))
  ;;   (keymap-global-set "C-c r n" 'hydra-org-roam-ui/body)
  (global-set-key (kbd "C-c r u") 'hydra-org-roam-ui/body))
