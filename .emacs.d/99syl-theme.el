(deftheme 99syl
  "Created 2023-09-09.")

(custom-theme-set-faces
 '99syl
 '(default ((t (:inherit nil :extend nil :stipple nil :background "#0f1619" :foreground "#f5f8fa" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 98 :width normal :foundry "outline" :family "Cascadia Code"))))
 '(cursor ((t (:background "white" :foreground "white"))))
 '(fixed-pitch ((t (:family "Monospace"))))
 '(variable-pitch ((((type w32)) (:foundry "outline" :family "Arial")) (t (:family "Sans Serif"))))
 '(escape-glyph ((t (:foreground "peru"))))
 '(homoglyph ((((background dark)) (:foreground "cyan")) (((type pc)) (:foreground "magenta")) (t (:foreground "brown"))))
 '(minibuffer-prompt ((t (:foreground "#ffffff" :weight bold))))
 '(highlight ((t (:foreground "#ffffff" :background "#f24965"))))
 '(region ((t (:extend t :foreground "#bebec4" :background "#2c3236"))))
 '(shadow ((t (:foreground "#454459"))))
 '(secondary-selection ((t (:extend t :foreground "#e6e6e8" :background "#454459"))))
 '(trailing-whitespace ((t (:background "#e55c7a"))))
 '(font-lock-builtin-face ((t (:foreground "moccasin"))))
 '(font-lock-comment-delimiter-face ((t (:foreground "dim gray" :slant normal))))
 '(font-lock-comment-face ((t (:foreground "PaleGreen4" :slant normal))))
 '(font-lock-constant-face ((t nil)))
 '(font-lock-doc-face ((t (:inherit nil))))
 '(font-lock-doc-markup-face ((t nil)))
 '(font-lock-function-name-face ((t (:foreground "#ffffff"))))
 '(font-lock-keyword-face ((t (:foreground "pale green"))))
 '(font-lock-negation-char-face ((t (:foreground "#ffffff"))))
 '(font-lock-preprocessor-face ((t (:foreground "peach puff"))))
 '(font-lock-regexp-grouping-backslash ((t (:foreground "peach puff"))))
 '(font-lock-regexp-grouping-construct ((t (:foreground "peach puff"))))
 '(font-lock-string-face ((t (:foreground "burlywood2"))))
 '(font-lock-type-face ((t (:foreground "#ffffff"))))
 '(font-lock-variable-name-face ((t (:foreground "#ffffff"))))
 '(font-lock-warning-face ((t (:foreground "#ffffff" :background "#ba4054"))))
 '(button ((t (:inherit link))))
 '(link ((t (:foreground "lemon chiffon" :underline t))))
 '(link-visited ((t (:inherit link :underline nil))))
 '(fringe ((t (:foreground "#ffffff" :background "#0f1619"))))
 '(header-line ((t (:foreground "#c79af4" :background "#0f1619"))))
 '(tooltip ((t (:foreground "#d4d4d6" :background "#191D26"))))
 '(mode-line ((t (:background "#0f1619" :foreground "#9fa3a6" :box (:line-width (1 . -1) :color "#0f1619") :weight normal))))
 '(mode-line-buffer-id ((t (:weight normal :foreground "#63E8C1"))))
 '(mode-line-emphasis ((t (:foreground "#f3c91f"))))
 '(mode-line-highlight ((t (:weight normal :box nil :foreground "#f3c91f"))))
 '(mode-line-inactive ((t (:background "#0f1619" :foreground "#656b6e" :box (:line-width (1 . -1) :color "#0f1619") :weight normal))))
 '(isearch ((t (:weight bold :underline (:color foreground-color :style line) :foreground "#ffffff" :background "#059999"))))
 '(isearch-fail ((t (:foreground "#e55c7a"))))
 '(lazy-highlight ((t (:foreground "#f3c91f" :background "#272C3A"))))
 '(match ((t (:foreground "#f3c91f"))))
 '(next-error ((t (:inherit (region)))))
 '(query-replace ((t (:inherit isearch)))))

(provide-theme '99syl)
