(require 'package)

(setq
 package-archives
 '(
   ("org" . "https://orgmode.org/elpa/")
   ("gnu" . "https://elpa.gnu.org/packages/")
   ("melpa" . "https://melpa.org/packages/")
   ("melpa-stable" . "http://stable.melpa.org/packages/")
  )
 package-archive-priorities
 '(
   ("org" . 5)
   ("gnu" . 5)
   ("melpa" . 0)
   ("melpa-stable" . 10)
   )
 )

(package-initialize)
(package-refresh-contents t)
(setq package-enable-at-startup nil)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(provide 'package-conf)
