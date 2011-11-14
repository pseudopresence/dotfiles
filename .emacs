;; Tell emacs where is your personal elisp lib dir
;; this is the dir you place all your extra packages
(add-to-list 'load-path "~/.emacs.d/")

;; Make backups in ~/.emacs_backup instead of file's directory
(require 'backup-dir)

;; localize it for safety.
(make-variable-buffer-local 'backup-inhibited)

(setq bkup-backup-directory-info
      '((t "~/.emacs_backup" ok-create full-path prepend-name)))

(setq delete-old-versions t
      kept-old-versions 1
      kept-new-versions 3
      version-control t)

; Tab character in files interpreted as 4 spaces wide
(setq-default tab-width 4)
; Pressing the tab key indents to next 2-space tabstop
(setq c-basic-offset 2)
; Files are saved with only space characters
(setq-default indent-tabs-mode nil)

;; Solarized theme (dark)
;(require 'color-theme-solarized)
;(color-theme-solarized-dark)

;; Tango theme
;;(require 'color-theme-tango)
;;(color-theme-tango)

;; Tangotango theme
(require 'color-theme-tangotango)
(color-theme-tangotango)

;; Enable org-mode for .org, .org_archive and .txt files
(add-to-list 'auto-mode-alist '("\\.\\(org\\|org_archive\\|txt\\)$" . org-mode))
;; Require org-mode
(require 'org-install)
;;; Mobileorg setup
;; Set to the location of your Org files on your local system
;; (setq org-directory "~/org")
;; Set to the name of the file where new notes will be stored
;; (setq org-mobile-inbox-for-pull "~/org/flagged.org")
;; Set to <your Dropbox root directory>/MobileOrg.
;; (setq org-mobile-directory "~/Dropbox/MobileOrg")
;; Add all the notes directories to the org agenda
(setq org-agenda-files (list "/media/Data/Dropbox/Notes/"
                             "/media/Data/Dropbox/Notes/IAML/"
                             "/media/Data/Dropbox/Notes/PMR"
                             "/media/Data/Dropbox/Notes/IVR"
                             "/media/Data/Dropbox/Notes/IAR"
                             "/media/Data/Dropbox/Notes/IT"))


;; Define a keyboard shortcut to bring up the agenda
(define-key global-map "\C-ca" 'org-agenda)

;; Set to expand subtrees on file open
(setq org-startup-folded "showall")
;; Enable visual line mode for org and text modes
(add-hook 'text-mode-hook 'turn-on-visual-line-mode)
(add-hook 'org-mode-hook 'turn-on-visual-line-mode)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
  
  ;; Increase the scale of the LaTeX snippet preview
  ;'(org-format-latex-options (quote (:scale 2.0)))
 
 )
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#300a24" :foreground "#eeeeec" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 98 :width normal :foundry "unknown" :family "DejaVu Sans Mono")))))

; Require Go mode
(require 'go-mode-load)

; Require vimpulse
(require 'vimpulse)
