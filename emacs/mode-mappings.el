;; JavaScript
;; TODO js2-mode should be a git submodule in site-lisp folder
(add-to-list 'load-path "~/src/js2-mode")
(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.json$" . javascript-mode))
(add-to-list 'magic-mode-alist '("#!/usr/bin/env node" . js2-mode)) ; What is this?

(provide 'mode-mappings)
