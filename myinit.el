;; [[file:~/.emacs.d/myinit.org::*Repositorios][Repositorios:1]]
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)
;; Repositorios:1 ends here

;; [[file:~/.emacs.d/myinit.org::*Variables%20de%20inicio][Variables de inicio:1]]
(setq inhibit-startup-message t) ; Quitar el mensaje del principio
(tool-bar-mode -1) ; Quitar el menu de copiar pegar 
(menu-bar-mode -1) ; Quitar el menu de archivo 
(scroll-bar-mode -1) ; Quitar la barra de scroll
(if (eq system-type 'windows-nt)
(setq default-frame-alist '((font . "Consolas-12:antialias=natural")))
(setq default-frame-alist '((font . "Dejavu Sans Mono-12")))
)
(setq make-backup-files nil) ; stop creating backup~ files
(setq auto-save-default nil) ; stop creating #autosave# files
(show-paren-mode 1) ;; remarca parentesis llaves y corchetes
(setq show-paren-delay 0) ;; evitar tiempo de espera al remarcar
(setq-default indent-tabs-mode t) ;; tabulaciones no espacios
(setq-default tab-width 4) ;; tabulaciones de cuatro caracteres
(setq indent-line-function 'insert-tab)
(global-linum-mode 1) ;; ver numero de linea
;; Variables de inicio:1 ends here

;; [[file:~/.emacs.d/myinit.org::*Try][Try:1]]
(use-package try
:ensure t)
;; Try:1 ends here

;; [[file:~/.emacs.d/myinit.org::*Which%20key][Which key:1]]
(use-package which-key
:ensure t 
:config
(which-key-mode))
;; Which key:1 ends here

;; [[file:~/.emacs.d/myinit.org::*Org%20mode][Org mode:1]]
(use-package org-bullets
:ensure t
:config
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))
;; Org mode:1 ends here

;; [[file:~/.emacs.d/myinit.org::*Autopair][Autopair:1]]
(use-package autopair
:ensure t
:config
(autopair-global-mode))
;; Autopair:1 ends here

;; [[file:~/.emacs.d/myinit.org::*Ace%20windows%20cambiar%20ventanas%20facil][Ace windows cambiar ventanas facil:1]]
(use-package ace-window
:ensure t
:init
(progn
  (global-set-key [remap other-window] 'ace-window)
  (custom-set-faces
   '(aw-leading-char-face
     ((t (:inherit ace-jump-face-foreground :height 3.0))))) 
  ))
;; Ace windows cambiar ventanas facil:1 ends here

;; [[file:~/.emacs.d/myinit.org::*Swiper%20/%20Ivy%20/%20Counsel][Swiper / Ivy / Counsel:1]]
(use-package counsel
  :ensure t
  )

(use-package ivy
  :ensure t
  :diminish (ivy-mode)
  :bind (("C-x b" . ivy-switch-buffer))
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t)
  (setq ivy-display-style 'fancy))


(use-package swiper
  :ensure try
  :bind (("C-s" . swiper)
	 ("C-r" . swiper)
	 ("C-c C-r" . ivy-resume)
	 ("M-x" . counsel-M-x)
	 ("C-x C-f" . counsel-find-file))
  :config
  (progn
    (ivy-mode 1)
    (setq ivy-use-virtual-buffers t)
    (setq ivy-display-style 'fancy)
    (define-key read-expression-map (kbd "C-r") 'counsel-expression-history)
    ))
;; Swiper / Ivy / Counsel:1 ends here

;; [[file:~/.emacs.d/myinit.org::*Avy%20-%20acceso%20rapido%20por%20letras][Avy - acceso rapido por letras:1]]
(use-package avy
:ensure t
:bind ("M-s" . avy-goto-word-1)) ;; changed from char as per jcs
;; Avy - acceso rapido por letras:1 ends here

;; [[file:~/.emacs.d/myinit.org::*Autocomplete][Autocomplete:1]]
(use-package auto-complete
:ensure t
:init
(progn
  (ac-config-default)
  (global-auto-complete-mode t)
  ))
;; Autocomplete:1 ends here

;; [[file:~/.emacs.d/myinit.org::*Themes][Themes:1]]
(use-package gruvbox-theme
:ensure t
:config (load-theme 'gruvbox t))
;; Themes:1 ends here