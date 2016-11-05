;;
;; my-basic-conf.el
;; Andres Aguilar
;;


;; resalte de sintaxis
(global-font-lock-mode 1)
;; numeros de linea
(global-linum-mode 1)
;; Numeros de columna
(column-number-mode 1)
;; Poner espacio despues de los numeros de linea
(setq linum-format "%d  ")
;; La tecla 'Supr' borra la parte seleccionada
(pending-delete-mode 1)
;; Evitar líneas en blanco al final del archivo
(setq next-line-add-newlines nil)
(setq require-final-newline t)
;; Quitar la barra de menu
(menu-bar-mode nil)
;; Muestra el porcentaje de batería del portatil
(display-battery-mode 1)
;; Muestra la hora
(display-time-mode 1)
;; No muestra barras de scroll
(scroll-bar-mode -1)
;; No muestra la toolbar
(tool-bar-mode -1)
;; Usar y/n en lugar de yes/no
(fset 'yes-or-no-p 'y-or-n-p)
;; No crear ficheros temporales xxx~
(setq make-backup-files nil)
;; No autoguardar
(setq auto-save-default nil)
;; Modo de word wrap
(global-visual-line-mode t)
;; No mostrar los mensajes de inicio
(setq inhibit-startup-message t)
;; Ayuda al momento de abrir archivos
(require 'ido)
(ido-mode t)
