
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(package-initialize)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(initial-buffer-choice "/Users/palaniraja/Dropbox/Personal/orgmode/myorg.org")
 '(org-agenda-files
   (quote
    ("/Users/palaniraja/Dropbox/Personal/orgmode/myorg.org" "/Users/palaniraja/Dropbox/Personal/orgmode/test.org")))
 '(package-selected-packages (quote (undo-tree ##)))
 '(recentf-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; vanila emacs with just evilmode 
(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)
(global-linum-mode 1) ; line numbers

;; Open recent file

;; (require 'recentf)
;; (recentf-mode 1)

;; default font
(set-default-font "Monaco 14")

;; emacs-leuven-theme
;; (add-to-list 'custom-theme-load-path "~/.emacs.d/emacs-leuven-theme")
;; (load-theme 'leuven t)                  ; For Emacs 24+.
;; (setq frame-background-mode 'dark)
;; (set-frame-parameter nil 'background-mode 'dark)
;; Fontify the whole line for headings (with a background color).
;; (setq org-fontify-whole-heading-line t)


;; spacemacs theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/spacemacs-theme")
(load-theme 'spacemacs-dark t)                  
;; (setq frame-background-mode 'dark)
;; (set-frame-parameter nil 'background-mode 'dark)


;; orgmode-bullets - utf-8 bullets for org mode https://github.com/sabof/org-bullets

(load-file "~/.emacs.d/org-bullets/org-bullets.el")
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

;; org mode - files
;; mobileorg settings based on http://jonathanchu.is/posts/org-mode-and-mobileorg-installation-and-config/
;; (setq org-directory "~/Dropbox/Personal/orgmode")
;; (setq org-mobile-inbox-for-pull "~/Dropbox/Personal/orgmode/inbox.org")
;; (setq org-mobile-directory "~/Dropbox/Personal/orgmode")
;; (setq org-mobile-files '("~/Dropbox/Personal/orgmode"))

;; Custom agenda view from - https://blog.aaronbieber.com/2016/09/24/an-agenda-for-life-with-org-mode.html
 (setq org-agenda-custom-commands
       '(("c" "Simple agenda view"
          ((tags "PRIORITY=\"A\""
                 ((org-agenda-skip-function '(org-agenda-skip-entry-if 'todo 'done))
                  (org-agenda-overriding-header "High-priority unfinished tasks:")))
           (agenda "")
           (alltodo "")))))

;; agenda shortcut enable
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-ca" 'org-agenda)

;; load agenda files

;; (org-agenda-files
;;   (quote
;;    ("/Users/palaniraja/Dropbox/Personal/orgmode/myorg.org" "~/Dropbox/Personal/orgmode/test.org")))
