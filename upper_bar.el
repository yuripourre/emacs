;Add Neotree (you should run sh setup.sh first)
(add-to-list 'load-path "neotree")
(require 'neotree)
(global-set-key (kbd "M-1") 'neotree-toggle)
;Open file
(global-set-key (kbd "C-o") 'ido-find-file)
;Override save single buffer command
(global-set-key (kbd "C-s") 'save-buffer)
