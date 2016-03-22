(require 'package)

(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

;; load user packages
(add-to-list 'load-path "~/.emacs.d/")

(add-to-list 'auto-mode-alist '("\\.bash.*\\'" . sh-mode))

;; (load "auto-indent-mode")

;; (load "bison-mode")
;; (add-to-list 'auto-mode-alist '("\\.y\\'" . bison-mode))

;; (load "flex-mode")
;; (add-to-list 'auto-mode-alist '("\\.l\\'" . flex-mode))

;; bind perl-mode to cperl-mode
(defalias 'perl-mode 'cperl-mode)

;; function to binding RET to newline-and-indent
(defun set-newline-and-indent ()
  (local-set-key (kbd "RET") 'newline-and-indent))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(backup-by-copying-when-linked t)
 '(c-default-style (quote ((java-mode . "java") (awk-mode . "awk") (other . "ellemtel"))))
 '(c-mode-common-hook (quote (set-newline-and-indent)))
 '(c-offsets-alist (quote ((innamespace . 0))))
 '(c-require-final-newline (quote ((c-mode . t) (c++-mode . t) (objc-mode . t) (java-mode) (awk-mode))))
 '(c-tab-always-indent t)
 '(column-number-mode t)
 '(cperl-indent-parens-as-block t)
 '(cperl-mode-hook (quote (set-newline-and-indent)))
 '(delete-selection-mode t)
 '(emacs-lisp-mode-hook (quote (set-newline-and-indent)))
 '(inhibit-startup-screen t)
 '(js-indent-level 2)
 '(lisp-mode-hook (quote (set-newline-and-indent)))
 '(mouse-wheel-scroll-amount (quote (1 ((shift) . 5) ((control)))))
 '(require-final-newline t)
 '(scroll-bar-mode (quote right))
 '(sh-basic-offset 2)
 '(sh-learn-basic-offset (quote usually))
 '(show-paren-mode t)
 '(standard-indent 2)
 '(text-mode-hook (quote (turn-on-auto-fill text-mode-hook-identify)))
 '(track-eol t)
 '(uniquify-buffer-name-style (quote forward) nil (uniquify)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Ubuntu Mono" :foundry "unknown" :slant normal :weight normal :height 98 :width normal)))))
