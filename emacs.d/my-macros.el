;;
;; my-macros.el
;; Andres Aguilar
;;

;;
;; Macros
;;
;; Define new macro: start with C-x ( [commands] finish with C-x )
;; Define macro's name: M-x  kmacro-name-last-macro
;; Save macro: M-x insert-kbd-macro <RET> nombre-de-la-macro <RET>
;;

(fset 'my-eval-line
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([1 67108896 5 134217847 24 111 25 return 24 111 14 1] 0 "%d")) arg)))

(fset 'my-eval-region
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([134217847 24 111 25 return 24 111 14 1] 0 "%d")) arg)))

;;
;; --- Teclas de función personalizadas ---
;;

(global-set-key [f1] 'my-eval-line)      ;; Execute line    (works with R and Python)
(global-set-key [f2] 'my-eval-region)    ;; Execute region  (works with R and Python)
(global-set-key [f6] 'eshell)            ;; launch eshell
(global-set-key [f7] 'ipython)           ;; Launch ipython
(global-set-key [f8] 'R)                 ;; Launch R
(global-set-key [f11] 'ess-eval-region)
(global-set-key [f12] 'ess-eval-region-or-line-and-step)
