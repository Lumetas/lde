;; Установка header-line
(setq header-line-format
    '(""
        (:propertize "%b | %C | %f" face (:foreground "white" :underline t)
            help-echo "Нажмите левой клавишей мыши чтобы закрыть файл\n\
Нажмите правой клавишей мыши чтобы открыть меню\n\
Нажмите средней клавишей мыши чтобы закрыть приложение"
            mouse-face highlight
        )
    )
)

(defun my-popup-menu (event)
    (interactive "e")
    (let ((menu (make-sparse-keymap "Меню")))
    (define-key menu [my-custom-command-1]
      '(menu-item "Создать окно вертикально" split-window-below))
    (define-key menu [my-custom-command-2]
      '(menu-item "Создать окно горизонтально" split-window-right))
    (define-key menu [my-custom-command-3]
      '(menu-item "Закрыть текущее окно" delete-window))


    (define-key menu [my-custom-command-4]
    '(menu-item "---" nil))


    (define-key menu [my-custom-command-5]
      '(menu-item "Открыть стартовую страницу" page-start)) 



    (popup-menu menu event)
    
    )
)


;; Включаем header-line, если это ещё не сделано
(setq-default header-line-format header-line-format)

;; Назначение клавиш для хедера
(global-set-key (kbd "<header-line> <mouse-1>") 'kill-current-buffer)
(global-set-key (kbd "<header-line> <mouse-3>") 'my-popup-menu)
(global-set-key (kbd "<header-line> <mouse-2>") 'kill-emacs)