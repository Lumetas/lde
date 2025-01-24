(defvar chosen-directory nil
  "Сохранённый путь к выбранной директории.")

(defun get-directory ()
  "Prompt the user to select a directory and store the path."
  (interactive)
  (let ((directory (read-directory-name "Выберите директорию: ")))
    (setq chosen-directory directory)  ;; Сохраняем в переменной
)
)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(initial-scratch-message "")
 '(sr-speedbar-auto-refresh t)
 '(sr-speedbar-right-side nil))