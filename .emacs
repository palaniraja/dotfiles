
;; To use spacemacs and emacs together
;; https://emacs.stackexchange.com/a/19940/15288


(package-initialize)

  (setq use-spacemacs nil)   ; or nil 
  
  (when use-spacemacs
  (setq user-emacs-directory "~/.spacemacs.d/"))   ; defaults to ~/.emacs.d/
  
  (load (expand-file-name "init.el" user-emacs-directory))



