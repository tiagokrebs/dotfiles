;; Don't show the splash screen
(setq inhibit-startup-message t)

(setq inhibit-startup-message t  ; Don't show the splash screen
      visible-bell t)            ; Flash when the bell rings

;; Turn off some unneeded UI elements
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(tooltip-mode -1)
(set-fringe-mode 10)

;; Display line numbers in every buffer
(global-display-line-numbers-mode 1)

;; Disable line numbers for some modes
(dolist (mode '(org-mode-hook
                term-mode-hook
                eshell-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0))))

;; Display column numbers
(column-number-mode)

;; Recent files
(recentf-mode 1)

;; Save what you enter into minibuffer prompts
(setq history-length 25)
(savehist-mode 1)

;; Remember and restore the last cursor location of opened files
(save-place-mode 1)

;; Don't pop up UI dialogs when prompting
(setq use-dialog-box nil)

;; Revert buffers when the underlying file has changed
(global-auto-revert-mode 1)

;; Revert Dired and other buffers
(setq global-auto-revert-non-file-buffers t)

;; ESC quit prompt
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;;; Custom config

;; Move customization variables to a separate file and load it
(setq custom-file (locate-user-emacs-file "custom-vars.el"))
(load custom-file 'noerror 'nomessage)

;;; Theme

;; Load dark theme
(load-theme 'wombat t)
;(load-theme 'tango-dark t)
;(use-package darcula-theme
;  :ensure t
;  :config
;  ;; your preferred main font face here
;  (set-frame-font "Inconsolata-14"))

;;; Packages

;; Initialize package sources
(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)
(unless package-archive-contents
 (package-refresh-contents))

;; Initialize use-package on non-Linux platforms
(unless (package-installed-p 'use-package)
   (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

;; cmd-log-mode
(use-package command-log-mode)

;; ivy
(use-package ivy)
(ivy-mode 1)

;; doom-modeline
(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1))

;; wich key
(use-package which-key
  :init (which-key-mode)
  :diminish which-key-mode
  :config
  (setq which-key-idle-delay 0.3))

(use-package counsel
  :bind (("M-x" . counsel-M-x)
         ("C-x b" . counsel-ibuffer)
         ("C-x C-f" . counsel-find-file)
         :map minibuffer-local-map
         ("C-r" . 'counsel-minibuffer-history)))

(use-package helpful
  :custom
  (counsel-describe-function-function #'helpful-callable)
  (counsel-describe-variable-function #'helpful-variable)
  :bind
  ([remap describe-function] . counsel-describe-function)
  ([remap describe-command] . helpful-command)
  ([remap describe-variable] . counsel-describe-variable)
  ([remap describe-key] . helpful-key))


;;; Functions

;; Define personal function
;(defun efs/launch-demo-emacs ()
;  (interactive)
;  (let ((default-directory "~/Projects/Code/emacs-from-scratch")
;        (existing-emacs (get-buffer "Emacs")))
;    (if existing-emacs
;        (switch-to-buffer existing-emacs)
;      (start-process-shell-command "Emacs" nil "./.tools/run-emacs.sh"))))
;
;(local-set-key (kbd "C-c e") #'efs/launch-demo-emacs)

