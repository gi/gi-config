(require 'package)

(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

;; load user packages
(add-to-list 'load-path "~/.emacs.d/lisp/")

(add-to-list 'auto-mode-alist '("\\.bash.*\\'" . sh-mode))
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
;; (add-to-list 'interpreter-mode-alist '("node" . js2-mode))

;; (load "auto-indent-mode")

;; function to binding RET to newline-and-indent
;; (defun set-newline-and-indent ()
;;   (local-set-key (kbd "RET") 'newline-and-indent))

;; (load "bison-mode")
;; (add-to-list 'auto-mode-alist '("\\.y\\'" . bison-mode))

;; (load "flex-mode")
;; (add-to-list 'auto-mode-alist '("\\.l\\'" . flex-mode))

;; bind perl-mode to cperl-mode
(defalias 'perl-mode 'cperl-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(backup-by-copying-when-linked t)
 '(c-default-style
   (quote
    ((java-mode . "java")
     (awk-mode . "awk")
     (other . "ellemtel"))))
 '(c-offsets-alist (quote ((innamespace . 0))))
 '(c-require-final-newline
   (quote
    ((c-mode . t)
     (c++-mode . t)
     (objc-mode . t)
     (java-mode)
     (awk-mode))))
 '(c-tab-always-indent t)
 '(column-number-mode t)
 '(cperl-indent-parens-as-block t)
 '(custom-enabled-themes (quote (tango-dark)))
 '(delete-selection-mode t)
 '(global-linum-mode t)
 '(inhibit-startup-screen t)
 '(js-indent-level 2)
 '(mouse-wheel-scroll-amount (quote (1 ((shift) . 5) ((control)))))
 '(require-final-newline t)
 '(scroll-bar-mode (quote right))
 '(sh-basic-offset 2)
 '(sh-learn-basic-offset (quote usually))
 '(show-paren-mode t)
 '(show-trailing-whitespace t)
 '(standard-indent 2)
 '(text-mode-hook (quote (turn-on-auto-fill text-mode-hook-identify)))
 '(tool-bar-mode nil)
 '(track-eol t)
 '(uniquify-buffer-name-style (quote forward) nil (uniquify)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Ubuntu Mono" :foundry "DAMA" :slant normal :weight normal :height 98 :width normal)))))
