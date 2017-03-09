
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("9d91458c4ad7c74cf946bd97ad085c0f6a40c370ac0a1cbeb2e3879f15b40553" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq make-backup-files nil) ; stop creating backup~ files
(setq auto-save-default nil) ; stop creating #autosave# files

;; theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'zenburn t)

;; display date and time
(setq display-time-day-and-date t
      display-time-24hr-format t)
(display-time)

;; disable verilog auto-newline and endcomments
(setq verilog-auto-newline nil)
(setq verilog-auto-endcomments nil)

;; indentation

(setq-default indent-tabs-mode nil)
(setq-default c-basic-offset 4)
<<<<<<< HEAD
(c-set-offset 'case-label '+)
=======
>>>>>>> 3a97622c0f74c1ed8e7330d39838a90b2ff54dbe

;; display line number
(global-linum-mode t)
