(setq
 user-full-name "Darius Kryszczuk"
 user-mail-address "darius.kryszczuk@gmail.com"
 display-line-numbers-type 'relative
 display-line-numbers-current-absolute nil)
(add-to-list 'default-frame-alist '(fullscreen . maximized))

(map! :leader :prefix ("t" . "toggle")
      :desc "Treemacs" "t" #'+treemacs/toggle
      :desc "Undo Tree" "u" #'undo-tree-mode
      :desc "Calc" "c" #'calc)

(map! :leader :prefix ("s" . "search")
      :desc "Google" "g" #'engine/search-google)

(map! :leader :prefix ("c" . "code")
      :desc "Next error" "]" #'flycheck-next-error
      :desc "Previous error" "[" #'flycheck-previous-error)

(map! :leader :prefix ("o" . "open")
      :desc "Eww" "w" #'eww)

(map! :map evil-normal-state-map
      "g]" #'flycheck-next-error
      "g[" #'flycheck-previous-error
      "M-k" #'drag-stuff-up
      "M-j" #'drag-stuff-down
      "C-c a" #'org-agenda
      "C-c c" #'org-capture
      "C-c o" #'org-pomodoro)

(setq
 doom-themes-treemacs-theme "Default"
 doom-themes-treemacs-enable-variable-pitch t
 doom-font (font-spec :family "JetBrains Mono" :size 13)
 +doom-dashboard-banner-dir (concat doom-private-dir "banners/")
 doom-modeline-height 22
 doom-modeline-major-mode-color-icon t
 all-the-icons-scale-factor 1
 )

(use-package! org
  :config
  (setq org-directory (expand-file-name "~/dev/org"))

  (setq org-inbox (expand-file-name "inbox.org" org-directory)
        org-projects (expand-file-name "projects.org" org-directory)
        org-someday (expand-file-name "someday.org" org-directory)
        org-tickler (expand-file-name "tickler.org" org-directory)
        org-notes (expand-file-name "notes.org" org-directory))

  (setq org-agenda-files (list org-inbox org-projects org-tickler)
        org-default-notes-file org-notes
        org-refile-targets '(
                             (org-inbox :maxlevel . 1)
                             (org-projects :maxlevel . 2)
                             (org-someday :level . 1)
                             (org-tickler :level . 1)
                             )
        org-capture-templates '(("t" "Todo" entry (file+headline org-inbox "Tasks")
                                 "* TODO %i%?")
                                ("c" "Code Todo" entry (file+headline org-inbox "Code Tasks")
                                 "* TODO %i%?\n Entered on: %U - %a\n")
                                ("n" "Note" entry (file+olp+datetree org-default-notes-file)
                                "* %?\n\n")
                                ("T" "Tickler" entry (file+headline org-tickler "Tickler")
                                 "* %?\n\n %U"))))

(after! org
           (setf org-blank-before-new-entry '((heading . nil) (plain-list-item . nil)))

           (setq org-todo-keywords '((sequence "TODO(t)" "WAITING(w)" "|" "DONE(d)")
                                     (sequence "[ ](T)" "|" "[X](D)")
                                     (sequence "POMODORO(o)" "|" "POMODOROFF(f)")))

           (setq org-todo-keyword-faces
                 '(("TODO" . "#fe8a71")
                   ("WAITING" . "#f6cd61")
                   ("POMODORO" . "#fe4a49")
                   ("POMODOROFF" . "#0e9aa7")
                   ("DONE" . "#0e9aa7")))
           )

(use-package! undo-tree
  :defer t
  :custom
  (undo-tree-visualizer-diff t)
  (undo-tree-visualizer-timestamps t))

(use-package! eww
  :config
  (setq eww-search-prefix "http://www.google.com/search?ie=utf-8&oe=utf-8&q=%s")
  )
(after! eww
  (set-popup-rule! "*eww"
    :size 100
    :side 'right)
  (add-hook 'eww-after-render-hook
            (lambda ()
              (setq-local header-line-format nil)
              (doom-mark-buffer-as-real-h)
              (persp-add-buffer (current-buffer))
              ))
  )

(use-package! rustic
  :hook (rustic-mode-hook . format-all-mode))

(use-package! engine-mode
     :config
     (setq engine/browser-function 'eww-browse-url)
     (defengine google
       "http://www.google.com/search?ie=utf-8&oe=utf-8&q=%s")
     (engine-mode t))
