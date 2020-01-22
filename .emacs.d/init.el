;; EMACS CONFIGURATION

;; Load path
(add-to-list 'load-path (expand-file-name "packages" user-emacs-directory))
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

;; Packages
(require 'package-conf)
(require 'evil-conf)

;; Typing
(electric-pair-mode)
(ido-mode t)
(winner-mode t)

;; Visuals
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(show-paren-mode)
(global-hl-line-mode t)
(load-theme 'wombat)
