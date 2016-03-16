;hilight matching parens
(show-paren-mode t)
;disable annoying bell and use visible one
(setq visible-bell t)
;connect to server with emacsclient
(server-start)

;path to emacs package manager
(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.emacs.d/color-theme-6.6.0")

;require marmalade
(require 'package)
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;require color-theme
;Color theme setup
(require `color-theme)
(color-theme-initialize)
(color-theme-charcoal-black)

;clojure-mode is no longer up to date in the Marmalade package manager (as of 3/2012).
(require 'clojure-mode)

;path to elpa packages
(add-to-list 'load-path "~/.emacs.d/elpa/slime-20100404.1/")
(add-to-list 'load-path "~/.emacs.d/elpa/slime-repl-20100404/")

;superior lisp interaction mode
(require 'slime)
(eval-after-load 'slime '(setq slime-protocol-version 'ignore))
(slime-setup '(slime-repl))

(autoload 'paredit-mode "paredit"
  "Minor mode for pseudo-structurally editing Lisp code." t)
(add-hook 'clojure-mode-hook       (lambda () (paredit-mode +1)))

;This shit is causing errors on slime-connect.
;(add-to-list 'load-path "~/.emacs.d/elpa/clojure-test-mode-1.5.5/")
;(require 'clojure-test-mode) ;; requires slime

;Button swap: command and option/alt.
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ns-alternate-modifier (quote super))
 '(ns-command-modifier (quote meta)))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
