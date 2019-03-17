;Install packages
(load "~/.emacs.d/packages")

;Upper Bar functions
(load "~/.emacs.d/upper_bar")

;Hints from: https://www.youtube.com/watch?v=dJP-JDUWeQM
;(set-default 'cursor-type' 'hbar')

;Shows the number of the column at status bar
(column-number-mode)

;Makes easier to find bracket pair
(show-paren-mode)

;Makes easier to find bracket pair
(electric-pair-mode)

;Highlight current line
(global-hl-line-mode t)

;Enable autocomplete
(ido-mode t)

;Load theme
(load-theme 'wombat)

; Tab size = 4
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;Autoindent
(define-key global-map (kbd "RET") 'newline-and-indent)
(add-hook 'f90-mode-hook (lambda ()
   (local-set-key (kbd "RET") 'reindent-then-newline-and-indent)))

;Key Bindings
;Config backspace as it should be
(define-key key-translation-map (kbd "C-d") (kbd "DEL"))
;Override undo command
(require 'undo-tree)
(global-unset-key (kbd "C-z"))
(global-set-key (kbd "C-z") 'undo-tree-undo)
(global-set-key (kbd "C-S-z") 'undo-tree-redo)

