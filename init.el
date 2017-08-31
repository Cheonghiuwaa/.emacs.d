;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(require 'package)
(package-initialize)
(setq package-archives
  '(("gnu" . "http://elpa.gnu.org/packages/")
    ("marmalade" . "https://marmalade-repo.org/packages/")
    ("melpa" . "http://melpa.milkbox.net/packages/")))


(eval-after-load 'company
  '(add-to-list 'company-backends 'company-irony))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("9d91458c4ad7c74cf946bd97ad085c0f6a40c370ac0a1cbeb2e3879f15b40553" default)))
 '(ido-mode (quote buffer) nil (ido))
 '(menu-bar-mode nil)
 '(package-selected-packages (quote (elpy)))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil)
 '(uniquify-buffer-name-style (quote post-forward) nil (uniquify)))

;; open shell in current buffer
(add-to-list 'display-buffer-alist
             `(,(regexp-quote "*shell") display-buffer-same-window))

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
(electric-indent-mode 1)
;; .h file -> C++ style
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

(setq c-set-style "K&R")
(setq-default indent-tabs-mode nil)
(setq-default c-basic-offset 4)
(c-set-offset 'case-label '+)
(c-set-offset 'member-init-intro '++)
(c-set-offset 'member-init-cont '++)
(c-set-offset 'access-label '/)

;; display line number
(global-linum-mode t)
(setq linum-format "%d ")

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(region ((t (:background "brightblack")))))
