;;Сохранить
(global-unset-key (kbd "C-s"))
(global-set-key (kbd "C-s") 'save-buffer)

;;Назад
(global-unset-key (kbd "C-z"))
(global-set-key (kbd "C-z") 'undo)

;;Вперёд
(global-unset-key (kbd "C-y"))
(global-set-key (kbd "C-y") 'undo-redo)

;;Скопировать
(global-unset-key (kbd "C-c c"))
(global-set-key (kbd "C-c c") 'kill-ring-save)

;;Вырезать
(global-unset-key (kbd "C-x"))
(global-set-key (kbd "C-x") 'kill-region)

;;Вставить
(global-unset-key (kbd "C-v"))
(global-set-key (kbd "C-v") 'yank)

;;Закрыть emacs
(global-unset-key (kbd "C-c e"))
(global-set-key (kbd "C-c e") 'kill-emacs)