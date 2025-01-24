;; Установка кнопок в header-line
(setq header-line-format
        '(""
            (:propertize "%b | %C | %f" face (:foreground "white" :underline t)
                        help-echo "Нажмите левой клавишей мыши чтобы закрыть файл\n\
Нажмите правой клавишей мыши чтобы перейти на домашнюю страницу\n\
Нажмите средней клавишей мыши чтобы закрыть приложение"
                        mouse-face highlight
                        )
        ))

;; Включаем header-line, если это ещё не сделано
(setq-default header-line-format header-line-format)

;; Назначение клавиш для хедера
(global-set-key (kbd "<header-line> <mouse-1>") 'kill-current-buffer)
(global-set-key (kbd "<header-line> <mouse-3>") 'page-start)
(global-set-key (kbd "<header-line> <mouse-2>") 'kill-emacs)