(provide 'my-org-mode)
(global-set-key (kbd "C-c o") 
    (lambda () (interactive) (find-file "~/org/notes.org")))
