;; Adding custom package repos.
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; Requiring rtags
(require 'rtags)
(require 'company-rtags)

(setq rtags-completions-enabled t)
(eval-after-load 'company
  '(add-to-list
    'company-backends 'company-rtags))
(setq rtags-autostart-diagnostics t)
(rtags-enable-standard-keybindings)

;; Disabling menu-bar
(menu-bar-mode -1)

;; Disabling tool-bar
;;(tool-bar-mode -1)

;; Always show line numbers
(setq linum-format "%d ")
(global-linum-mode 1)

;; Save and restore previous sessions
(desktop-save-mode t)

;; Always using spaces to indent and setting 4 spaces for each tab
(setq-default c-default-style "stroustrup"
	      indent-tabs-mode nil
	      tab-width 4
	      )

