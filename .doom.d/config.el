(setq
 user-full-name "Darius Kryszczuk"
 user-mail-address "darius.kryszczuk@gmail.com"
 display-line-numbers-type 'relative
 display-line-numbers-current-absolute nil
 doom-scratch-initial-major-mode 'emacs-lisp-mode
 )
(add-to-list 'default-frame-alist '(fullscreen . maximized))

(map! :leader :prefix ("t" . "toggle")
      :desc "Treemacs" "t" #'+treemacs/toggle
      :desc "Undo Tree" "u" #'undo-tree-mode
      :desc "Calc" "c" #'calc)

(map! :leader :prefix ("s" . "search")
      :desc "Google" "g" #'eww)

(map! :leader :prefix ("c" . "code")
      :desc "Next error" "]" #'flycheck-next-error
      :desc "Previous error" "[" #'flycheck-previous-error)

(map! :leader :prefix ("o" . "open")
      :desc "Eww" "w" #'eww)

(map!
 "M-k" #'drag-stuff-up
 "M-j" #'drag-stuff-down
 "C-c a" #'org-agenda
 "C-c c" #'org-capture
 "C-c o" #'org-pomodoro
 (:prefix "g"
   :n "]" #'flycheck-next-error
   :n "[" #'flycheck-previous-error
   )
  )

(map!
 :map eww-mode-map
 (:prefix "g"
   :n "r" #'eww-reload
   :n "R" #'+eww/rename
   :n "+" #'+eww/raise
   )
 )

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
  (setq browse-url-browser-function 'eww-browse-url)

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

           (setq org-todo-keywords '((sequence "TODO(t)" "WAITING(w)" "|" "CANCELLED(c)" "DONE(d)")
                                     (sequence "[ ](T)" "|" "[X](D)")
                                     (sequence "POMODORO(o)" "|" "POMODOROFF(f)")))

           (setq org-todo-keyword-faces
                 '(("TODO" . "#f3722c")
                   ("WAITING" . "#f9c74f")
                   ("CANCELLED" . "#577590")
                   ("POMODORO" . "#f94144")
                   ("POMODOROFF" . "#43aa8b")
                   ("DONE" . "#43aa8b")))
           )

(use-package! undo-tree
  :defer t
  :custom
  (undo-tree-visualizer-diff t)
  (undo-tree-visualizer-timestamps t))

(use-package! eww
  :config
  (setq eww-search-prefix "http://www.google.com/search?ie=utf-8&oe=utf-8&q=%s"))

(after! eww
  (set-popup-rule! "*eww"
    :size 100
    :side 'right
    :quit 'is-popup)
  (add-hook 'eww-after-render-hook
            (lambda ()
              (setq-local header-line-format nil)
              (doom-mark-buffer-as-real-h)
              (persp-add-buffer (current-buffer))
              ))
  )

(use-package! rustic
  :hook (rustic-mode-hook . format-all-mode))

(defun is-popup (window)
  "Returns non-nil if WINDOW is a popup."
  (if (+popup-window-p window) t nil)
  )

(defun is-popup-interactive (&optional window)
  "Returns non-nil if WINDOW (or selected window if nil) is a popup."
  (interactive)
  (let ((window (or window (selected-window))))
    (message "Is popup -> %s" (if (is-popup window) "True" "False"))
    )
  )

(defun +popup/raise-to-split-window ()
  "Raise popup to vertically splitted window."
  (interactive)
  (unless (is-popup (selected-window))
    (user-error "Cannot raise a non-popup window")
    )
  (other-window 1)
  (when (< (length (doom-visible-windows)) 2)
    (+evil-window-vsplit-a)
    )
  (select-window (car (last (doom-visible-windows))))
  (+popup/other)
  (+popup/raise (selected-window))
  )

(defun +eww/rename ()
  "Rename eww buffer to be the same as the current url."
  (interactive)
  (rename-buffer (eww-current-url))
  )

(defun +eww/raise ()
  "Raise eww buffer and rename it to the current url."
  (interactive)
  (+popup/raise-to-split-window)
  (+eww/rename)
  )
