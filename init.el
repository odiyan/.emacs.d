
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;;(require 'package)
;;(add-to-list 'package-archives (cons "melpa" "https://melpa.org/packages/") t)
;;(package-initialize)
 (require 'package)
(add-to-list 'package-archives
              '("melpa-stable" . "https://stable.melpa.org/packages/"))
 (package-initialize)
 (setq package-archives
       '(("GNU ELPA"     . "http://elpa.gnu.org/packages/")
         ("MELPA Stable" . "https://stable.melpa.org/packages/")
         ("MELPA"        . "https://melpa.org/packages/"))
       package-archive-priorities
       '(("MELPA Stable" . 1)
         ("GNU ELPA"     . 3)
         ("MELPA"        . 2)))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes nil)
 '(package-selected-packages
   (quote
    (flycheck evil-vimish-fold vimish-fold ess elpygen evil pyvenv elpy magit emmet-mode web-mode jinja2-mode markdown-mode racket-mode ## sml-mode)))
 '(show-paren-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(comint-highlight-prompt ((t (:inherit minibuffer-prompt :foreground "brightred"))))
 '(custom-comment-tag ((t (:foreground "cyan"))))
 '(custom-face-tag ((t (:foreground "brightblack"))))
 '(dired-directory ((t (:foreground "white"))))
 '(evil-ex-lazy-highlight ((t (:background "black" :foreground "brightwhite"))))
 '(font-lock-comment-delimiter-face ((t (:inherit default))))
 '(font-lock-comment-face ((t (:foreground "brightblue"))))
 '(font-lock-function-name-face ((t (:foreground "brightred"))))
 '(font-lock-keyword-face ((t (:foreground "brightmagenta"))))
 '(font-lock-string-face ((t (:foreground "brightgreen"))))
 '(highlight-indentation-face ((t (:background "brightblue" :foreground "brightblack"))))
 '(isearch-fail ((t (:background "white"))))
 '(markdown-markup-face ((t (:slant normal :weight normal))))
 '(minibuffer-prompt ((t (:foreground "brightblue"))))
 '(racket-keyword-argument-face ((t (:foreground "brightyellow"))))
 '(racket-logger-config-face ((t (:inherit font-lock-comment-face :foreground "brightmagenta"))))
 '(region ((t (:background "lightgoldenrod2" :foreground "brightred" :underline nil)))))
(desktop-save-mode 1)
(require 'evil)
(evil-mode 1)
(define-key evil-normal-state-map (kbd "C-u") 'evil-scroll-up)
(define-key evil-visual-state-map (kbd "C-u") 'evil-scroll-up)
(package-initialize)
(elpy-enable)
(require 'ess-site)
(global-set-key (kbd "C-x g") 'magit-status)
;;(with-eval-after-load 'python
;;  (defun python-shell-completion-native-try ()
;;    "Return non-nil if can trigger native completion."
;;    (let ((python-shell-completion-native-enable t)
;;          (python-shell-completion-native-output-timeout
;;           python-shell-completion-native-try-output-timeout))
;;      (python-shell-completion-native-get-completions
;;       (get-buffer-process (current-buffer))
;;       nil "_"))))

(setq python-shell-completion-native-enable nil)
;;(require 'vimish-fold)
;;(vimish-fold-global-mode 1)
(evil-vimish-fold-mode 1)
