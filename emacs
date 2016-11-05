;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Andres Aguilar
;; andresyoshimar at gmail dot com
;; 04/11/2016
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(package-initialize)

;; mostrar mensajes y ayuda de debug
(setq debug-on-error t)
;; Import basic conf
(load "~/.emacs.d/my-basic-conf.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#ad7fa8" "#8cc4ff" "#eeeeec"])
 '(custom-enabled-themes (quote (tango-dark)))
 '(package-selected-packages (quote (sudo-edit magit popwin elpy go-complete go-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

 ;;;;;;;;;;;;;;;;;;;;;;;;;;;
 ;; import other conf files
 ;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-hook 'after-init-hook '(lambda ()
  (load "~/.emacs.d/my-repos.el")               ;; Import (Melpa, mermelade)repos
  (load "~/.emacs.d/my-packages-conf.el")    ;; Packages configuration
  (load "~/.emacs.d/my-macros.el")           ;; Import personal macros and key shortcuts
 ))
