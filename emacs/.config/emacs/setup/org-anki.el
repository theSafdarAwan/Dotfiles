(use-package anki-editor
  :after org
  :ensure t
  :bind (:map org-mode-map
              ("<f12>" . anki-editor-cloze-region-auto-incr)
              ("<f11>" . anki-editor-cloze-region-dont-incr)
              ("<f10>" . anki-editor-reset-cloze-number)
              ("<f8>"  . anki-editor-push-tree)
              ("<f9>" . anki-editor-push-all-level-one-headings))
  :hook (org-capture-after-finalize . anki-editor-reset-cloze-number) ; Reset cloze-number after each capture.
  :config
  (defun anki-editor-push-all-level-one-headings ()
    "Push notes under level one headings that do not have :ANKI_ID: property."
    (interactive)
    (org-map-entries
     (lambda ()
       (unless (org-entry-get (point) "ANKI_ID")
         (anki-editor-push-notes '(4))
         (anki-editor-reset-cloze-number)))
     "LEVEL=1")
    (save-buffer))

  (setq anki-editor-create-decks t ;; Allow anki-editor to create a new deck if it doesn't exist
        anki-editor-org-tags-as-anki-tags t)

  (defun anki-editor-cloze-region-auto-incr (&optional arg)
    "Cloze region without hint and increase card number."
    (interactive)
    (anki-editor-cloze-region my-anki-editor-cloze-number "")
    (setq my-anki-editor-cloze-number (1+ my-anki-editor-cloze-number))
    (forward-sexp))
  (defun anki-editor-cloze-region-dont-incr (&optional arg)
    "Cloze region without hint using the previous card number."
    (interactive)
    (anki-editor-cloze-region (1- my-anki-editor-cloze-number) "")
    (forward-sexp))
  (defun anki-editor-reset-cloze-number (&optional arg)
    "Reset cloze number to ARG or 1"
    (interactive)
    (setq my-anki-editor-cloze-number (or arg 1)))
  (defun anki-editor-push-tree ()
    "Push all notes under a tree."
    (interactive)
    (anki-editor-push-notes '(4))
    (anki-editor-reset-cloze-number))

  ;; Initialize
  (anki-editor-reset-cloze-number))


;; isnert my anki card from clipboard
(defun my/insert-anki-card-from-clipboard ()
  "Insert a new Anki card with the current time and clipboard content."
  (interactive)
  (progn
    (insert "\n")
    (let* ((current-time (format-time-string "%H:%M"))
           (anki-note-type "Basic")
           (anki-deck "TODO_DECK")
           (front-text "Front")
           (back-text "Back")
           (current-date (format-time-string "%Y-%m-%d"))
           (file-path (expand-file-name (concat "~/safdar-local/org-files/org-anki-editor/" current-date ".org")))
           (file-name-no-ext (file-name-sans-extension (file-name-nondirectory file-path)))
           (file-name-no-ext-with-underscore (replace-regexp-in-string "-" "_" file-name-no-ext))
           (clipboard-content (current-kill 0 t)))
      (with-current-buffer (find-file file-path)
        (goto-char (point-max))
        ;; Append top-level headline with current time and file name as tag
        (insert (format "* %s :%s: " current-time file-name-no-ext-with-underscore))
        ;; Add properties on the next line under the top-level headline
        (insert "\n:PROPERTIES:\n"
                (format ":ANKI_NOTE_TYPE: %s\n" anki-note-type)
                (format ":ANKI_DECK: %s\n" anki-deck)
                ":END:\n")
        ;; Add subheadlines "Front" and "Back"
        (insert "\n") ;; New line before "Front"
        (insert (format "** %s\n" front-text))
        (insert "\n")
        ;; Insert clipboard content under "Front" headline
        (yank)
        ;; Add two new lines after pasting the text
        (insert "\n\n")
        ;; Add subheadline "Back"
        (insert (format "** %s\n\n" back-text))

        ;; Set tags on the top-level headline
        (save-excursion
          (org-with-wide-buffer
           (goto-char (point-min))

           (outline-next-heading) ;; Move to the first headline
           (org-set-tags-command '(4))))
        ;; Save the buffer
        (save-buffer)))))
(global-set-key (kbd "C-c C-; i") 'my/insert-anki-card-from-clipboard)



;;; Templates

;; Org-capture templates
(setq org-my-anki-file "~/safdar-local/anki.org")
(add-to-list 'org-capture-templates
             '("o" "Anki basic"
               entry
               (file+headline org-my-anki-file "Anki Cards")
               "\n* %<%H:%M>   %^g\n:PROPERTIES:\n:ANKI_NOTE_TYPE: Basic\n:ANKI_DECK: MyDeck\n:END:\n** Front\n%?\n** Back\n%x\n"))
(add-to-list 'org-capture-templates
             '("A" "Anki cloze"
               entry
               (file+headline org-my-anki-file "Anki Cards")
               "\n* %<%H:%M>   %^g\n:PROPERTIES:\n:ANKI_NOTE_TYPE: Cloze\n:ANKI_DECK: MyDeck\n:END:\n** Text\n%x\n** Extra\n"))

;; Allow Emacs to access content from clipboard.
(setq x-select-enable-clipboard t  
      x-select-enable-primary t)







;; anki editor template selector
(defun my/anki-editor-template-selector ()


  "Insert an Org mode template with a top-level heading containing the current hour and minutes as headline, a drawer named ':PROPERTIES:', and sub-headings based on the selected ':ANKI_NOTE_TYPE:'. Prompt for the values of ':ANKI_NOTE_TYPE:' and ':ANKI_DECK:' with options. Then paste the clipboard contents. Add a tag with the current date to the top-level headline and move the cursor to that headline."
  (interactive)
  (insert "\n") ; Always add an empty line before the top-level headline

  (let ((current-time (format-time-string "%H:%M"))
        (current-date (format-time-string "%Y_%m_%d"))
        (anki-note-type (completing-read "Select Anki Note Type: "
                                         '("Cloze" "Basic")))
        (anki-deck (completing-read "Select Anki Deck Name: "
                                    '("Computer Science::Emacs::Emacs"
                                      "Computer Science::Emacs::Org-mode"
                                      "Computer Science::Emacs::emacs-lisp"
                                      "Computer Science::Programming Languages::C Language"
                                      "History::History Buff Quizzes"
                                      "Languages::🇺🇸 English::Vocabulary::Personal English Vocabulary"
                                      "Languages::🇺🇸 English::Personal Senteces and Expressions"))))
    (insert (format "* %s    :%s:\n" current-time current-date anki-note-type))
    (insert "  :PROPERTIES:\n")
    (insert (format "  :ANKI_NOTE_TYPE: %s\n" anki-note-type))
    (insert (format "  :ANKI_DECK: %s\n" anki-deck))
    (insert "  :END:\n\n")
    (when (y-or-n-p "Paste Clipboard?") ;; paste the clipboard contents for later card creation
      (insert "** Clipboard\n\n")
      (yank)
      (insert "\n\n"))
    (when (string= anki-note-type "Basic")
      (insert "** Front\n")
      (insert "\n** Back\n"))
    (when (string= anki-note-type "Cloze")
      (insert "** Text\n")
      (insert "\n** Extra\n"))
    (org-set-tags-command '(4)))

  ;; Move the cursor to the top level headline
  (outline-up-heading 1))




;; Create a file with the current date as its name or choose it if it exists.
;; 1. No longer need to worry about managing a long file.
;; 2. Keep the history, if i need to come back and re-edit the cards.

(defun create-or-open-file-with-current-date ()
  "Create or open a file with the current date as its name in ~/safdar-local/org-files/org-anki-editor/"
  (interactive)
  (let* ((base-directory "~/safdar-local/org-files/org-anki-editor/")
         (current-date (format-time-string "%Y-%m-%d"))
         (default-file-name (concat current-date ".org"))
         (file-name (read-file-name "File name: " base-directory nil nil default-file-name)))
    (find-file file-name)))

(global-set-key (kbd "C-c C-; a") 'create-or-open-file-with-current-date)





;; create a new frame for org capture
(defun make-org-capture-frame ()
  "Create a new frame and run org-capture."
  (interactive)
  (make-frame '((name . "org-capture") (window-system . x)))
  (select-frame-by-name "org-capture")
  (counsel-org-capture)
  (delete-other-windows))




(defun my/anki-editor-insert-template-at-end ()
  "Insert an Org mode template at the end of a file with the current date as its name under ~/safdar-local/org-files/org-anki-editor."
  (interactive)
  (let* ((current-date (format-time-string "%Y-%m-%d"))
         (file-path (expand-file-name (concat "~/safdar-local/org-files/org-anki-editor/" current-date ".org"))))
    (unless (file-exists-p file-path)
      (with-temp-buffer (write-file file-path)))
    (with-current-buffer (find-file-noselect file-path)
      (goto-char (point-max))
      (my/anki-editor-template-selector) ; Call your template selector function
      (save-buffer))
    (message "Anki Note Template inserted at the end of %s" file-path)
    (let ((switch-to-buffer (y-or-n-p "Switch to the buffer where the template has been inserted? ")))
      (when switch-to-buffer
        (switch-to-buffer (concat current-date ".org"))))))

(global-set-key (kbd "C-c C-; c") 'my/anki-editor-insert-template-at-end)
