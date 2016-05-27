(provide 'my-org-mode)

(defun open-notes ()
  (interactive)
  (find-file "~/org/notes.org")
  )

(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/org/notes.org" "Tasks")
	 "* TODO %?\n  %i\n  %a")
	("j" "Journal" entry (file+datetree "~/org/journal.org")
	 "* %?\nEntered on %U\n  %i\n  %a")))

(global-set-key (kbd "C-c o") 'open-notes)
