;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
;; (setq user-full-name "John Doe"
;;       user-mail-address "john@doe.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-symbol-font' -- for symbols
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;

(setq doom-font (font-spec :family "FiraCode Nerd Font" :size 16 :weight 'semi-light)
      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 17))

;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-gruvbox)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!

(setq org-directory "~/Documents/org/")
(setq org-agenda-files '("~/Documents/org/"))

;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.



(use-package! rime
  :custom
  ;; (rime-inline-ascii-trigger 'shift-r)
  (default-input-method "rime")
  (rime-show-candidate 'posframe))
;; replace this dir with your own path
(setq rime-user-data-dir "~/.local/share/fcitx5/rime/")
(setq rime-posframe-style vertical)

                                        ; (setq fcitx-remote-command "fcitx5-remote")
                                        ; (use-package! rime
                                        ;   :custom
                                        ;   (default-input-method "rime")
                                        ;   (setq rime-user-data-dir "~/.config/fcitx/rime"))
                                        ; ;; (setq liberime-core-file "/usr/lib64/librime.so")  ; Fedora 默认库路径


;; (setq treemacs-file-attributes '()
;;       treemacs-width 20)

;; (setq ispell-local-dictionary "en_US") ; Hunspell

;; (setq-default mode-require-final-newline nil)



;; keep the expand available in the doom emacs
;; (let ((major-mode (if (org-in-src-block-p t)
;;                       (org-src-get-lang-mode (org-eldoc-get-src-lang))
;;                     major-mode))
;;
;; Change above to below
;;
;; (let ((major-mode (cond ((org-in-src-block-p t)
;;                          (org-src-get-lang-mode (org-eldoc-get-src-lang)))
;;                         ((org-inside-LaTeX-fragment-p)
;;                          'latex-mode)
;;                         (major-mode)))
;; https://github.com/doomemacs/doomemacs/commit/31afe2c8b0a4bc42ae8570248c49bdd1f19c0103

;; suppress the errors when expanding the snippets with subscript and superscript
(with-eval-after-load 'org
  (add-to-list 'warning-suppress-types '(org-element org-element-parser)))
;; ;; avoid company to block the cdlatex expanding
;; (add-hook 'org-mode-hook
;;           (lambda () (set company-minimum-prefix-length 4)))

(setq org-pretty-entities-include-sub-superscripts nil)
(setq prettify-symbols-unprettify-at-point t)

(when (executable-find "wl-paste")
  (setq select-enable-clipboard t)
  (setq select-enable-primary t)
  (setq save-interprogram-paste-before-kill t)
  (setq interprogram-paste-function
        (lambda () (shell-command-to-string "wl-paste --no-newline"))))
