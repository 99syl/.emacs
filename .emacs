(add-to-list 'load-path "~/.emacs.d/lisp")

(setq backup-directory-alist `(("." . "~/.emacs.d/backup")))

;; Scrolling
;; Ensure it scrolls only one line at at time...
;; I absolutely have no idea how this works though...
;; Took this from a reddit post: https://www.reddit.com/r/emacs/comments/sel9md/weird_scrolling_behavior/
(setq scroll-conservatively 101)

;; UI and font
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(display-time-mode 1)
(set-frame-font "Cascadia Code 10" nil t)

;; Theme
(load-theme '99syl t)

;; Transparency macro
(defun toggle-transparency ()
   (interactive)
   (let ((alpha (frame-parameter nil 'alpha)))
     (set-frame-parameter
      nil 'alpha
      (if (eql (cond ((numberp alpha) alpha)
                     ((numberp (cdr alpha)) (cdr alpha))
                     ;; Also handle undocumented (<active> <inactive>) form.
                     ((numberp (cadr alpha)) (cadr alpha)))
               100)
          '(95 . 50) '(100 . 100)))))
(global-set-key (kbd "C-c t") 'toggle-transparency)

;; Swap line function.
(defun move-line (n)
  "Move the current line up or down by N lines."
  (interactive "p")
  (setq col (current-column))
  (beginning-of-line) (setq start (point))
  (end-of-line) (forward-char) (setq end (point))
  (let ((line-text (delete-and-extract-region start end)))
    (forward-line n)
    (insert line-text)
    ;; restore point to original column in moved line
    (forward-line -1)
    (forward-char col)))
(defun move-line-up (n)
  "Move the current line up by N lines."
  (interactive "p")
  (move-line (if (null n) -1 (- n))))
(defun move-line-down (n)
  "Move the current line down by N lines."
  (interactive "p")
  (move-line (if (null n) 1 n)))
(global-set-key (kbd "M-<up>") 'move-line-up)
(global-set-key (kbd "M-<down>") 'move-line-down)
(put 'upcase-region 'disabled nil)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; CODING/TEXT EDITING RELATED:
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; UTF-8 !!!!!!
(prefer-coding-system 'utf-8)
(setq coding-system-for-read 'utf-8)
(setq coding-system-for-write 'utf-8)

(require 'compile)

;; Disable auto indent...
(electric-indent-mode 0)

;; Define a function to parse Visual Studio linker errors
;; DOES NOT WORK ATM, LET'S TRY SOMETHING ELSE LATER !
;;(defun parse-vs-linker-error ()
;;  "Parse Visual Studio linker errors."
;;  (add-to-list 'compilation-error-regexp-alist '("^LINK[[:blank:]]*: fatal error[[:blank:]]*LNK[[:blank:]]*\\([0-9]+\\)[[:blank:]]*\\([^(\n]+\\)(\\([0-9]+\\)) : \\(.*\\)$" 2 3 nil 1 4)))
;; Add the function to compilation mode hook
;;(add-hook 'compilation-mode-hook #'parse-vs-linker-error)

(setq c-basic-offset 4
      tab-width 4)
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;; I don't want any default compile-command... it's boring to delete it every time I first run compile-command.
(setq compile-command "")
;; Make Emacs auto scroll to the first error in compilation buffer.
(setq compilation-scroll-output 'first-error)

(global-set-key (kbd "C-c c") 'compile)

;; Load other custom modes:

;;(autoload 'glsl-mode "glsl-mode" nil t)
;;(require 'glsl-mode)

;;(require 'lys-mode)

;; GDScript Mode
;;(add-to-list 'load-path "~/.emacs.d/emacs-gdscript-mode-1.4.0")
;;(require 'gdscript-mode)
