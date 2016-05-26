(provide 'my-org-mode)

(defun open-notes ()
  (interactive)
  (find-file "~/org/notes.org")
  )

(global-set-key (kbd "C-c o") 'open-notes)
