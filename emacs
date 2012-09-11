;; Load paths - default
;; --------------------
(setq load-path (cons "~/.emacs.d/" load-path))
;;            - and third party
;; ----------------------------
(add-to-list 'load-path "~/.emacs.d/vendor")
(progn (cd "~/.emacs.d/vendor")
       (normal-top-level-add-subdirs-to-load-path))
(progn (cd "~"))

;; Other people's libraries
;; ------------------------
(require 'auto-complete)
(global-auto-complete-mode t)

;; My extension libraries
;; ----------------------
(load-library "php-exts")
(load-library "file-handling-exts")
(load-library "mouse-exts")
(load-library "yasnippets-exts")
(load-library "python-exts")
(load-library "ess-exts")

;; Custom set variables
;; --------------------
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(display-time-mode nil)
 '(ess-indent-level 4 t)
 '(global-font-lock-mode t nil (font-lock))
 '(inhibit-startup-screen t)
 '(lpr-command "lp")
 '(menu-bar-mode t)
 '(php-file-patterns nil)
 '(ps-paper-type (quote letter))
 '(remote-shell-program "/usr/bin/ssh")
 '(tab-width 4)
 '(truncate-partial-width-windows nil))
;; (custom-set-faces
;;   ;; custom-set-faces was added by Custom.
;;   ;; If you edit it by hand, you could mess it up, so be careful.
;;   ;; Your init file should contain only one such instance.
;;   ;; If there is more than one, they won't work right.
;;  '(default ((t (:stipple nil :background "white" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 81 :width normal :family "misc-fixed"))))
;;  '(variable-pitch ((t (:family "adobe-helv")))))

(defun word-count nil "Count words in buffer" (interactive)
  (shell-command-on-region (point-min) (point-max) "wc -w"))
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

(setq auto-mode-alist
      (append '(("\\.\\([pP][Llm]\\|al\\|pdl\\|pd\\)$" . perl-mode)
                ("\\.asm\\$" . asm-mode)) auto-mode-alist ))

(add-to-list 'auto-mode-alist '("\\.m\\'" . matlab-mode))
(require 'eol-conversion)
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "white" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 90 :width normal :foundry "unknown" :family "Liberation Mono")))))
