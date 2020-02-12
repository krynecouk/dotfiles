(when (version< emacs-version "27.0") 
  (package-initialize))
(org-babel-load-file (expand-file-name "settings.org" user-emacs-directory))
