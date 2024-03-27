;; asignar preferencias
(setq inhibit-startup-message t
      recentf-max-saved-items 10
      make-backup-files nil
;;      backup-directory-alist '(("." . "~/.emacs.d/saves"))
      )

;; font
(set-frame-font "Hurmit Nerd Font 10" nil t)

;; theme
(load-theme 'tango-dark t)

;; Cargar la config con la tecla "Alt + x" y "l"
(defun l ()
  (interactive)
  (load-file (expand-file-name "init.el" user-emacs-directory)))

;; modos (+1 activate; -1 desactivate)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; numero de líneas
(global-display-line-numbers-mode +1)

;; hooks
;;(add-hook 'python-mode-hook 'kill-emacs)

;; teclas
(global-set-key (kbd "C-x C-M-q") 'kill-emacs)
