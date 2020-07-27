(setq
 user-full-name "Darius Kryszczuk"
 user-mail-address "darius.kryszczuk@gmail.com"
 display-line-numbers-type 'relative
 display-line-numbers-current-absolute nil)
(add-to-list 'default-frame-alist '(fullscreen . maximized))

(map! :leader :prefix ("t" . "toggle")
      :desc "Treemacs" "t" #'+treemacs/toggle
      :desc "Undo Tree" "u" #'undo-tree-mode)

(map! :leader :prefix ("s" . "search")
      :desc "Google" "g" #'engine/search-google)

(map! :leader :prefix ("c" . "code")
      :desc "Next error" "]" #'flycheck-next-error
      :desc "Previous error" "[" #'flycheck-previous-error)

(map! :map evil-normal-state-map
      "g]" #'flycheck-next-error
      "g[" #'flycheck-previous-error
      "M-k" #'drag-stuff-up
      "M-j" #'drag-stuff-down)

(setq
 doom-themes-treemacs-theme "Default"
 doom-font (font-spec :family "JetBrains Mono" :size 13)
 +doom-dashboard-banner-dir (concat doom-private-dir "banners/")
 doom-modeline-major-mode-color-icon t)

(use-package! undo-tree
  :defer t
  :custom
  (undo-tree-visualizer-diff t)
  (undo-tree-visualizer-timestamps t))

(use-package! rustic
  :hook (rustic-mode-hook . format-all-mode))

(use-package! engine-mode
     :config
     (setq engine/browser-function 'eww-browse-url)
     (defengine google
       "http://www.google.com/search?ie=utf-8&oe=utf-8&q=%s")
     (engine-mode t))
