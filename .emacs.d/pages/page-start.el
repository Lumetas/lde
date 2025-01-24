;;Стартовое меню
(load-file "~/.emacs.d/functions/get-directory.el")
(defun page-start ()

(interactive)
(read-only-mode 0)
(erase-buffer)
(insert "Добро пожаловать!\n\n")

;; Кнопка для открытия файла
(insert-button "Открыть файл"
			'action (lambda (_) (call-interactively 'find-file))
			'follow-link t)
(insert "\n")

(insert-button "Открыть папку"
			'action (lambda (_) 
			(get-directory)
			(cd chosen-directory)
			(sr-speedbar-open)
			)
			'follow-link t)
(insert "\n")

(insert-button "Настройки"
			'action (lambda (_) (my-list-customization-groups))
			'follow-link t)
(insert "\n")

;; Кнопка для выхода
(insert-button "Выход"
			'action (lambda (_) (kill-emacs))
			'follow-link t)
(insert "\n")
(load-file "~/.emacs.d/configs/home.el")
(read-only-mode 1)
)