
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
