;;
;; my-packages-conf.el
;; Andres Aguilar
;;

;;
;; Install packages from melpa
;; (elpy, go-mode, go-complete, popwin, magit, sudo-edit)
;;


;;;;;;;;;;;;;;;;;;;;;;;;;
;; Set packages conf
;;;;;;;;;;;;;;;;;;;;;;;;;

;; sudo-edit
(require 'sudo-edit)
(global-set-key (kbd "C-c C-r") 'sudo-edit)

;; magit
(require 'magit)
(global-set-key (kbd "C-x g") 'magit-status)
; C-x g
; s -> sobre la clase 'unstaged' == git add
; c c -> para hacer el commit
; escribir comentario y C-c C-c para guargar commit
; P p -> subir los cambios al servidor == git push
; C-x g -> entramos en magit-status
; F p -> bajamos los cambios del servidor == git pull

;; autocomplete
; (require 'auto-complete)
; (add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
;; (setq ac-max-width 0.5)
; (require 'auto-complete-config)
; (ac-config-default)

;; web-mode
; (require 'web-mode)
; (add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
; (add-to-list 'auto-mode-alist '("\\.handlebars\\'" . web-mode))
; (setq web-mode-engine-alist
; '(("django" . "\\.html\\'")))

;; emmet-mode
; (require 'emmet-mode)
; (add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
; (add-hook 'web-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
; (add-hook 'css-mode-hook 'emmet-mode) ;; enable Emmet's css abbreviation.

;; elpy
(elpy-enable)

; popwin
(require 'popwin)
(popwin-mode 1)

;; use IPython
; (setq-default py-shell-name "ipython2")
; (setq-default py-which-bufname "IPython")
; use the wx backend, for both mayavi and matplotlib
; (setq py-python-command-args
;   '("--gui=wx" "--pylab=wx" "-colors" "Linux"))
; (setq py-force-py-shell-name-p t)

;; Load ess
(setq load-path (cons "/usr/share/emacs/site-lisp/ess" load-path))
(require 'ess-site)
