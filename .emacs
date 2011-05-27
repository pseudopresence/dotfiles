;;; Load path
(add-to-list 'load-path "~/.emacs.d/")

;;; Solarized theme

;; (require 'color-theme-solarized)
;; (color-theme-solarized-dark)

;;; Tango theme

(require 'color-theme-tangotango)
(color-theme-tangotango)

;;;
;;; Org Mode
;;;
(add-to-list 'auto-mode-alist '("\\.\\(org\\|org_archive\\|txt\\)$" . org-mode))
(require 'org-install)

(custom-set-variables
 '(org-display-custom-times t)
 '(org-time-stamp-custom-formats (cons "<%a %d %b %Y>" "<%a %d %b %Y %H:%M>"))
  )

;;
;; Standard key bindings
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;; Enable Tramp
(setq tramp-default-method "ssh")

;; Enable Vimpulse
(require 'vimpulse)