(setq ido-auto-merge-work-directories-length -1)
(setq show-paren-style 'expression)
(show-paren-mode 2)
(xterm-mouse-mode 1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(setq visible-bell 1)

(add-to-list 'load-path "~/.emacs.d/plugins")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

(load-file "~/.emacs.d/pages/page-start.el")
(setq initial-buffer-choice 'page-start)

(require 'sr-speedbar)
(require 'linum+)
(global-linum-mode 1)


(load-file "~/.emacs.d/configs/theme.el")
(load-file "~/.emacs.d/configs/default-keys.el")



(setq x-select-enable-clipboard t)
(setq make-backup-files         nil)
(setq auto-save-list-file-name  nil)
(setq auto-save-default         nil)
(defalias 'yes-or-no-p 'y-or-n-p)

(setq scroll-conservatively 1)
(setq scroll-margin 0)        
(setq scroll-preserve-screen-position t)

(load-file "~/.emacs.d/functions/header.el")
(tab-bar-mode 1)
