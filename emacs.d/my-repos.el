;;
;; my-packages.el
;; Andres Aguilar
;;
;; Based on https://github.com/toumorokoshi/yt.rc/blob/master/emacs/my-packages.el
;;

;; import melpa repos
(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)

;; import marmalade repos
(add-to-list 'package-archives
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(package-initialize)
