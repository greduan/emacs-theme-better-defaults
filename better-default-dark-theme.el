;;; better-default-dark-theme.el --- Better, dark version of default theme

;; Copyright (c) 2014, Greduan <eduan@websharks-inc.com>

;; Author: Greduan <eduan@websharks-inc.com>
;; URL: https://github.com/Greduan/emacs-theme-better-defaults
;; Version: 0.1.0

;; Permission to use, copy, modify, and/or distribute this software for any
;; purpose with or without fee is hereby granted, provided that the above
;; copyright notice and this permission notice appear in all copies.

;; THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH
;; REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY
;; AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT,
;; INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM
;; LOSS  OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE
;; OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
;; PERFORMANCE OF THIS SOFTWARE.

;;; Commentary:

;; I like the default Emacs themes (the white and black background ones), but
;; they don't support all of the faces and stuff, so I decided to make themes
;; based on the default colors.

;;; Code:

(unless (>= 24 emacs-major-version)
  (error "requires Emacs 24 or later."))

(deftheme better-default-dark "Better, dark version of default theme")

(let ((comment-fg "chocolate1")
      (default-bg "black")
      (default-fg "white")
      (keyword-fg "Cyan1")
      (error-warning-fg "Pink") ;; :weight bold
      (string-fg "LightSalmon")
      (type-fg "PaleGreen")
      (builtin-fg "LightSteelBlue"))

  (custom-theme-set-faces
   'better-default-dark

   `(default ((t (:background ,default-bg :foreground ,default-fg))))))

;;;###autoload
(and load-file-name
    (boundp 'custom-theme-load-path)
    (add-to-list 'custom-theme-load-path
                 (file-name-as-directory
                  (file-name-directory load-file-name))))

(provide-theme 'better-default-dark)

;;; better-default-dark-theme.el ends here
